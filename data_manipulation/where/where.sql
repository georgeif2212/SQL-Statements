-- * En estos ejercicios estaré trabajando con la base de datos Chinook

use Chinook;

-- ? Filtrar por Valor Específico:

-- ? Muestra todos los registros de la tabla Employee donde la cidad sea "Lethbridge".

SELECT * FROM dbo.Employee WHERE City = 'Lethbridge';

-- ? Filtrar con Operadores Lógicos:

-- ? Muestra todas las canciones de la tabla tracks que tengan una duración superior a 300 segundos

SELECT * FROM TRACK WHERE Milliseconds > 300000;

-- ? Filtrar con LIKE:

-- ? Muestra todos los clientes de la tabla customers cuyo país comienza con la letra "C".

SELECT * FROM Customer WHERE Country LIKE 'C%';

-- ? Filtrar con IN:

-- ? Muestra todas las canciones de la tabla tracks que pertenezcan a los géneros "Rock" o "Metal".

-- ! Los id's 1 y 3 corresponden al genero Rock y metal

SELECT * FROM Track WHERE GenreId IN (1,3);

-- ? Filtrar con BETWEEN:

-- ? Muestra todas las facturas de la tabla invoices emitidas entre las fechas '2009-01-01' y '2009-02-01'.

SELECT *
FROM Invoice
WHERE
    InvoiceDate BETWEEN '2009-01-01' AND '2009-02-01';