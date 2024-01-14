-- * Para estos ejercicios estaré utilizando la base de datos Northwind

use Northwind;

-- ? Listar Empleados y sus Supervisores:
-- ? Combina la información de la tabla Employee consigo misma utilizando un
-- ? SELF JOIN para mostrar todos los empleados y sus supervisores correspondientes.
-- ? Incluye los empleados que no tienen supervisores.

SELECT
    A.EmployeeID AS Supervisor,
    A.FirstName,
    A.LastName,
    B.EmployeeID AS Subordinate,
    B.FirstName,
    B.LastName
FROM Employees A, Employees B
WHERE
    A.EmployeeID = B.ReportsTo;

-- ? Listar Clientes y sus ciudades:
-- ? Utiliza un SELF JOIN en la tabla Customers para mostrar los clientes y 
-- ? que son de una misma ciudad

SELECT
    A.CompanyName AS CustomerName1,
    B.CompanyName AS CustomerName2,
    A.City
FROM Customers A, Customers B
WHERE
    A.CustomerID <> B.CustomerID
    AND A.City = B.City
ORDER BY A.City;