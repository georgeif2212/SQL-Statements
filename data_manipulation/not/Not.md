# SQL NOT OPERATOR

El operador **NOT** se usa en conjunto con otros operadores para dar el resultado opuesto o negativo 
en una consulta


## Sintaxis

Cuando deseas obtener todos los campos de una tabla que no cumplen con una condición

- SELECT * FROM *nombre_tabla* WHERE NOT *condition* 

Por ejemplo:
- SELECT * FROM Invoice WHERE NOT BillingCity = 'Oslo'
