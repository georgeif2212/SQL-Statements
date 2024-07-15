# SQL CASE Expression

La expresión `CASE` funciona como el clásico `IF-ELSE` de los lenguajes de programación. 

Esta expresión retorna valores cuando la primer condición coincide. En el caso de que ninguna condición sea verdadera, la expresión retornará `NULL`.

## Sintaxis

```
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
```

## Ejemplo

```
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;
```