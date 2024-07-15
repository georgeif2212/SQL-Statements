USE Chinook;

-- ? Clasificación de Duración de Canciones:
-- ? Clasifica las canciones de la tabla Track en tres categorías: "Corta" (menos de 3 minutos), "Media" (entre 3 y 5 minutos) y "Larga" (más de 5 minutos).

--SELECT Milliseconds FROM Track;

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