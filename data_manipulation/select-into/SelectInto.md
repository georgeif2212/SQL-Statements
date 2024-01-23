# SQL SELECT INTO Statement

La declaración `SELECT INTO` se usa para copiar registros de una tabla a otra.

Se pueden usar condiciones en esta declaración para solo copiar registros específicos

## Sintaxis

- Para copiar todas las columnas a otra tabla:

```
SELECT * 
INTO nueva_tabla 
FROM nombre_tabla
WHERE condicion;
```

- Para copiar algunas columnas a otra tabla:

```
SELECT columna1, columna2, columna3, ...
INTO nueva_tabla 
FROM nombre_tabla
WHERE condicion;
```

También, se puede usar para copiar tablas en otra base de datos, con la siguiente sintaxis:

```
SELECT * 
INTO nueva_tabla IN 'nombreDB'
FROM nombre_tabla
WHERE condicion;
```

Es importante mencionar que se puede copiar registros de más de una tabla usando cláusula `JOIN`.