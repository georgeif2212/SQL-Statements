# SQL ALIASES

Los `ALIAS` en SQL permiten darle un nombre temporal a una tabla o a una columna.

Un `ALIAS` solamente existe durante una consulta, es decir, el nombre desaparece una vez que se acaba la conuslta. Normalmente se usan para que los nombres de las columnas sean más legibles.

Un `ALIAS` se crea a través de la palabra clave `AS`.

## Sintaxis para usar con una columna

```
SELECT nombre_columna AS nombre_alias FROM nombre_tabla;
```

Aunque se recomienda el uso de `AS` para tener una sintaxis más legible, se puede omitir la palabra clave `AS`:

```
SELECT nombre_columna nombre_alias FROM nombre_tabla;
```

## Sintaxis para usar con una tabla

```
SELECT nombres_columnas|* FROM nombre_tabla AS nombre_alias;
```
