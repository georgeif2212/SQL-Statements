-- * Para estos ejercicios estaré utilizando la base de datos Northwind

USE Northwind;

-- ? Alias para la columna "ProductName" como "Name", UnitPrice como "Price" en "Products":

SELECT
    ProductID,
    ProductName AS Name,
    UnitPrice AS Price
FROM Products;

-- ? Alias para la columna "OrderDate" en "Orders":

SELECT OrderID, CustomerID, OrderDate AS Date FROM Orders;

--Alias para la expresión de concatenación de direcciones en "Customers":

SELECT
    CustomerID,
    ContactName,
    Address + ', ' + City + ', ' + Country AS FullAddress
FROM Customers;