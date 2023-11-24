-- En estos ejercicios estaré trabajando con la base de datos Northwind

use Northwind;

--Consulta Básica:

--Muestra todos los registros de la tabla Customers.

select * from dbo.Customers;

--Muestra la ciudad de los registros de la tabla Employees.

select City from dbo.Employees;

--Muestra los diferentes valores del campo ciudad de los registros de la tabla Employees.

select distinct City from dbo.Employees;