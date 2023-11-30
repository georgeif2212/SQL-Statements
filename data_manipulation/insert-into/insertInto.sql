-- * Para estos ejercicios estaré utilizando la base de datos Chinook

use Chinook;

-- ? Inserta un nuevo cliente llamado Jorge Infante en la tabla Customer en la base de datos "Chinook".

-- ? Proporciónale Company, Country y Email. Asegúrate de que el CustomerID sea único.

INSERT INTO
    Customer (
        CustomerId,
        FirstName,
        LastName,
        Company,
        Country,
        Email
    )
VALUES (
        60,
        'Jorge',
        'Infante',
        'UAMC',
        'México',
        'jinfante2212@gmail.com'
    );

-- ? Insertar una Nueva Canción en la tabla tracks

-- ? Proporciónale un Name, Composer, y Milliseconds. Asegúrate de que la canción

-- ? tenga un GenreId existente.

INSERT INTO
    Track (
        TrackId,
        Name,
        MediaTypeId,
        GenreId,
        Composer,
        Milliseconds,
        UnitPrice
    )
VALUES (
        3504,
        'Lets rock',
        1,
        1,
        'Angus Young, Malcolm Young, Brian Johnson',
        213876,
        0.99
    );
