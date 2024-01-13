-- * Para estos ejercicios estaré utilizando la base de datos Northwind

use Northwind;

-- ? Obtener Detalles de Órdenes con Información del Cliente:
-- ? Combina la información de la tabla Orders con la tabla Customers
-- ? para obtener detalles de órdenes, incluyendo el nombre del cliente.

SELECT
    Orders.OrderID,
    Customers.CompanyName,
    Orders.OrderDate
FROM Orders
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

-- ? Mostrar Productos y Categorías Correspondientes:
-- ? Combina la información de la tabla Products con la tabla Categories
-- ? para obtener una lista de productos con sus categorías correspondientes.

SELECT
    Products.ProductID,
    Products.ProductName,
    Products.UnitPrice,
    Categories.CategoryName,
    Categories.Description
FROM Products
    INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- ? Lista de Empleados y sus Subordinados:
-- ? Combina la información de la tabla Employees consigo misma para obtener
-- ? una lista de empleados y sus subordinados.

SELECT
    e1.EmployeeID AS EmployeeID,
    e1.FirstName AS EmployeeFirstName,
    e1.LastName AS EmployeeLastName,
    e2.EmployeeID AS SubordinateID,
    e2.FirstName AS SubordinateFirstName,
    e2.LastName AS SubordinateLastName
FROM Employees e1
    INNER JOIN Employees e2 ON e1.EmployeeID = e2.ReportsTo;

-- ? Detalles de Envío de Órdenes con Información del Cliente:
-- ? Combina la información de las tablas Orders, Customers, y Shippers para obtener
-- ? detalles de envío de órdenes, incluyendo el nombre del cliente y el nombre de la empresa de envío.

SELECT
    Orders.OrderID,
    Customers.CustomerID,
    Customers.ContactName,
    Customers.CompanyName,
    Shippers.ShipperID,
    Shippers.CompanyName,
    Orders.ShippedDate
FROM Orders
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
    INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID;