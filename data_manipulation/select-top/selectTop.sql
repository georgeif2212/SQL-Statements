-- * Para estos ejercicios estaré utilizando la base de datos Chinook

USE Chinook;

-- ? Seleccionar las 5 Canciones más Largas:

-- ? Obtener las 5 canciones más largas de la tabla tracks basado en la duración.

SELECT TOP 5 * FROM Track ORDER BY Milliseconds DESC;

-- ? Seleccionar los albumes del artista con id 1 ordenados por titulo alfabeticamente:

SELECT * FROM Album WHERE ArtistId = 1 ORDER BY Title;

-- ? Seleccionar las primeras 5 facturas del cliente con ID 2 ordenadas por el total:

SELECT TOP 5 * FROM Invoice WHERE CustomerId = 2 ORDER BY Total;