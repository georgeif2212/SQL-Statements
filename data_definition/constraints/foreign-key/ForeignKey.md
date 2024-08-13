# SQL FOREIGN KEY CONSTRAINT

La restricción (`FOREIGN KEY`) de SQL Server se usa para prevenir acciones que destruirían las relaciones que hay entre las tablas.

Una `FOREIGN KEY` es un campo o varios campos de una tabla que se refieren a `PRIMARY KEY`'s de otras tablas.
La tabla con `FOREIGN KEY` se le conoce como tabla hija mientras que la que contiene la `PRIMARY KEY` se le conoce como tabla padre.

## Sintaxis

Para añadir restricción de tipo `FOREIGN KEY` a un campo de una tabla SQL:

```
CREATE TABLE table_name (
    columna1 tipo_dato PRIMARY KEY,
    foranea tipo_dato,
    columna3 tipo_dato,
   ....
    FOREIGN KEY (foranea) REFERENCES tabla2(primaria_tabla2)
);
```

### Ejemplo

```
CREATE TABLE arp (
    id_arp UNIQUEIDENTIFIER FOREIGN KEY DEFAULT NEWID(),
    id_device UNIQUEIDENTIFIER,
    ip_address VARCHAR(15),
    hardware_type VARCHAR(50),
    mac_address VARCHAR(17),
    datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_device) REFERENCES devices(id_device)
);
```