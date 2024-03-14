-- * Para estos ejercicios estaré utilizando la base de datos Northwind

use Northwind;

-- ? Buscar Productos por Nombre:

-- ? Utiliza LIKE para buscar productos cuyo nombre contenga la palabra "to" en la tabla Products.

SELECT * FROM Products WHERE ProductName LIKE '%to%';

-- ? Buscar Empleados por Apellido:

-- ? Utiliza LIKE para buscar empleados cuyo apellido comience con "D" en la tabla Employees.

SELECT * FROM Employees WHERE LastName LIKE 'D%';

-- ? Buscar Proveedores por Nombre:

-- ? Utiliza LIKE para buscar empleados cuyo nombre termine con "d" en la tabla Employees.

SELECT * FROM Suppliers WHERE ContactName LIKE '%d';