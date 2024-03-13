# SQL Comments

Los comentarios en SQL se utilizan para explicar partes y secciones de las sentencias SQL, también se ocupan para evitar que se ejecuten secciones del script de SQL.

## Sintaxis

Para hacer comentarios en una sola línea se utiliza `--` o de alguna parte de la línea se usa:

```
-- Devuelve el nombre de los empleados
SELECT name FROM Employee;
```

Para hacer comentario de varias líneas se usa:

```
/* Devuelve todas 
  las columnas  
  de la tabla de empleados */

SELECT * FROM Employees;
```