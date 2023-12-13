# SQL BETWEEN OPERATOR

El operador `BETWEEN` permite seleccionar valores que se encuentran dentro de un rango dado, los valores pueden ser números, texto o fechas.

Este operador es inclusivo, por lo que los valores de inicio y fin son incluidos, además se usa en conjunto del operador `AND`.

## Sintaxis

Se usa para retornar todos los registros que en una columna contengan los valores especificados.

```
SELECT * FROM nombre_tabla WHERE nombre_columna BETWEEN value1 AND value2;
```

### NOT BETWEEN

Cuando se usa la palabra clave `NOT` se retornarán todos los registros que se encuentren fuera del rango dado.

```
SELECT * FROM nombre_tabla WHERE nombre_columna NOT BETWEEN value1 AND value2;
```

### BETWEEN con valores de Texto

Cuando se usa este operador con valores de texto se retornan todos los valores que se encuentren alfabeticamente entre los valores dados. Además se le puede añadir la palabra clave `ORDER BY` para ordenarlos ascendente o descendentemente.

```
SELECT * FROM Customers WHERE CustomerName BETWEEN 'Andrea Flores' AND 'Jorge Infante' ORDER BY CustomerName;
```

Realiza lo mismo cuando se usa la palabra clave `NOT` pero retorna los que no se encuentran en este rango.

### BETWEEN con fechas

Cuando se usa valores de fecha, retorna todos los registros que dada una columa de fechas se encuentren en un rango dado.

```
SELECT * FROM Customers WHERE CustomerBirth BETWEEN '22/12/2002' AND '12/02/2009' ORDER BY CustomerBirth;
```

Realiza lo mismo cuando se usa la palabra clave `NOT` pero retorna los que no se encuentran en este rango.

## BETWEEN con el operador IN 

Se puede usar para añadir más de una condición a la consulta, por ejemplo cuando se hace una consulta de todos los productos que su precio está entre un rango y además, que pertenecen a ciertas categorías:


```
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20 AND CategoryID IN (1,2,3);
```

