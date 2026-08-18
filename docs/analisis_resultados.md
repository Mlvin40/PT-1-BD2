# Análisis de resultados

Durante la práctica se realizaron cinco backups completos y cinco backups incrementales de la base de datos `hotel_bd2`. Los resultados permitieron observar diferencias principalmente en el tamaño de los archivos, el tiempo de restauración y la complejidad necesaria para recuperar la información.

## Tiempo de creación

Los backups completos tuvieron un tiempo de creación bastante estable. Los cinco respaldos se generaron aproximadamente en **0.03 segundos** cada uno.

En los backups incrementales los tiempos fueron menores o similares: entre **0.00 y 0.02 segundos**. Esto se debe a que cada incremental únicamente contiene los cambios realizados durante una etapa y no toda la información acumulada.

Debido al pequeño volumen de información utilizado en esta práctica, la diferencia de tiempo de creación fue muy reducida.

## Tamaño de los backups

Los backups completos aumentaron de tamaño conforme se agregó información a la base de datos:

* Día 1: 13 KB
* Día 2: 15 KB
* Día 3: 17 KB
* Día 4: 20 KB
* Día 5: 22 KB

Esto ocurre porque cada backup completo contiene toda la estructura y todos los registros existentes hasta ese momento.

Los incrementales presentaron los siguientes tamaños:

* Día 1: 14 KB
* Día 2: 4.1 KB
* Día 3: 4.4 KB
* Día 4: 4.9 KB
* Día 5: 4.4 KB

A partir del segundo día se observa claramente que los incrementales utilizan menos espacio, debido a que almacenan únicamente los cambios de cada etapa.

El incremental del día 1 fue incluso ligeramente mayor que el backup completo. Esto puede ocurrir porque el Binary Log almacena información adicional relacionada con las operaciones realizadas y, con un volumen de datos tan pequeño, ese espacio adicional resulta significativo.

## Tiempo de restauración

Los tiempos obtenidos para los backups completos fueron:

* `full_dia1`: 1.96 s
* `full_dia2`: 2.04 s
* `full_dia3`: 2.06 s
* `full_dia4`: 1.87 s
* `full_dia5`: 1.69 s

Los incrementales tuvieron los siguientes tiempos:

* `incremental_dia1`: 1.47 s
* `incremental_dia2`: 1.47 s
* `incremental_dia3`: 1.35 s
* `incremental_dia4`: 1.59 s
* `incremental_dia5`: 1.26 s

Individualmente los incrementales fueron ligeramente más rápidos. Sin embargo, para recuperar el estado final de la base de datos fue necesario restaurar primero el backup base y después aplicar los cinco incrementales en orden.

Por lo tanto, aunque cada incremental sea rápido, recuperar toda la base mediante este método requiere más pasos que restaurar directamente `full_dia5`.

## Complejidad del proceso de restauración

Los backups completos fueron los más sencillos de restaurar. Cada archivo era independiente, por lo que únicamente se eliminaba la base de datos y se restauraba el backup seleccionado.

Los incrementales requirieron un procedimiento más cuidadoso. Primero fue necesario restaurar el backup base y posteriormente aplicar:

`incremental_dia1 → incremental_dia2 → incremental_dia3 → incremental_dia4 → incremental_dia5`

Además, el orden era obligatorio. Si faltara uno de los archivos o se aplicaran en un orden incorrecto, no sería posible garantizar que la base de datos alcanzara el estado esperado.

## Dependencia entre archivos

Los backups completos no presentan dependencia entre sí. Por ejemplo, `full_dia5.sql` permitió recuperar directamente el estado final sin utilizar ninguno de los backups anteriores.

Los incrementales sí presentan dependencia. Para obtener el estado final fue necesario contar con el backup base y con todos los incrementales anteriores.

Esta fue una de las diferencias más importantes observadas durante la práctica.

## Ventajas y desventajas

Los backups completos tienen como principal ventaja su facilidad de restauración y su independencia. También hacen más sencillo recuperar un estado específico de la base de datos. Su principal desventaja es que ocupan cada vez más espacio conforme aumenta la cantidad de información.

Los backups incrementales utilizan menos espacio y permiten guardar únicamente los cambios realizados desde el respaldo anterior. Sin embargo, su restauración es más compleja y depende de que toda la cadena de respaldos se encuentre disponible y en buen estado.

## Backup recomendado

Para el volumen de información utilizado en esta práctica, considero que el **backup completo es la opción más conveniente**.

El backup completo más grande fue de solamente **22 KB**, por lo que el ahorro de almacenamiento obtenido con los incrementales no representa una ventaja suficientemente grande como para compensar la mayor complejidad de restauración.

Por ejemplo, `full_dia5` permitió recuperar directamente el estado final en **1.69 segundos**, mientras que mediante incrementales fue necesario restaurar el backup base y aplicar los cinco archivos en orden.

En una base de datos mucho más grande y con una gran cantidad de cambios diarios, los backups incrementales podrían representar un ahorro considerable de almacenamiento y tiempo de generación. Para el volumen utilizado en esta práctica, los backups completos ofrecen un proceso más sencillo, independiente y fácil de recuperar.
