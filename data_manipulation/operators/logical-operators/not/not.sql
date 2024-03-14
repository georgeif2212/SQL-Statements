USE Northwind;

-- ? Filtrar por Productos que NO sean de la Categoría 'Beverages':

-- ? Muestra todos los productos de la tabla Products que NO pertenezcan a la categoría 'Beverages', ni 'Seafood'

-- ? La categoría 'Beverages' tiene el id 1 y 'Seafood tiene el id 8'

SELECT *
FROM Products
WHERE
    NOT CategoryID = 1
    AND NOT CategoryID = 8;

-- ? Filtrar por Empleados que NO sean de un Territorio Específico:

-- ? Muestra todos los empleados de la tabla Employees que NO sean de 'USA'.

SELECT * FROM Employees WHERE NOT Country = 'USA';

-- ? Filtrar por Pedidos que NO tengan Envío Gratis:

-- ? Muestra todos los pedidos de la tabla Orders que NO tengan envío menor a 170.

SELECT * FROM Orders WHERE NOT Freight < 170;