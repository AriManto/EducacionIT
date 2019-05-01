USE pubs

-- Todos los registros de editoriales
SELECT * FROM publishers

-- Todos los registros de esas tablas
SELECT * FROM titles
SELECT * FROM authors

-- Columnas especificas de la tabla authors 
SELECT au_lname, au_fname FROM authors
SELECT authors.au_lname, authors.au_fname FROM authors

--Alias de columna, para la salida
SELECT au_lname AS Apellido, au_fname AS Nombre FROM authors

-- Literales. Inventa una columna con ese literal
SELECT au_lname AS Apellido, ' tiene el nombre ', au_fname AS Nombre FROM authors 

-- Literales concatenados
SELECT au_lname + ', ' + au_fname AS ApellydoYNombre FROM authors

-- Distinct
-- Mostrar las ciudades donde viven los autores
SELECT city from authors -- Hay ciudades repetidas
SELECT distinct city from authors -- Ciudades una sola vez, y las ordena

-- Operación con datos numéricos
SELECT
title as NombreLibro,
price as PrecioNeto,
price * 1.21 as PrecioConIVA
from titles

-- Operación con fechas
SELECT
title as NombreLibro,
pubdate as FechaPublicacion,
pubdate + 1 as FechaPublicacionMasUnDia
from titles