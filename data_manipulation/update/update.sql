-- * Para estos ejercicios estaré utilizando la base de datos AdventureWorksDW

USE AdventureWorksDW2022;

-- Active: 1697852858102@@127.0.0.1@3306

-- ? Actualizar el Precio de todos los Productos:

-- ? Incrementa en un 10% el precio (ListPrice) de todos los productos en la tabla DimProduct.

UPDATE DimProduct SET ListPrice = ListPrice * 1.1;