-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE Chinook;

-- ? Calcular el Tiempo Promedio de las Canciones:

-- ? Utiliza AVG para calcular el tiempo promedio (Miliseconds) de todas las canciones en la tabla tracks.

SELECT AVG(Milliseconds) AS TiempoPromedio FROM Track;

-- ? Calcular el Promedio del total de las Facturas:

-- ? Utiliza AVG para calcular el tiempo promedio (Total) de todas las facturas en la tabla Invoice.

SELECT AVG(Total) AS PromedioTotal FROM Invoice;