# Introducción 
## ¿Qué es SQL?
SQL (Structured Query Language) es un lenguaje de programación diseñado para almacenar, manipular y gestionar datos en bases de datos relacionales (RDBMSS).
SQL permite crear bases de datos propias, así como la recuperación, actualización, insertación y eliminación de registros (información)  de manera eficiente. 

## RDBMS
**RDBMS** signifa Sistema de Gestión de Bases de Datos Relacionales y es la base de SQL, en donde los datos se almacenan en objetos de bases de datos llamados tablas.
Una tabla es una colección de entradas de datos relacionados formados en columnas y filas.

## SQL Statements
Las acciones que se necesitan realizar en una base de datos son hechas con **SQL Statements**, los cuales consisten en palabras clave que son fáciles 
de entender, algunos ejemplos son:
- `CREATE DATABASE`
- **CREATE TABLE**
- **SELECT**
- **UPDATE**
- **DELETE**
- **INSERT INTO**
- **DROP TABLE**

## Database Tables
Una base de datos contiene 1 o muchas tablas de datos. Cada tabla se define con un nombre relacionado al tipo de información que estará almacenando
(ejemplo: Users, que contiene información de los usuarios) en filas con datos. Cada tabla contiene registros que se refieren a las filas con datos,
puede tener distinto número de columnas con valores diferentes (ejemplo: Users contiene las columnas: nombre, email, contraseña, telefono).

## **EXTRA**
Es importante saber que las palabras clave de SQL no son sensibles a las mayúsculas, por lo que un "update" equivale a un "Update" o "uPdaTE". Además, 
dependiendo el sistema y entorno en el que se encuentre SQL requiere un punto y coma ";" al final de cada SQL Statement
