-- * Para estos ejercicios estaré utilizando la base de datos Chinook

use Chinook;

-- ? Mostrar Álbumes y las Canciones Correspondientes (si las hay):
-- ? Combina la información de la tabla albums con la tabla tracks
-- ? utilizando un LEFT JOIN para mostrar todos los álbumes y las canciones correspondientes si las hay.

SELECT
    Album.AlbumId,
    Album.Title,
    Album.ArtistId,
    Track.Name as SongName
FROM Album
    LEFT JOIN Track ON Album.AlbumId = Track.AlbumId;

-- ? Mostrar Géneros Musicales y Canciones Asociadas (si las hay):
-- ? Combina la información de la tabla genres con la tabla tracks utilizando un LEFT JOIN para mostrar todos los géneros y las canciones asociadas si las hay.

SELECT
    Genre.GenreId,
    Genre.Name AS GenreName,
    Track.Name AS SongName
FROM Genre
    LEFT JOIN Track ON Genre.GenreId = Track.GenreId;

-- ? Obtener Información sobre Clientes y sus Órdenes (si las tienen):
-- ? Combina la información de la tabla customer con la tabla invoice utilizando un LEFT JOIN para mostrar todos los clientes y las órdenes correspondientes si las tienen.

SELECT
    Customer.CustomerId,
    Customer.FirstName,
    Customer.LastName,
    Customer.Company,
    Invoice.InvoiceId,
    Invoice.InvoiceDate,
    Invoice.Total
FROM Customer
    LEFT JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId;