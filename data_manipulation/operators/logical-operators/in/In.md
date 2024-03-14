# SQL IN OPERATOR

El operador `IN` permite especificar multiples valores en una cláusula `WHERE`.

Este operador funciona como un atajo a multiples condiciones `OR`.

## Sintaxis

Se usa para retornar todos los registros que en una columna contengan los valores especificados.

```
SELECT * FROM nombre_tabla WHERE nombre_columna IN (value1, value2, value3, ...);
```
### NOT IN

Cuando se usa la palabra clave `NOT` se retornarán todos los registros que no contienen ninguno de los valores en la lista.

```
SELECT * FROM nombre_tabla WHERE nombre_columna NOT IN (value1, value2, value3, ...);
```

## IN SELECT 

El operador `IN` también se puede usar con una subconsulta usando la cláusula `WHERE`.

```
SELECT * FROM nombre_tabla WHERE nombre_columna IN (SELECT nombre_columna FROM nombre_tabla2);
```

Con las subconsultas se pueden retornar todos los registros de la consulta principal que están presentes en el resultado de la subconsulta.

### NOT IN (SELECT)

```
SELECT * FROM nombre_tabla WHERE nombre_columna NOT IN (SELECT nombre_columna FROM nombre_tabla2);
```

El operador `NOT IN` hace lo contrario al `IN`, trae todos los registros de la consulta principal que NO están presentes en el resultado de la subconsulta.