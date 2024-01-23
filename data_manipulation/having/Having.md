# SQL HAVING CLAUSE

La cláusula `HAVING` se utiliza en conjunto con la sentencia `GROUP BY` para filtrar los resultados de una consulta que se basa en condiciones dadas.

Fue añadida porque la palabra clave `WHERE` no se pude usar con las funciones de agregación: `SUM()`, `COUNT()`, `AVG()`, `MAX()` o `MIN()`.

## Sintaxis

```
SELECT nombre_columa(s)
FROM nombre_tabla
WHERE condicion
GROUP BY nombre_columna(s)
HAVING condicion
```

### Ejemplo

Supongamos que deseamos hacer una consulta que filtre los resultados para incluir solamente a las categorías donde el número de productos es mayor a 5.

- `COUNT(ProductID) AS NumberOfProducts`: Esta parte cuenta el número de productos y le asigna el alias NumberOfProducts.
- `GROUP BY CategoryID`: Agrupa los resultados por la columna CategoryID.
- `HAVING COUNT(ProductID) > 5`: Filtra los resultados donde cada categoría tiene más de 5 productos.

```
SELECT CategoryID, COUNT(ProductID) AS NumberOfProducts
FROM Products
GROUP BY CategoryID
HAVING COUNT(ProductID) > 5;
```

En este ejemplo, la cláusula HAVING filtra los resultados para incluir solo aquellas categorías donde el número de productos es mayor que 5.