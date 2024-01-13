# SQL FULL OUTER JOIN KEYWORD

La palabra clave `FULL OUTER JOIN` y `FULL JOIN` se utiliza para obtener todas las filas cuando hay una coincidencia en alguna de las tablas. Es decir, devuelve todas las filas de ambas tablas, y donde no hay coincidencias, los resultados de la tabla sin coincidencias tendrán valores nulos.

## Sintaxis 

```
SELECT column_name(s) FROM table1 FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;
```

### Ejemplo

Supongamos que queremos obtener una lista completa de empleados y las órdenes que realizaron, incluyendo aquellas órdenes sin un empleado asociado o empleados sin órdenes asociadas. 

- Employees es la primera tabla.
- Orders es la segunda tabla.
- Employees.EmployeeID = Orders.EmployeeID establece la condición de igualdad para la unión.

```
SELECT 
    Employees.EmployeeID,
    Employees.FirstName,
    Employees.LastName,
    Orders.OrderID,
    Orders.OrderDate
FROM Employees
FULL JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID;
```

La consulta devolverá todas las filas de Employees y Orders, y donde no haya coincidencias, los valores de las columnas de la tabla sin coincidencias serán nulos.