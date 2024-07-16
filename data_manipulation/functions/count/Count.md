# SQL COUNT Function

La función `COUNT()` retorna el número de registros que cumplen con un criterio específico

## Sintaxis

```
SELECT COUNT(*) FROM nombre_tabla;
```

A esta funcion también se le puede añadir la cláusula `WHERE` para contar solo los registros que cumplan una condición

```
SELECT COUNT(*) FROM nombre_tabla WHERE condicion;
```

### Especificar una columna

Cuando se especifica una columna en la función `COUNT()` los valores `NULL` no son contados

```
SELECT COUNT(column1) FROM nombre_tabla;
```

### Ignorar duplicados

Se pueden ignorar los duplicados usando la palabra clave `DISTINCT` dentro de la función `COUNT()`, en el caso de que sea usada, los registros que tengan un mismo valor son contados como uno.

```
SELECT COUNT(DISTINCT column1) FROM nombre_tabla;
```