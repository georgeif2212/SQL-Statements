-- * En estos ejercicios estaré trabajando con la base de datos Chinook
-- ? Filtrar por Género:
-- ? Muestra todas las canciones de la tabla tracks que son de género 'Rock' o 'Pop'.

USE CHINOOK;


SELECT * FROM Track WHERE GenreId = 1 OR GenreId = 9;
