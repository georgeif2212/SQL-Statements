USE Northwind;

-- ? Filtrar por Productos que NO sean de la Categoría 'Beverages':

-- ? Muestra todos los productos de la tabla Products que NO pertenezcan a la categoría 'Beverages', ni 'Seafood'

-- ? La categoría 'Beverages' tiene el id 1 y 'Seafood tiene el id 8'

SELECT *
FROM Products
WHERE
    NOT CategoryID = 1
    AND NOT CategoryID = 8;