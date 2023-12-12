-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE Chinook;

-- ? Calcular el Tiempo Promedio de las Canciones:

-- ? Utiliza AVG para calcular el tiempo promedio (UnitPrice) de todas las canciones en la tabla tracks.

SELECT AVG(Milliseconds) AS TiempoPromedio FROM Track;