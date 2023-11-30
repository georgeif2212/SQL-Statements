# SQL INSERT INTO STATEMENT

La sentencia `INSERT INTO` se usa para insertar nuevos registros en una tabla

## Sintaxis

Existen dos formas de utilizar esta sentencia 

1. Cuando algunos campos no se van a llenar de un registro, se deben especificar tanto las columnas como las valores que serán insertados

```INSERT INTO nombre_tabla (column1,column2,column3, ...) VALUES (value1, value2, value3, ...);```

2. Si se van a añadir valores a todos los campos del registro no es necesario especificar todos los nombres de las columnas, pero sí se debe mantener el mismo orden que tienen las columnas en la tabla.

```INSERT INTO nombre_tabla (VALUES (value1, value2, value3, ...);```

## Insert con varias filas

SQL también permite insertar varios registros con una misma sentencia.

Simplemente debes asegurarte de colocar una coma "," entre cada conjunto de valores

```INSERT INTO nombre_tabla VALUES ('value1_column1', 'value2_column2', 'value3_column3', 'value4_column4'), ('value5_column1','value6_column2', 'value7_column3', 'value8_column4'),(...);```