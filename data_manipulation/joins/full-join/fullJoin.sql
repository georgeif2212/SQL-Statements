-- * Para estos ejercicios estaré utilizando la base de datos Chinook

use Chinook;

-- ? Listar Artistas y sus Álbumes (Incluyendo los sin Álbumes):
-- ? Combina la información de la tabla Artist con la tabla Album utilizando 
-- ? un FULL JOIN para mostrar todos los artistas y sus álbumes correspondientes. 
-- ? Incluye los artistas que no tienen álbumes.

SELECT
    Artist.ArtistId,
    Artist.Name AS ArtistName,
    Album.AlbumId,
    Album.Title
FROM Artist FULL
    JOIN Album ON Artist.ArtistId = Album.ArtistId;

-- ? Mostrar Canciones y sus Géneros (Incluyendo las sin Género):
-- ? Combina la información de la tabla Track con la tabla Genre utilizando 
-- ? un FULL JOIN para mostrar todas las canciones y sus géneros correspondientes.
-- ? Incluye las canciones que no tienen género asignado.

SELECT
    Track.TrackId,
    Track.Name AS TrackName,
    Genre.GenreId,
    Genre.Name AS GenreName
FROM Track FULL
    JOIN Genre ON Track.GenreId = Genre.GenreId;