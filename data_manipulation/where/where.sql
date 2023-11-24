-- * En estos ejercicios estaré trabajando con la base de datos Chinook

use Chinook;

-- ? Filtrar por Valor Específico:

-- ? Muestra todos los registros de la tabla Employee donde la cidad sea "Lethbridge".

SELECT * FROM dbo.Employee WHERE City = 'Lethbridge';

-- ? Filtrar con Operadores Lógicos:

-- ? Muestra todas las canciones de la tabla tracks que tengan una duración superior a 300 segundos

SELECT * FROM TRACK WHERE Milliseconds > 300000;

