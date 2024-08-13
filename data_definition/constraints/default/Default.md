# SQL DEFAULT CONSTRAINT

La restricción (`DEFAULT`) de SQL Server se usa asignar valores por defecto si ningún otro valor es especificado.

## Sintaxis

Para añadir restricción de tipo `DEFAULT` a un campo de una tabla SQL:

```
CREATE TABLE table_name (
    columna1 tipo_dato PRIMARY KEY,
    columna2 tipo_dato,
    columna3 tipo_dato DEFAULT 'ValorPorDefecto',
    ...
    FOREIGN KEY (columna2) REFERENCES tabla2(primaria_tabla2)
);
```

### Ejemplo

```
CREATE TABLE arp (
    id_arp UNIQUEIDENTIFIER FOREIGN KEY DEFAULT NEWID(),
    id_device UNIQUEIDENTIFIER,
    ip_address VARCHAR(15),
    hardware_type VARCHAR(50) DEFAULT 'Cisco Value',
    mac_address VARCHAR(17),
    datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_device) REFERENCES devices(id_device)
);
```