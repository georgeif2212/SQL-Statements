# SQL `IFNULL()`, `ISNULL()`, `COALESCE()`, `NVL()` Functions

Las funciones de tipo `NULL` permiten retornar un valor alternativo en caso de que la columna columna contenga un dato `NULL`.

## Sintaxis

Para el caso de SQL Server, la función que permite realizar 
esta acción es `ISNULL()`

```
SELECT columna1, 
  precio * (units + ISNULL(orderedUnits,0)) 
  FROM tabla1;
```

La columna orederedUnits puede contener datos nulos por lo que si se realiza una multiplicación, el valor sería `NULL`, en este caso es útil la función para retornar valores válidos.