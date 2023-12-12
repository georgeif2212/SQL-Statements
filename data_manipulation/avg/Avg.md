# SQL AVG Function

La función `AVG()` retorna el promedio de los valores de una columna numerica.

Los valores `NULL` no se toman en cuenta

## Sintaxis

```
SELECT AVG(nombre_columna) FROM nombre_tabla;
```

A esta funcion también se le puede añadir la cláusula `WHERE` para promediar los valores de solo los registros que cumplan una condición

```
SELECT AVG(nombre_columna) FROM nombre_tabla WHERE condicion;
```

### Usar alias

Se le puede dar un nombre / alias a la columna retornada

```
SELECT AVG(nombre_columna) AS total FROM nombre_tabla;
```
