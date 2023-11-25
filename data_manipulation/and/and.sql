-- * En estos ejercicios estaré trabajando con la base de datos Chinook
use AdventureWorksDW2022

-- ? Filtrar por Rango de Fechas:

-- ? Muestra todas las ventas de la tabla FactInternetSales donde la fecha de venta (OrderDate) está entre '2013-01-01' y '2013-01-03'.

SELECT * FROM FactInternetSales WHERE OrderDate BETWEEN '2013-01-01' AND '2013-01-03';