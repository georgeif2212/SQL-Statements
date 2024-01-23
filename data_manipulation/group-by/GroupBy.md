# SQL GROUP BY STATEMENT

La sentencia `GROUP BY` se utiliza para agrupar filas que tienen los mismos valores en algunas columnas. 

Normalmente se usa con funciones de agregación, como `SUM()`, `COUNT()`, `AVG()`, `MAX()` o `MIN()`.

## Sintaxis

```
SELECT nombre_columna(s) FROM tabla1
WHERE condicion
GROUP BY nombre_columa(s)
```

### Ejemplo

Supongamos que deseamos calcular el total de ventas por país. 

`SUM(Freight) AS TotalVentas`: Esta parte suma el valor de la columna Freight para cada grupo y le asigna el alias TotalVentas.

`GROUP BY ShipCountry`: Agrupa los resultados por la columna ShipCountry.

```
SELECT ShipCountry, SUM(Freight) AS TotalVentas
FROM Orders
GROUP BY ShipCountry;
```

Este ejemplo mostrará una lista de países junto con el total de ventas para cada país basado en el valor de la columna Freight en la tabla Orders.