-- * En estos ejercicios estaré trabajando con la base de datos Chinook

use AdventureWorksDW2022 

-- ? Filtrar por Rango de Fechas:

-- ? Muestra todas las ventas de la tabla FactInternetSales donde la fecha de venta (OrderDate) está entre '2013-01-01' y '2013-01-03'.

SELECT *
FROM FactInternetSales
WHERE
    OrderDate BETWEEN '2013-01-01' AND '2013-01-03';

-- ? Filtrar por Empleado y Fecha:

-- ? Muestra todas las ventas de la tabla FactInternetSales realizadas por el cliente con el ID 11433 y que ocurrieron después de '2013-03-01'.

SELECT *
FROM FactInternetSales
WHERE
    CustomerKey = 11433
    AND OrderDate > '2013-03-01';