-- * En estos ejercicios estaré trabajando con la base de datos AdventureWorksDW2022

use AdventureWorksDW2022;

-- ? Buscar Productos por Nombre que Comienzan con "M":

-- ? Utiliza el carácter comodín % para buscar productos cuyo nombre comience con la letra "M" en la tabla DimProduct.

SELECT * FROM DimProduct WHERE EnglishProductName LIKE 'M%'

-- ? Buscar Empleados por Apellido que Comience con "J","H", O

-- ? Utiliza [] para buscar empleados cuyo apellido comience con "JOH"

SELECT * FROM DimEmployee WHERE LastName LIKE '[Joh]%';

-- ? Buscar Productos por Nombre que Contenga "Crank":

SELECT * FROM DimProduct WHERE EnglishProductName LIKE '%Crank%';