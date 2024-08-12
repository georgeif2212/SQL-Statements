# SQL NOT NULL CONSTRAINT

La restricción (`NOT NULL`) de SQL se usa para especificar que una columna no debe aceptar valores `NULL`.

Con el fin de que siempre contenga un valor, lo que significa que no se puede crear o modificar un registro sin añadir un valor a este campo.

## Sintaxis

Para añadir restricción de tipo `NOT NULL` a los campos de una tabla SQL:

```
CREATE TABLE table_name (
    columna1 tipo_dato NOT NULL,
    columna2 tipo_dato NOT NULL,
    columna3 tipo_dato NOT NULL,
   ....
);
```

### Ejemplo

```
CREATE TABLE hardware (
    id_hardware UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    id_device UNIQUEIDENTIFIER NOT NULL,
    hw_type VARCHAR(50) NOT NULL,
);
```