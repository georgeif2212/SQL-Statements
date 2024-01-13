-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

use AdventureWorksDW2022;

-- ? Mostrar Detalles de Producto y sus Ventas (si las tienen):
-- ? Combina la información de la tabla DimProduct con la tabla FactInternetSales utilizando un LEFT JOIN para mostrar todos los detalles de producto y las ventas correspondientes si las tienen.

SELECT
    DimProduct.ProductKey,
    DimProduct.EnglishProductName,
    DimProduct.StandardCost,
    FactInternetSales.OrderDate
FROM FactInternetSales
    RIGHT JOIN DimProduct ON FactInternetSales.ProductKey = DimProduct.ProductKey;