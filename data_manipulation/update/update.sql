-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE AdventureWorksDW2022;

-- ? Actualizar el Precio de todos los Productos:

-- ? Incrementa en un 10% el precio (ListPrice) de todos los productos en la tabla DimProduct.

UPDATE DimProduct SET ListPrice = ListPrice * 1.1;

-- ? Actualizar el Salario Base de un empleado:

-- ? Aumenta el salario base (BaseRate) del empleado con ID 89 de la tabla DimEmployee en un 15%.

UPDATE DimEmployee
SET BaseRate = BaseRate * 1.15
WHERE EmployeeKey = 89;

SELECT * FROM DimEmployee WHERE EmployeeKey = 89;

-- ? Actualizar Varios Campos a la Vez:

-- ? Actualiza el correo electrónico y el primer nombre del empleado con ID 12

UPDATE DimEmployee
SET
    FirstName = 'Peter',
    EmailAddress = 'peter123@outlook.com'
WHERE EmployeeKey = 12;

SELECT * FROM DimEmployee WHERE EmployeeKey = 12;