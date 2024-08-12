# SQL UNIQUE CONSTRAINT

La restricción (`UNIQUE`) de SQL se usa para asegurar que todos los valores en una columna de una tabla sean diferentes.

Tanto la restricción `UNIQUE` como `PRIMARY KEY` garantizan que los datos para una columna de una tabla sean diferentes. 
Pero solo se puede tener un `PRIMARY KEY` por tabla y tantos `UNIQUE` como sean necesarios

## Sintaxis

Para añadir restricción de tipo `UNIQUE` a los campos de una tabla SQL:

```
CREATE TABLE table_name (
    columna1 tipo_dato UNIQUE,
    columna2 tipo_dato UNIQUE,
    columna3 tipo_dato UNIQUE,
   ....
);
```

### Ejemplo

```
CREATE TABLE software (
    id_software UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    id_device UNIQUEIDENTIFIER,
    software_version TEXT UNIQUE,
    rommon_version VARCHAR(20) UNIQUE,
    FOREIGN KEY (id_device) REFERENCES devices(id_device)
);
```