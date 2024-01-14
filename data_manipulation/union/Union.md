# SQL UNION OPERATOR

El operador `UNION` se utiliza para combinar los resultados de dos o más cláusulas `SELECT` en un solo conjunto de resultados.

- Todos los `SELECT` que se hagan en conjunto del operador `UNION` deben tener el mismo número de columnas.
- Las columnas deben tener tipos de datos similares.
- Las columnas en cada `SELECT` deben estar en el mismo orden.

## Sintaxis

```
SELECT nombre_columna(s) FROM tabla1
UNION
SELECT nombre_columna(s) FROM tabla2;
```

### UNION ALL

Cuando se usa el operador `UNION` no hay valores duplicados pero para permitirlos se utiliza `UNION ALL`.

```
SELECT nombre_columna(s) FROM tabla1
UNION ALL
SELECT nombre_columna(s) FROM tabla2;
```