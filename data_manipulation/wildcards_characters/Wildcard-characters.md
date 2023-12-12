# SQL WILDCARD CHARACTERS

Un `wildcard character` o un `carácter comodín` es un carácter que se usa para sustituir uno o varios carácteres en una cadena de texto

## Wildcard characters

- `%`: Representa 0 o muchos caracteres
- `_`: Representa un único carácter
- `[]`: Representa cualquier carácter entre corchetes
- `^` Representa cualquier carácter que no esté entre paréntesis
- `-` Representa cualquier carácter dentro del rango especificado 
- `{}` Representa cualquier carácter de escape

### Sintaxis

#### Signo de porcentaje: `%`

Retorna todos los registros que terminan con uno o varios carácteres:

````
SELECT * FROM Customers WHERE CustomerName LIKE '%a';
````

Retorna todos los registros que contienen un patrón de carácteres:

````
SELECT * FROM Customers WHERE CustomerName LIKE '%ol%';
````
#### Signo de guión bajo: `_`

Representa un único carácter:

```
SELECT * FROM products WHERE name LIKE '_opa'
```

Otro ejemplo donde se conocen más carácteres de un nombre sería:

````
SELECT * FROM products WHERE name LIKE '_o_p__';
````

Por cada guion bajo significa un carácter.

#### Signo de corchetes: `[]`

Este comodín se usa para retornar cualquier registro que cumpla los carácteres entre corchetes, por ejemplo:

```
SELECT * FROM MiTabla WHERE nombre LIKE '[AB]%'
```
En este ejemplo se indica que el primer carácter puede ser una A o una B y después pueden seguir otros carácteres

##### Signo de guion `-`

Este comodín se utiliza dentro de los corchetes para específicar un rango, por ejemplo

```
SELECT * FROM MiTabla WHERE nombre LIKE '[a-e]%'
```

Aquí se dice que el nombre comience con las letras que están entre a y e, (a, b, c, d, e)

#### Combinar comodínes

```
SELECT * FROM Empleados WHERE Nombre LIKE '%[a_]t%'
```
En este ejemplo, `%[a_]t%` significa que la cadena debe contener cualquier carácter seguido por 'a', seguido por cualquier carácter (representado por _), y finalmente seguido por 't'. Esta consulta devolverá todos los registros donde el nombre contiene una letra 'a', seguida por un solo carácter y luego una 't'.


