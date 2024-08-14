# SQL `AUTO INCREMENT` Field

El campo `AUTO INCREMENT` permite generar un número único automáticamente cada que un nuevo registro es insertado en una tabla.

Normalmente se usa este campo como `PRIMARY KEY`.
Al realizar inserciones a una tabla con este campo auto-incrementable, en este campo no se le debe asignar un valor.

## Sintaxis

Con la palabra reservada `IDENTITY` se puede definir que la/s columnas de una tabla sean auto incrementables. 

```
CREATE TABLE table_name (
    columna1 tipo_dato IDENTITY(1,1) UNIQUE,
    columna2 tipo_dato UNIQUE,
    columna3 tipo_dato UNIQUE,
   ....
);
```

En el caso superior, el primer uno quiere decir el valor inicial será de 1 y el segundo 1 quiere decir que ser incrementará en uno en uno.

Si se desea que inicie en 14 y que se incremente de dos en dos, se vería así:

<center> 

`IDENTITY(14, 2)` </center>

### Ejemplo

```
CREATE TABLE software (
    id_software UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    id_device UNIQUEIDENTIFIER,
    software_version TEXT UNIQUE,
    rommon_version VARCHAR(20) UNIQUE,
    auto_incrementable int IDENTITY(1,1)
    FOREIGN KEY (id_device) REFERENCES devices(id_device)
);
```

### Ejemplo de inserción

```
INSERT INTO software (id_device,software_version,rommon_version)
VALUES ('3125324gdfs','CISCO',17.4);
```
