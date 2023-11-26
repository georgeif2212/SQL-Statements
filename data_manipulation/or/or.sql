-- * En estos ejercicios estaré trabajando con la base de datos Chinook

USE CHINOOK;

-- ? Filtrar por Género:

-- ? Muestra todas las canciones de la tabla tracks que son de género 'Rock' o 'Pop'.

SELECT * FROM Track WHERE GenreId = 1 OR GenreId = 9;

-- ? Filtrar por Cliente o País:

-- ? Muestra todos los clientes de la tabla customers que sean de 'USA' o su nombre comience con "J".

SELECT * FROM Customer WHERE Country = 'USA' OR FirstName LIKE 'J%' 

-- ? Filtrar por Factura o Forma de Pago:

-- ? Muestra todas las facturas de la tabla invoices que provengan de la ciudad Oslo o del País Alemania

SELECT *
FROM Invoice
WHERE
    BillingCity = 'Oslo'
    OR BillingCountry = 'Germany';