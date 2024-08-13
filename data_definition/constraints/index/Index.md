# SQL CREATE INDEX STATEMENT

La sentencia `CREATE INDEX` de SQL Server se usa para crear índices en las tablas.

Se utilizan para extraer información de una base de datos de manera más rápida. Estos índices no son visibles, simplemente se utilizan para acelerar las consultas y búsquedas.

## Sintaxis

Esta sintaxis sirve para crear un índice permitiendo valores duplicados

```
CREATE INDEX index_name
ON tabla (columna1, columna2, ...);
```

### Ejemplo

```
CREATE INDEX indx_name
ON students (name);
```

## Sintaxis `UNIQUE`

Esta sintaxis sirve para crear un índice sin permitir valores duplicados

```
CREATE UNIQUE INDEX index_name
ON tabla (columna1, columna2, ...);
```

### Ejemplo

```
CREATE UNIQUE INDEX indx_name
ON students (name);
```

# DROP INDEX

Para eliminar un índice en SQL Server se utiliza:

```
DROP INDEX table_name.index_name;
```
