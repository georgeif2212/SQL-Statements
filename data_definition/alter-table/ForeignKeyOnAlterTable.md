# SQL FOREIGN KEY ON ALTER TABLE Statement

Para crear una restricción `FOREIGN KEY` una vez que la tabla ya ha sido creada, se debe usar la sentencia `ALTER TABLE`.

## Sintaxis

```
ALTER TABLE tabla
ADD FOREIGN KEY (ID);
```

### Ejemplo

```
ALTER TABLE Students
ADD FOREIGN KEY (id_Student);
```

## Sintaxis para eliminar `FOREIGN KEY`

```
ALTER TABLE nombre_tabla
DROP FOREIGN KEY columna;
```

#### Ejemplo

```
ALTER TABLE students
DROP FOREIGN KEY subject;
```
