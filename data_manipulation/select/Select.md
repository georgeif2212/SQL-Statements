# SELECT

La declaración **SELECT** es usada para seleccionar datos que provienen de alguna base de datos

En una tabla de una base de datos a cada columna se le denomina **campo** mientras que a cada fila se le dice **registro**

## Sintaxis

Cuando deseas obtener información de campos específicos de una tabla debes:

- SELECT _columna1_, _columna2_, ... FROM *_nombre_tabla_*

En el caso que desees obtener todos los campos de una tabla debes:

- SELECT * FROM *nombre_tabla*

## SELECT DISTINCT

La declaracion **SELECT DISTINCT** se usa para retornar solamente los valores que son distintos o diferentes, ya que dentro de una tabla en una columna puede haber muchos datos duplicados, por lo que muchas veces es útil solo mostrar una **única** vez los datos.

### Sintaxis

- SELECT DISTINCT *column1*, ... FROM *table_name*;