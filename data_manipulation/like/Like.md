# SQL LIKE OPERATOR

El operador `LIKE` se usa en conjunto de la claúsula WHERE para buscar patrones específicos en una columna

Este operador funciona con dos comodínes:

- El signo de porcentaje `%`: Representa cualquier número de caracteres
- El signo de guión bajo `_`: Representa un único caracter.

## Sintaxis

Cuando se desea obtener todos los registros que comienzan con una letra:

```
SELECT * FROM nombre_tabla WHERE nombre_columna LIKE 'a%';
```

Cuando se desea obtener todos los registros que comienzan con una letra, despúes tienen un caracter que se desconoce y continuan con otros caracteres

```
SELECT * FROM nombre_tabla WHERE nombre_columna LIKE 'a_eri__';
```

En este ejemplo, se desea buscar los registros que comienzan con la letra 'a', después sigue un caracter comodín, sigue 'eri' y termina con dos caracteres más.

Estos dos comodínes se pueden ocupar en conjunto por ejemplo, todos los clientes que en la posición 2 de su nombre tienen una r:

```
SELECT * FROM Customer WHERE CustomerName LIKE '_r%'
```