-- * Para estos ejercicios estaré utilizando la base de datos Northwind

USE Northwind
-- ? Total de Pedidos por Cliente:
-- ? Escribe una consulta que muestre el número total de pedidos realizados por cada cliente.

SELECT Customers.CompanyName, COUNT(Orders.OrderID) AS TotalPedidos
FROM Customers
    INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY
    Customers.CompanyName;

-- ? Promedio de Precios por Categoría:
-- ? Calcula el precio promedio de los productos Sen cada categoría.

SELECT Categories.CategoryName, AVG(Products.UnitPrice) AS PromedioCategorias
FROM Products
    INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID
GROUP BY
    Categories.CategoryName;

-- ? Ventas Totales por Categoría:
-- ? Encuentra las ventas totales (la suma de la cantidad * precio unitario) por categoría de producto.

SELECT Categories.CategoryName, SUM([Order Details].UnitPrice*[Order Details].Quantity) AS VentasTotales
FROM [Order Details]
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName;