# Bitácora - Práctica 1 Bases de Datos 2

| No. | Fecha y hora        | Actividad                                        | Comando(s) utilizado(s) | Resultado                                     | Evidencia                           |
|-----|---------------------| ------------------------------------------------ | ----------------------- |-----------------------------------------------|-------------------------------------|
| 1   | 18/08/2026 12:03 PM | Creación de la base de datos y backup base       | `sudo mysql < sql/00_create_database.sql`<br>`sudo mysql -e "USE hotel_bd2; SHOW TABLES;"` | Base de datos`hotel_bd2` creada correctamente.| [Captura 1](../capturas/cap1.png)<br>[Captura 2](../capturas/cap2.png)|
| 2.1 | 18/08/2026 12:35 PM | Carga del día 1 | `sudo mysql < sql/cargas/01_dia1.sql` | Se cargaron correctamente 50 clientes, 50 habitaciones y 50 empleados. | [Captura 3](../capturas/cap3.png) |
| 2.2 | 18/08/2026 12:38 PM | Verificación de datos del día 1 | `SELECT * FROM CLIENTE;`<br>`SELECT * FROM HABITACION;`<br>`SELECT * FROM EMPLEADO;`<br>`SELECT COUNT(*)` sobre CLIENTE, HABITACION y EMPLEADO | Se verificaron correctamente los datos cargados y los conteos de 50 registros en cada tabla. | [Captura 3](../capturas/cap3.png)<br>[Captura 4](../capturas/cap4.png)<br>[Captura 5](../capturas/cap5.png)<br>[Captura 6](../capturas/cap6.png) |
| 2.3 | 18/08/2026 12:45 PM | Creación de backups del día 1 | `mysqldump --databases hotel_bd2 > backups/full/full_dia1.sql`<br>`mysqlbinlog --start-position=157 /var/lib/mysql/binlog.000292 > backups/incremental/incremental_dia1.sql` | Se generó `full_dia1.sql` de 13 KB en 0.03 s e `incremental_dia1.sql` de 14 KB en 0.02 s. | [Captura 7](../capturas/cap7.png) |
| 3.1 | 18/08/2026 12:50 PM | Carga del día 2 | `sudo mysql < sql/cargas/02_dia2.sql` | Se cargaron correctamente 50 reservas. | [Captura 8](../capturas/cap8.png) |
| 3.2 | 18/08/2026 12:52 PM | Verificación de datos del día 2 | `SELECT * FROM RESERVA;`<br>`SELECT COUNT(*) ...` | Se verificaron 50 reservas y se conservaron los datos acumulados del día 1. | [Captura 8](../capturas/cap8.png)<br>[Captura 9](../capturas/cap9.png) |
| 3.3 | 18/08/2026 12:55 PM | Creación de backups del día 2 | `mysqldump ... full_dia2.sql`<br>`mysqlbinlog ... incremental_dia2.sql` | `full_dia2`: 15 KB, 0.03 s.<br>`incremental_dia2`: 4.1 KB, 0.02 s. | [Captura 10](../capturas/cap10.png) |
| 4.1 | 18/08/2026 13:00 PM | Carga del día 3 | `sudo mysql < sql/cargas/03_dia3.sql` | Se cargaron correctamente 50 registros en `LOG_HABITACION`. | [Captura 11](../capturas/cap11.png) |
| 4.2 | 18/08/2026 13:01 PM | Verificación de datos del día 3 | `SELECT COUNT(*) FROM LOG_HABITACION;`<br>`SELECT * FROM LOG_HABITACION;` | Se verificaron correctamente los 50 registros de cambios de estado de habitación. | [Captura 11](../capturas/cap11.png)<br>[Captura 12](../capturas/cap12.png) |
| 4.3 | 18/08/2026 13:03 PM | Creación de backups del día 3 | `mysqldump --databases hotel_bd2 > backups/full/full_dia3.sql`<br>`mysqlbinlog --start-position=157 /var/lib/mysql/binlog.000295 > backups/incremental/incremental_dia3.sql` | Se generó `full_dia3.sql` de 17 KB en 0.03 s e `incremental_dia3.sql` de 4.4 KB en 0.00 s. | [Captura 13](../capturas/cap13.png) |
| 5.1 | <hora real> | Carga del día 4 | `sudo mysql < sql/cargas/04_dia4.sql` | Se cargaron correctamente 50 registros de pago. | [Captura 14](../capturas/cap14.png) |
| 5.2 | <hora real> | Verificación de datos del día 4 | `SELECT COUNT(*)` sobre las tablas<br>`SELECT * FROM PAGO;` | Se verificaron correctamente los 50 pagos y se conservaron los datos acumulados de las etapas anteriores. | [Captura 14](../capturas/cap14.png)<br>[Captura 15](../capturas/cap15.png) |
| 5.3 | 18/08/2026 13:11 PM | Creación de backups del día 4 | `mysqldump --databases hotel_bd2 > backups/full/full_dia4.sql`<br>`mysqlbinlog --start-position=157 /var/lib/mysql/binlog.000296 > backups/incremental/incremental_dia4.sql` | Se generó `full_dia4.sql` de 20 KB en 0.03 s e `incremental_dia4.sql` de 4.9 KB en 0.02 s. | [Captura 16](../capturas/cap16.png) |
| 6.1 | 18/08/2026 <hora> | Carga del día 5 | `sudo mysql < sql/cargas/05_dia5.sql` | Se cargaron correctamente 50 nuevos registros en `LOG_HABITACION`, alcanzando 100 registros acumulados. | [Captura 17](../capturas/cap17.png) |
| 6.2 | 18/08/2026 <hora> | Verificación de datos del día 5 | `SELECT COUNT(*)` sobre las tablas<br>`SELECT * FROM LOG_HABITACION;` | Se verificaron los datos finales de la base de datos y un total de 100 registros en `LOG_HABITACION`. | [Captura 17](../capturas/cap17.png)<br>[Captura 18](../capturas/cap18.png) |
| 6.3 | 18/08/2026 13:16 PM | Creación de backups del día 5 | `mysqldump --databases hotel_bd2 > backups/full/full_dia5.sql`<br>`mysqlbinlog --start-position=157 /var/lib/mysql/binlog.000297 > backups/incremental/incremental_dia5.sql` | Se generó `full_dia5.sql` de 22 KB en 0.03 s e `incremental_dia5.sql` de 4.9 KB en 0.01 s. | [Captura 19](../capturas/cap19.png) |
| 8   | Pendiente | Restauración del backup completo del día 2 | Pendiente | Pendiente | Pendiente |
| 9   | Pendiente | Restauración del backup completo del día 3 | Pendiente | Pendiente | Pendiente |
| 10  | Pendiente | Restauración del backup completo del día 4 | Pendiente | Pendiente | Pendiente |
| 11  | Pendiente | Restauración del backup completo del día 5 | Pendiente | Pendiente | Pendiente |
| 12  | Pendiente | Restauración del incremental del día 1 | Pendiente | Pendiente | Pendiente |
| 13  | Pendiente | Restauración del incremental del día 2 | Pendiente | Pendiente | Pendiente |
| 14  | Pendiente | Restauración del incremental del día 3 | Pendiente | Pendiente | Pendiente |
| 15  | Pendiente | Restauración del incremental del día 4 | Pendiente | Pendiente | Pendiente |
| 16  | Pendiente | Restauración del incremental del día 5 | Pendiente | Pendiente | Pendiente |
| 17  | Pendiente | Comparación y análisis de resultados | Pendiente | Pendiente | Pendiente |

## Evidencias
Las capturas de pantalla utilizadas como evidencia se encuentran almacenadas en el directorio `docs/capturas/`.
