# SQL INNER JOIN KEYWORD

La palabra clave `INNER JOIN` se utiliza para combinar datos de dos tablas en función de una condición de igualdad:

## Sintaxis 

Supongamos que tenemos las tablas Employees y Orders, y queremos obtener información sobre los empleados que realizaron pedidos:

- Employees es la primera tabla.
- Orders es la segunda tabla.
- Employees.EmployeeID = Orders.EmployeeID establece la condición de igualdad para la unión.

```
SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Orders.OrderID, Orders.OrderDate
FROM Employees
INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID;
```

Este ejemplo retorna una lista de empleados junto con la información de los pedidos que realizaron, incluyendo el ID del empleado, el nombre del empleado, el ID del pedido y la fecha del pedido. La cláusula INNER JOIN se utiliza para combinar las filas donde el EmployeeID es el mismo en ambas tablas.