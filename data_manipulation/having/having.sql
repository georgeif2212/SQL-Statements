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