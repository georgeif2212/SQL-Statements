-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE AdventureWorksDW2022;

-- ? Buscar Productos en Categorías Específicas:

-- ? Utiliza IN para buscar productos que pertenezcan a las categorías con identificadores específicos en la tabla DimProductCategory.

SELECT * FROM DimProduct WHERE ProductSubcategoryKey IN (1, 14, 2);

-- ? Clientes que Han Realizado Compras:

-- ? Encuentra los nombres de los clientes que han realizado al menos una compra en la tabla Orders.

SELECT *
FROM DimCustomer
WHERE CustomerKey IN (
        SELECT CustomerKey
        FROM
            FactInternetSales
    );

-- ? Clientes que Han Realizado Compras en 2022:

-- ? Encuentra los nombres de los clientes que han realizado al menos una compra en el año 2022 en las tablas Customers y Orders.

SELECT FirstName
FROM DimCustomer
WHERE CustomerKey IN (
        SELECT CustomerKey
        FROM FactInternetSales
    )