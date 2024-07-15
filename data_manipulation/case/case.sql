USE Chinook;

-- ? Clasificación de Duración de Canciones:
-- ? Clasifica las canciones de la tabla Track en tres categorías: "Corta" (menos de 3 minutos), "Media" (entre 3 y 5 minutos) y "Larga" (más de 5 minutos).

SELECT
    TrackId,
    Name,
    Milliseconds * 1.0 / 60000 AS DurationMinutes,
    CASE
        WHEN Milliseconds / 60000 * 1.0 < 3 THEN 'Corta'
        WHEN Milliseconds / 60000 * 1.0 >= 3 AND Milliseconds / 60000 * 1.0 < 6 THEN 'Media'
        ELSE 'Larga'
    END AS Duration
FROM Track;

-- ? Descuento por Cantidad en Facturas:
-- ? Crea una consulta que muestre el InvoiceId, CustomerId, y un campo calculado Discount que otorgue un 10% de descuento si el total de la factura es mayor a $50,
-- ? y un 20% de descuento si es mayor a $100. Para los totales menores o iguales a $50, el descuento es del 0%.

SELECT
    InvoiceId,
    CustomerId,
    Total,
    CASE
        WHEN Total <= 3 THEN '0%'
        WHEN Total > 3 AND Total < 10 THEN '10%'
        ELSE '20%'
    END AS Discount
FROM Invoice;