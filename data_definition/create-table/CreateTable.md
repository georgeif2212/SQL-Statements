# SQL CREATE TABLE Statement

La sentencia `CREATE TABLE` se usa para crear una nueva tabla dentro de una base de datos.

## Sintaxis

Para crear una nueva tabla dentro de una base de datos:

```
CREATE TABLE table_name (
    columna1 tipo_dato,
    columna2 tipo_dato,
    columna3 tipo_dato,
   ....
);
```

### Ejemplo

```
CREATE TABLE Students (
    StudentId int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```
