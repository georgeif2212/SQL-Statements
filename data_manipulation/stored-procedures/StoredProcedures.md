# SQL STORED PROCEDURES

Los `STORED PROCEDURES` o procedimientos almacenados de SQL son códigos SQL que se pueden guardar para ser reusados cuantas veces sean necesarias.

Estos también pueden ser dinámicos y ejecutarse dependiendo los parámetros que se le pasen.
Es útil cuando hay consultas que se repiten una y otra vez.

## Sintaxis

Para crear un procedimiento:

```
CREATE PROCEDURE nombre_procedimiento
AS
sentencia_sql
GO;
```

Para ejecutar el procedimiento:

```
EXEC nombre_procedimiento
```

### Ejemplo

```
CREATE PROCEDURE SelectAllEmployees
AS
SELECT * FROM Employees;
GO;
```

```
EXEC SelectAllEmployees
```

## Sintaxis con parámetros
Para crear un procedimiento:

```
CREATE PROCEDURE nombre_procedimiento @nombre_variable nvarchar(20)
AS
sentencia_sql
GO;
```

Para ejecutar el procedimiento:

```
EXEC nombre_procedimiento @nombre_variable = "Perro"
```

### Ejemplo

```
CREATE PROCEDURE SelectAllEmployees @last_name nvarchar(20)
AS
SELECT * FROM Employees WHERE last_name = @last_name;
GO;
```

```
EXEC SelectAllEmployees @last_name = "Gonzalez"
```

Cuando el procedimiento tiene múltiples parámetros, simplemente se añaden a la creación y ejecución del procedimiento separados por una coma `,`.
