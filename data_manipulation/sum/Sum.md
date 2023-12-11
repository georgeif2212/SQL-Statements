# SQL SUM Function

La función `SUM()` retorna la suma total de los valores de una columna numerica

## Sintaxis

```
SELECT SUM(nombre_columna) FROM nombre_tabla;
```

A esta funcion también se le puede añadir la cláusula `WHERE` para sumar los valores de solo los registros que cumplan una condición

```
SELECT SUM(nombre_columna) FROM nombre_tabla WHERE condicion;
```

### Usar alias

Se le puede dar un nombre / alias a la columna retornada

```
SELECT SUM(nombre_columna) AS total FROM nombre_tabla;
```

### Expresiones con la función suma

```
SELECT SUM(nombre_columna * 12) AS total FROM nombre_tabla;
```
