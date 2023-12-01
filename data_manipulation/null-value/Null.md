# SQL NULL VALUE

Cuando en algún campo de alguna tabla de una base de datos contiene el valor `NULL` se dice el campo  no tiene valor asignado.

Muchas veces, las tablas de las bases de datos se diseñan para que algunos campos sean opcionales, es por eso que es posible modificar o insertar nuevos registros sin darle valor a esos campos, resultando en un valor `NULL`.

## Sintaxis

Para visualizar los registros que contienen valores `NULL` no se pueden utilizar los operadores `=`, `<`, `>` o `<>`, en lugar de eso se utiliza `IS NULL` o `IS NOT NULL`.

Por ejemplo: 

`SELECT * FROM nombre_tabla WHERE nombre_columa IS NULL;`

Ó:

`SELECT * FROM nombre_tabla WHERE nombre_columa IS NOT NULL;`

## INSERT OR UPDATE STATEMENT

Como mencioné, este valor se coloca por default cuando un valor no es asignado pero también se puede utilizar de manera manual con el insert o cuando se desea actualizar un campo y no darle ningún valor, por ejemplo:

`INSERT INTO Customers (CustomerID, CompanyName, Region)
VALUES ('NEWCUST', 'New Company', NULL);`

`UPDATE Customers
SET Region = NULL
WHERE CustomerID = 'ALFKI';`