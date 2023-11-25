# WHERE

La clausula **WHERE** es usada para filtrar los registros que provienen de alguna tabla de una base de datos.

Se usa para extraer solamente los registros que cumplan con alguna condición específica. Esta clausula no es únicamente usada en las declaraciones **SELECT**, también se usa declaraciones **UPDATE**, **DELETE**, entre otras.


## Sintaxis

Cuando deseas obtener obtener todos los campos de una tabla que coincidan con una condición debes:

- SELECT * FROM *nombre_tabla* WHERE *condition*

Cuando se desea hacer consultas en donde la condición sea un valor textual, se deben incluir comillas:

- SELECT * FROM *dbo.Album* WHERE *Title* = *'Big Ones'*

Cuando la consulta incluye una condición con valor numérico no son necesarias las comillas:

- SELECT * FROM *dbo.Album* WHERE *AlbumId* = *5*;


