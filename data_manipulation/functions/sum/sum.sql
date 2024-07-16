-- * Para estos ejercicios estaré utilizando la base de datos Northwind

USE Northwind

-- ? Sumar la Cantidad Total de Unidades Vendidas:

-- ? Utiliza SUM para obtener la cantidad total de unidades vendidas (Quantity) en la tabla OrderDetails

SELECT SUM(Quantity) AS TotalUnidadesVendidas FROM [Order Details]

-- ? Sumar el Precio Total de Productos en Inventario:

-- ? Utiliza SUM para obtener el precio total de todos los productos en inventario en la tabla Products.

SELECT
    SUM(UnitPrice * UnitsInStock) AS PrecioTotalProductosEnInventario
FROM Products;

-- ?Sumar el Monto Total de Facturas:

-- ?Utiliza SUM para obtener el monto total de facturas (Freight) en la tabla Orders.

SELECT SUM(Freight) AS MontoTotalFacturas FROM Orders;