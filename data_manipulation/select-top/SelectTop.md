# SQL SELECT TOP Clause

La cláusula `SELECT TOP` se usa para especificar cuantos registros quieres retornar a la hora de hacer consultas

Esta cláusula es útil cuando una tabla tiene muchos registros y hacer un `SELECT` normal puede afectar al rendimiento

## Sintaxis

Cada sistema de bases de datos cuenta con su propia cláusula de este tipo pero nos vamos a enfocar en SQL SERVER el cual es `SELECT TOP`

Cuando se busca un número determinado de filas:

```
SELECT TOP número_filas nombres_columnas|* FROM nombre_tabla WHERE condicion;
```

Cuando se busca un porcentaje de filas:

```
SELECT TOP porcentaje nombres_columnas|* FROM nombre_tabla WHERE condicion;
```

### Cláusula WHERE

La cláusula `WHERE` se puede usar de la misma manera que el `SELECT` normal.


```
SELECT TOP número_filas nombres_columnas|* FROM nombre_tabla WHERE condicion;
```

### Palabra clave ORDER BY

También se puede usar con la palabra clave `ORDER BY`:

```
SELECT TOP número_filas nombres_columnas|* FROM nombre_tabla WHERE condicion ORDER BY nombre_columna ASC|DESC;
```
