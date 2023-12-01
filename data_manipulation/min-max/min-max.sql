-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE AdventureWorksDW2022;

-- ? Obtener el Precio Mínimo de Productos:

-- ? Obtener el precio más bajo (ListPrice) de la tabla DimProduct

-- ? que pertenezca a la subcategoría con id 2.

SELECT MIN(ListPrice)
FROM DimProduct
WHERE ProductSubcategoryKey = 2;