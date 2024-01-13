# SQL RIGHT JOIN KEYWORD

La palabra clave `RIGHT JOIN` se utiliza para obtener todos los registros de la tabla de la derecha (segunda tabla declarada) y los registros coincidentes de la tabla de la izquierda (primer tabla declarada).
## Sintaxis 

```
SELECT column_name(s) FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;
```

Supongamos que queremos obtener una lista de todas las facturas junto con la información del cliente, incluso aquellas facturas que no tienen un cliente asociado.

- Customers es la tabla de la izquierda.
- Invoices es la tabla de la derecha.
- Customers.CustomerID = Invoices.CustomerID establece la condición de unión basada en la clave primaria y foránea.

```
SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Invoices.InvoiceID,
    Invoices.InvoiceDate
FROM Customers
RIGHT JOIN Invoices ON Customers.CustomerID = Invoices.CustomerID;
```

La consulta devuelve una lista de facturas con la información del cliente correspondiente, y si no hay un cliente asociado a una factura, los campos del cliente serán NULL.

Se debe entender que `LEFT JOIN` y `RIGHT JOIN` funcionan de la misma manera y se puede lograr el mismo resultado cambiando el orden de las tablas.