-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE AdventureWorksDW2022

-- ? Contar la Cantidad de Empleados:

-- ? Obtener la cantidad total de empleados en la tabla DimEmployee.

SELECT COUNT(*) AS EmployeeNumber FROM DimEmployee;

--Contar la Cantidad de Clientes que tienen 3 carros o más:

SELECT
    COUNT(*) AS CustomerWith3OrMoreCars
FROM DimCustomer
WHERE NumberCarsOwned >= 3;

-- Contar la Cantidad de Empleados que ingresaron después de '2008-10-10':

SELECT COUNT(*) FROM DimEmployee WHERE HireDate > '2008-10-10'