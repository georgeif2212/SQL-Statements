# ORDER BY

La palabra clave **ORDER BY** es usada para ordenar los registros de manera ascendente o descendente.


## Sintaxis

Cuando deseas obtener obtener todos los campos de una tabla ordenados ya sea de manera ascendente o descendente se usa:

- SELECT * FROM *table_name* ORDER BY *column* ASC | DESC;

Por ejemplo de manera ascendente:
- SELECT * FROM *Track* ORDER BY *Milliseconds*;

De manera Descendente:
- SELECT * FROM *Track* ORDER BY *Milliseconds* DESC;