# SQL CONSTRAINTS

Las restricciones (`CONSTRAINTS`) de SQL se usan para especificar reglas para los datos en una tabla de una base de datos.

Los `CONSTRAINTS` pueden ser declarados cuando la tabla es creada con [CREATE TABLE](../create-table/CreateTable.md) o una vez ha sido creada con [ALTER TABLE](../alter-table/AlterTable.md)

## Sintaxis

Para añadir restricciones a los datos de una tabla SQL:

```
CREATE TABLE table_name (
    columna1 tipo_dato constraint,
    columna2 tipo_dato constraint,
    columna3 tipo_dato constraint,
   ....
);
```

Los `CONSTRAINTS` sirven para limitar el tipo de dato que puede haber en una tabla. Esto asegura la confiabilidad y precisión de los datos.

| Constraint | Descripción |
|--|--|
| [Not Null](./not-null/NotNull.md) | Se asegura que la columna no tenga un valor `NULL`. |
| [Unique](./unique/Unique.md) | Se asegura que los valores se han diferentes y no haya ni uno repetido.|
| [Primary Key](./primary-key/PrimaryKey.md) |Es una combinación de `NOT NULL` y `UNIQUE`. Sirve para identificar un registro en una tabla.|
| [Foreign Key](./foreign-key/ForeignKey.md) | Previene acciones que destruirían enlaces entre tablas.
| [Check](./check/Check.md) | Se asegura que los valores de una columna cumplan con una condición.
| [Default](./default/Default.md) | Estable un valor por defecto en caso de que no reciba ningún valor.
| [Create Index](./index/Index.md) | Se usa para crear y extraer datos de la base de datos de una manera rápida.


