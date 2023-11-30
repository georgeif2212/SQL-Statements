-- * Para estos ejercicios estaré utilizando la base de datos Chinook

use Chinook;

SELECT * FROM Customer;

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