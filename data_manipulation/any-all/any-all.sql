-- * Para estos ejercicios estaré utilizando la base de datos Chinook

USE Chinook;

-- ? Canciones que son todas de rock:
-- ? Encuentra las canciones que son de género "Rock". Utiliza ALL para asegurarte de que todas las canciones en un álbum sean de rock.

SELECT TrackId, Name
FROM Track t
WHERE
    GenreId = (
        SELECT GenreId
        FROM Genre
        WHERE
            Name = 'Rock'
    )
    AND GenreId = ALL (
        SELECT GenreId
        FROM Track
        WHERE
            AlbumId = t.AlbumId
    );

-- ? Facturas con todos los productos a más de $1:
-- ? Encuentra las facturas donde todos los productos tienen un precio superior a $1.

SELECT InvoiceId, InvoiceDate
FROM Invoice i
WHERE
    1 > ALL (
        SELECT UnitPrice
        FROM InvoiceLine
        WHERE
            InvoiceId = i.InvoiceId
    );