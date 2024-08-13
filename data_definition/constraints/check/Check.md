# SQL CHECK CONSTRAINT

La restricción (`CHECK`) de SQL Server se usa para limitar los valores que se pueden guardar en una columna de una tabla.

Un `CHECK` es una restricción que solo acepta ciertos valores para la columna. Es como si se tuviera una sentencia IF al momento de insertar valores.

## Sintaxis

Para añadir restricción de tipo `CHECK` a un campo de una tabla SQL:

```
CREATE TABLE table_name (
    columna1 tipo_dato PRIMARY KEY,
    columna2 tipo_dato,
    columna3 tipo_dato,
    ...
    CHECK (columna3>=10)
    FOREIGN KEY (columna2) REFERENCES tabla2(primaria_tabla2)
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
    CHECK (ip_addres!='192.168.122.202')
    FOREIGN KEY (id_device) REFERENCES devices(id_device)
);
```