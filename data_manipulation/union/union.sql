-- * Para estos ejercicios estaré utilizando la base de datos Northwind

USE
    Northwind -- ? Listar Nombres de Clientes y Empleados:
    -- ? Combina los teléfonos de clientes de la tabla Customers con los teléfonos de empleados
    -- ? de la tabla Employees. Asegúrate de incluir una columna adicional para identificar
    -- ? si es un cliente o un empleado.

SELECT
    ContactName AS Name,
    'Customer' AS Type
FROM Customers
UNION
SELECT
    CONCAT(FirstName, ' ', LastName),
    'Employee'
FROM Employees;

-- ? Mostrar Nombres de Productos y Categorías:
-- ? Combina los nombres de productos de la tabla Products con las categorías de la
-- ? tabla Categories. Añade una columna extra para indicar la fuente de los datos.

SELECT
    ProductName AS Name,
    'Product' AS Type
FROM Products
UNION
SELECT
    CategoryName,
    'Category'
FROM Categories;