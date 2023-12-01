-- * Para estos ejercicios estaré utilizando la base de datos Chinook

USE Chinook;

-- ? Seleccionar las 5 Canciones más Largas:

-- ? Obtener las 5 canciones más largas de la tabla tracks basado en la duración.

SELECT TOP 5 * FROM Track ORDER BY Milliseconds DESC;