# SQL ALTER TABLE Statement

La sentencia `ALTER TABLE` se usa para añadir, eliminar o modificar columnas de una tabla existente.

También se utiliza para añadir o eliminar `CONSTRAINTS` (restricciones) en una tabla existente.

## ALTER TABLE para añadir una columna

### Sintaxis

Para añadir una columna en una tabla de una base de datos:

```
ALTER TABLE nombre_tabla 
ADD nombre_columna tipo_dato;
```

#### Ejemplo

```
ALTER TABLE Students
ADD phone_number;
```

## ALTER TABLE para eliminar una columna

### Sintaxis

Para eliminar una columna en una tabla de una base de datos:

```
ALTER TABLE nombre_tabla 
DROP nombre_columna;
```

#### Ejemplo

```
ALTER TABLE Students 
DROP phone_number;
```

## ALTER TABLE para renombrar una columna

### Sintaxis

Para renombrar una columna en una tabla de una base de datos:

```
EXEC sp_rename 'nombre_tabla.viejo_nombre_columna',  'nuevo_nombre_columna', 'COLUMN';
```

#### Ejemplo

```
EXEC sp_rename 'Students.gmail',  'email', 'COLUMN';

```