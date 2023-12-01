# SQL MIN() and MAX() Functions

La función `MIN()` y `MAX()` son funciones que regresan el valor más pequeño y el más grande de una columna respectivamente.

## Sintaxis

Para encontrar el valor más pequeño de una columna "column1" se usa:

```
SELECT MIN(column1) FROM nombre_tabla;
```

Para encontrar el valor más grande de una columna "column1" se usa:

```
SELECT MAX(column1) FROM nombre_tabla;
```

### Alias

Cuando se usa alguna de estas dos funciones, se retorna una única columna cuyo nombre será `MIN(field)` o `MAX(field)`.

Para darle otro nombre a esta columan se usa la palabra clave `AS`

```
SELECT MAX(column1) AS nuevo_nombre FROM nombre_tabla;
```
