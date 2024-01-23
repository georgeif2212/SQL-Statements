-- * Para estos ejercicios estaré utilizando la base de datos Northwind

USE Northwind
-- ? Categorías con más de 5 productos:
-- ? Encuentra las categorías que tienen más de 5 productos.

SELECT Categories.CategoryName, COUNT(ProductID) AS ProductsPerCategory
FROM Products
    INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID
GROUP BY
    Categories.CategoryName
HAVING
    COUNT(Products.ProductID) > 5;

-- ? Empleados con más de 100 órdenes de envío:
-- ? Encuentra los empleados que han manejado más de 100 órdenes de envío.

SELECT
    Employees.FirstName + ' ' + Employees.LastName AS FullName,
    COUNT(Orders.OrderID) AS OrdersPerEmployee
FROM Orders
    INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY
    Employees.FirstName + ' ' + Employees.LastName
HAVING
    COUNT(ORDERS.OrderID) > 100;