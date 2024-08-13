# SQL PRIMARY KEY ON ALTER TABLE Statement

Para crear una restricción `PRIMARY KEY` una vez que la tabla ya ha sido creada, se debe usar la sentencia `ALTER TABLE`.

## Sintaxis

```
ALTER TABLE tabla
ADD PRIMARY KEY (ID);
```

### Ejemplo

```
ALTER TABLE Students
ADD PRIMARY KEY (id_Student);
```

## Sintaxis para añadir `PRIMARY KEY` compuesta

```
ALTER TABLE nombre_tabla
ADD CONSTRAINT pk PRIMARY KEY (columna1,columna2);
```

#### Ejemplo

```
ALTER TABLE students
ADD CONSTRAINT pk PRIMARY KEY (id,last_name);
```
