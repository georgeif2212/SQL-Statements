-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE Chinook;

-- ? Buscar Álbumes Publicados que el ArtistID se encuentre entre 4 y 6:

-- ? Encuentra los nombres de los álbumes que fueron hechos por los artistas que tienen ID entre 4 y 6.

SELECT * FROM Album WHERE ArtistId BETWEEN 4 AND 6;

-- ? Buscar Artistas que su nombre se encuentre entre D y H:

-- ? Encuentra los nombres de los Artistas que su nombre se encuentre entre D y H

SELECT * FROM Artist WHERE Name BETWEEN 'D' AND 'H';

-- ? Buscar Clientes que su id se encuentre entre 38 y 35, y que además hayan hecho facturas:

SELECT *
FROM Customer
WHERE CustomerId IN (
        SELECT CustomerId
        FROM Invoice
        WHERE
            CustomerId BETWEEN 28 AND 35
    )