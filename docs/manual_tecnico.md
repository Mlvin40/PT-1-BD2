# Manual técnico

## 1. Entorno utilizado

La práctica se realizó en **Ubuntu Linux** utilizando **MySQL 8.0.46** desde la terminal. Para trabajar con los respaldos se utilizaron principalmente las herramientas `mysql`, `mysqldump` y `mysqlbinlog`.

La base de datos utilizada durante toda la práctica fue:

`hotel_bd2`

## 2. Estructura de la base de datos

La base de datos está formada por seis tablas:

| Tabla | Función |
|---|---|
| `CLIENTE` | Guarda la información de los clientes. |
| `HABITACION` | Almacena las habitaciones, su tipo y precio. |
| `EMPLEADO` | Guarda los datos de los empleados. |
| `RESERVA` | Registra las reservas realizadas por los clientes. |
| `PAGO` | Registra los pagos asociados a una reserva. |
| `LOG_HABITACION` | Guarda el historial de cambios de estado de las habitaciones. |

Las relaciones principales son:

- `RESERVA` se relaciona con `CLIENTE` y `HABITACION`.
- `PAGO` se relaciona con `RESERVA` y `EMPLEADO`.
- `LOG_HABITACION` se relaciona con `HABITACION`.

Estas relaciones se definieron mediante llaves foráneas para mantener la coherencia de los datos.

## 3. Generación, carga y validación de datos

Los datos se organizaron en cinco scripts SQL dentro de `sql/cargas/`, siguiendo el orden solicitado en la práctica:

- `01_dia1.sql`: 50 clientes, 50 habitaciones y 50 empleados.
- `02_dia2.sql`: 50 reservas.
- `03_dia3.sql`: 50 registros de `LOG_HABITACION`.
- `04_dia4.sql`: 50 pagos.
- `05_dia5.sql`: 50 registros adicionales de `LOG_HABITACION`.

Los scripts fueron revisados para mantener IDs válidos, relaciones existentes y datos coherentes entre las tablas.

Ejemplo de carga:

```bash
sudo mysql < sql/cargas/01_dia1.sql
```

Después de cada carga se realizaron consultas para comprobar los registros:

```sql
SELECT * FROM CLIENTE;
SELECT COUNT(*) FROM CLIENTE;
```

El mismo procedimiento se aplicó sobre las tablas correspondientes de cada etapa. Al finalizar el día 5, la base contenía 50 registros en `CLIENTE`, `HABITACION`, `EMPLEADO`, `RESERVA` y `PAGO`, mientras que `LOG_HABITACION` tenía 100 registros acumulados.

## 4. Backup base

Antes de cargar información se creó un backup que contiene únicamente la estructura de la base de datos. Este respaldo sirve como punto inicial para la restauración de los incrementales.

```bash
sudo mysqldump --no-data --databases hotel_bd2 > backups/base/backup_base.sql
```

La opción `--no-data` evita incluir registros y conserva solamente la estructura.

## 5. Backups completos

Después de cada etapa se creó un respaldo completo con `mysqldump`. Cada archivo contiene el estado total de la base de datos hasta ese día.

Ejemplo:

```bash
mysqldump --databases hotel_bd2 > backups/full/full_dia1.sql
```

Se generaron los archivos:

`full_dia1.sql`, `full_dia2.sql`, `full_dia3.sql`, `full_dia4.sql` y `full_dia5.sql`.

Una ventaja de estos respaldos es que cada uno puede restaurarse de forma independiente.

## 6. Backups incrementales

Para los incrementales se utilizó el **Binary Log de MySQL**, con formato `ROW`. Antes y después de cada etapa se separaron los cambios mediante los archivos binlog y luego se exportaron con `mysqlbinlog`.

Ejemplo del día 1:

```bash
sudo mysqlbinlog --start-position=157 /var/lib/mysql/binlog.000292 > backups/incremental/incremental_dia1.sql
```

Durante la práctica se utilizaron los binlogs correspondientes a cada etapa para generar:

`incremental_dia1.sql`, `incremental_dia2.sql`, `incremental_dia3.sql`, `incremental_dia4.sql` e `incremental_dia5.sql`.

A diferencia de los backups completos, estos archivos dependen del backup base y de los incrementales anteriores.

## 7. Restauración de un backup completo

Para probar cada backup completo se eliminó primero la base existente y luego se importó el archivo que se quería verificar.

```bash
mysql -u root -p -e "DROP DATABASE IF EXISTS hotel_bd2;"
mysql -u root -p < backups/full/full_dia1.sql
```

Después de cada restauración se ejecutaron `SELECT *` y `SELECT COUNT(*)` sobre las seis tablas para comprobar que el estado recuperado correspondiera al día del respaldo.

## 8. Restauración de backups incrementales

La restauración incremental comenzó eliminando la base existente y recuperando primero el backup base:

```bash
mysql -u root -p -e "DROP DATABASE IF EXISTS hotel_bd2;"
mysql -u root -p < backups/base/backup_base.sql
```

Luego se aplicaron los incrementales en orden:

```bash
mysql -u root -p < backups/incremental/incremental_dia1.sql
mysql -u root -p < backups/incremental/incremental_dia2.sql
mysql -u root -p < backups/incremental/incremental_dia3.sql
mysql -u root -p < backups/incremental/incremental_dia4.sql
mysql -u root -p < backups/incremental/incremental_dia5.sql
```

La base **no se elimina entre un incremental y otro**, ya que cada archivo agrega los cambios de la siguiente etapa. Después de aplicar cada incremental se verificaron nuevamente los datos con consultas `SELECT` y `COUNT`.

El estado final obtenido mediante los incrementales coincidió con el recuperado desde `full_dia5.sql`.

## 9. Comandos principales

Los comandos más utilizados durante la práctica fueron:

```bash
# Crear estructura de la base
sudo mysql < sql/00_create_database.sql

# Backup base
sudo mysqldump --no-data --databases hotel_bd2 > backups/base/backup_base.sql

# Backup completo
mysqldump --databases hotel_bd2 > backups/full/full_dia1.sql

# Backup incremental
sudo mysqlbinlog --start-position=157 /var/lib/mysql/binlog.000292 > backups/incremental/incremental_dia1.sql

# Restaurar un backup
mysql -u root -p < backups/full/full_dia1.sql
```

Para verificar cantidades:

```sql
USE hotel_bd2;
SELECT COUNT(*) FROM CLIENTE;
SELECT COUNT(*) FROM HABITACION;
SELECT COUNT(*) FROM EMPLEADO;
SELECT COUNT(*) FROM RESERVA;
SELECT COUNT(*) FROM PAGO;
SELECT COUNT(*) FROM LOG_HABITACION;
```

## 10. Cantidad de registros

No fue necesario justificar cantidades inferiores a 50 registros, ya que todas las cargas solicitadas cumplieron con el mínimo establecido. En `LOG_HABITACION` se realizaron dos cargas de 50 registros, obteniendo un total final de 100.
