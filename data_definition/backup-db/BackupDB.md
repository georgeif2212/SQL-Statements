# SQL BACKUP DATABASE Statement

La sentencia `BACKUP DATABASE` se usa para crear un respaldo completo de una base de datos existente.

## Sintaxis

Para crear un respaldo de la base de datos:

```
BACKUP DATABASE nombre_db
TO DISK = 'ruta_de_guardado';
```

### Ejemplo

```
BACKUP DATABASE alumnos
TO DISK = '/Escritorio/Documentos/...';
```

# SQL BACKUP WITH DIFFERENTIAL Statement

Cuando se realiza con diferencial, solo se respalda las partes de la base de datos que han cambiado desde el último respaldo completo.

## Sintaxis

Para crear un respaldo parcial de los datos no respaldados:

```
BACKUP DATABASE nombre_db
TO DISK = 'ruta_de_guardado'
WITH DIFFERENTIAL;
```

### Ejemplo

```
BACKUP DATABASE alumnos
TO DISK = '/Escritorio/Documentos/...';
WITH DIFFERENTIAL;
```
