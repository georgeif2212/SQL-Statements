# SQL PRIMARY KEY CONSTRAINT

La restricción (`PRIMARY KEY`) de SQL Server se usa para identificar cada registro de una tabla.

Una `PRIMARY KEY` debe contener valores únicos y no pueden ser de tipo `NULL`.
La `PRIMARY KEY` puede consistir de una única columna o de varias y una tabla solo puede tener una `PRIMARY KEY`

## Sintaxis

Para añadir restricción de tipo `PRIMARY KEY` a un campo de una tabla SQL:

```
CREATE TABLE table_name (
    columna1 tipo_dato PRIMARY KEY,
    columna2 tipo_dato,
    columna3 tipo_dato,
   ....
);
```

### Ejemplo

```
CREATE TABLE arp (
    id_arp UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    id_device UNIQUEIDENTIFIER,
    ip_address VARCHAR(15),
    hardware_type VARCHAR(50),
    mac_address VARCHAR(17),
    datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_device) REFERENCES devices(id_device)
);
```

## Sintaxis para crear un `PRIMARY KEY` hecho de múltiples columnas

En el siguiente ejemplo, el `PRIMARY KEY` se forma del `ID` y el `LAST NAME`

```
CREATE TABLE students (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_student PRIMARY KEY (ID,LastName)
);
```

El crear una `PRIMARY KEY` compuesta, no significa que la tabla tendrá una columna con la combinación de sus valores. Para hacer consultas hay que usar la clausula `WHERE` con tantos operadores `AND` sea necesario para tener la combinación de columnas que coinicide con nuestra búsqueda.