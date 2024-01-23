# SQL ANY and ALL OPERATORs

Los operadores `ANY` y `ALL` se utilizan en conjunto de subconsultas y comparaciones para comparar a un único valor o a un conjunto/rango de valores.

Este operador, retorna `TRUE` si la subconsulta devuelve por lo menos 1 registro.

Si no hay filas que satisfacen la condición especificada en la cláusula `EXISTS`, la consulta principal no devolverá ninguna fila.

## ANY

El operador `ANY` retorna `TRUE` si al menos uno de los valores de la subconsulta cumplen con la condición.

### Sintaxis

```
SELECT nombre_columna(s)
FROM nombre_tabla
WHERE nombre_columna (> < = ...)
ANY(subconsulta)
```

#### Ejemplo

Supongamos que queremos encontrar empleados cuyos salarios sean mayores que al menos uno de los salarios de los empleados en el departamento 1. 

```
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary > ANY (
    SELECT Salary
    FROM Employees
    WHERE DepartmentID = 1
);

```

En este ejemplo, Salary > ANY (...) compara el salario del empleado con al menos uno de los salarios de los empleados en el departamento 1

## ALL

El operador `ALL` retorna `TRUE` si todos los valores de la subconsulta cumplen con la condición.

### Sintaxis

```
SELECT nombre_columna(s)
FROM nombre_tabla
WHERE nombre_columna (> < = ...)
ALL(subconsulta)
```

#### Ejemplo

Supongamos que queremos encontrar empleados cuyos salarios sean mayores que todos los salarios de los empleados en el departamento 1. 

```
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary > ALL (
    SELECT Salary
    FROM Employees
    WHERE DepartmentID = 1
);
```

En este ejemplo, Salary > ALL (...) compara el salario del empleado con todos los salarios de los empleados en el departamento 1.
