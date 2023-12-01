-- * Para estos ejercicios estaré utilizando la base de datos Northwind

USE Northwind;

-- ? Eliminar Pedidos que su fecha de envió sea nula o vacía:

-- ? Elimina todos los pedidos de la tabla Orders en la base de datos "Northwind"

-- ? que tengan el campo ShippedDate en blanco.

SELECT * FROM Orders;

DELETE FROM Orders WHERE ShippedDate IS NULL;

SELECT * FROM Orders;