# SQL EXISTS OPERATOR

El operador `EXISTS` se utiliza para verificar la existencia de registros en el resultado de una subconsulta.

Este operador, retorna `TRUE` si la subconsulta devuelve por lo menos 1 registro.

Si no hay filas que satisfacen la condición especificada en la cláusula `EXISTS`, la consulta principal no devolverá ninguna fila.

## Sintaxis

```
SELECT nombre_columna(s)
FROM nombre_tabla
WHERE EXISTS(subconsulta);
```

### Ejemplo

Supongamos que queremos encontrar empleados que hayan realizado algún pedido. Se puede usar el operador `EXISTS` de la siguiente manera:

- `WHERE EXISTS (SELECT 1 FROM Orders o WHERE o.EmployeeID = e.EmployeeID):` Esta parte verifica si hay al menos una fila en la tabla Orders donde el EmployeeID coincide con el EmployeeID de la tabla Employees.
```
SELECT EmployeeID, FirstName, LastName
FROM Employees e
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.EmployeeID = e.EmployeeID
);
```

Este ejemplo devolverá una lista de empleados que han realizado al menos un pedido.