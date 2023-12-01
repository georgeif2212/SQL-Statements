-- * Para estos ejercicios estaré utilizando la base de datos Northwind

use Northwind;

-- ? Filtrar Registros con Valor NULL:

-- ? Muestra todos los productos de la tabla Products en la base de datos

-- ? "Northwind" que tienen un valor NULL en la columna SupplierID.

SELECT * FROM Products WHERE SupplierID IS NULL;

-- ? Inserta registros con Valor NULL:

-- ? Inserta un registro en donde insertes valores para los campos

-- ? ProductName, SupplierID, Discontinued, mientras que los demás quedan en null

INSERT INTO
    PRODUCTS (
        ProductName,
        SupplierID,
        Discontinued
    )
VALUES ('Gomitas', 3, 0);

SELECT * FROM Products;

-- ? Filtrar Registros con Valor distinito a NULL:

-- ? Muestra todos los clientes que tengan alguna región definida

SELECT * FROM Customers WHERE Region IS NOT NULL;