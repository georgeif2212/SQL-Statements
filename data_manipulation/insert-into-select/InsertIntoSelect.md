# SQL INSERT INTO SELECT Statement

La declaración `INSERT INTO SELECT` se usa para copiar registros de una tabla a otra previamente creada.

Esta declaración necesita que los tipos de datos de ambas tablas coincidan.

## Sintaxis

- Para copiar todas las columnas a otra tabla:

```
INSERT INTO tabla2
SELECT * FROM tabla1
WHERE condicion;
```

- Para copiar algunas columnas a otra tabla:

```
INSERT INTO tabla2 (columna1, columna2, columna3,...)
SELECT columna1, columna2, columna3, ...
FROM tabla 1 
WHERE condicion;
```