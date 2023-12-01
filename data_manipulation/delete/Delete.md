# SQL DELETE STATEMENT

La sentencia `DELETE` se utiliza para eliminar registros de una tabla.

Hay que ser cuidadoso con esta sentencia porque si no se usa la clausula `WHERE`, todos los registros serán eliminados; De igual forma tener en cuenta que aunque se use el `WHERE` todos los registros que cumplan la condición especificada serán eliminados.

## Sintaxis

```
DELETE FROM nombre_tabla WHERE condition
```

En dado caso que quieras eliminar todos los registros de una tabla, simplemente se hace:

```
DELETE FROM nombre_tabla
```

**¡TEN CUIDADO!**