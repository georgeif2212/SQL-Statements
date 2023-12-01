-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE AdventureWorksDW2022;

-- ? Obtener el Precio Mínimo de Productos:

-- ? Obtener el precio más bajo (ListPrice) de la tabla DimProduct

-- ? que pertenezca a la subcategoría con id 2.

SELECT MIN(ListPrice)
FROM DimProduct
WHERE ProductSubcategoryKey = 2;

-- ? Obtener la Fecha Máxima de Nacimiento de Clientes:

-- ? Obtener la fecha más reciente de nacimiento (BirthDate) de la tabla DimCustomer.

SELECT MAX(BirthDate) AS OlderCustomer FROM DimCustomer

-- ? Obtener el Precio Máximo de Ventas:

-- ? Obtener el precio de venta máximo (SalesAmount) del cliente con id 21768

-- ? de la tabla FactInternetSales.

SELECT MAX(SalesAmount)
FROM FactInternetSales
WHERE CustomerKey = 21768;