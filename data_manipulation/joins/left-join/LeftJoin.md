# SQL LEFT JOIN KEYWORD

La palabra clave `LEFT JOIN` se utiliza para obtener resultados de la tabla de la izquierda (la primera declarada) y, cuando sea posible, los resultados coincidentes de la tabla de la derecha:

## Sintaxis 

```
SELECT column_name(s) FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;
```

Supongamos que queremos obtener una lista de todos los productos junto con sus categorías correspondientes. Algunos productos pueden no tener una categoría asignada. 

- Products es la tabla de la izquierda.
- Categories es la tabla de la derecha.
- Products.CategoryID = Categories.CategoryID establece la condición de unión basada en la clave primaria y foránea.

```
SELECT 
    Products.ProductID, 
    Products.ProductName,
    Categories.CategoryName
FROM Products
LEFT JOIN Categories ON Products.CategoryID = Categories.CategoryID;

```

La consulta devuelve una lista de productos con sus nombres y, cuando sea posible, el nombre de la categoría correspondiente. Si un producto no tiene una categoría asignada, el resultado de la columna CategoryName será NULL.