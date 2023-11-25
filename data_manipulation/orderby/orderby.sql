-- ? Ordenar Ascendentemente por una Columna:

-- ? Muestra todos los álbumes de la tabla albums ordenados alfabéticamente por título.

SELECT * FROM Album ORDER BY TITLE;

-- ? Ordenar por Múltiples Columnas:

-- ? Muestra todas las canciones de la tabla tracks ordenadas primero por idgénero (descendente)

-- ?y luego por nombre de pista (ascendente).

SELECT * FROM Track ORDER BY GenreId DESC, Name ASC;

-- ? Ordenar Fechas:

-- ? Muestra todas las facturas de la tabla invoices ordenadas por fecha de factura de forma descendente.

SELECT * FROM Invoice ORDER BY InvoiceDate DESC;