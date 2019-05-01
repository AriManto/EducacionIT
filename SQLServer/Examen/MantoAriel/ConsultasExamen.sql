use Libreria
alter authorization on database::Libreria to sa
/*1)	Catálogo de libros: Desarrollar una consulta la tabla libros, que muestre el nombre de género, el nombre de la editorial y los autores.

2)	Misma consulta que 1) pero filtrando por un género.

3)	Misma consulta que 1) pero filtrando por parte del nombre del libro.

4)	Misma consulta que 1) pero filtrando por nombre de la editorial.

5)	Misma consulta que 1) pero filtrando por un nombre del autor.

6)	Mostrar por cada nombre de editorial, los nombres de los libros, ordenado por nombre de editorial y nombre del libro.
*/
-- SELECT * from Libros

--1)
SELECT Libros.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libros.AñoPublicacion as 'Año',
	   Editoriales.NombreEditorial as Editorial,
	   Generos.Descripcion as Género	    
FROM Libros
INNER JOIN Generos on Libros.IDGenero = Generos.IDGenero
INNER JOIN Editoriales on Libros.IDEditorial = Editoriales.IDEditorial
INNER JOIN Autor on Libros.IDAutor = Autor.IDAutor

--2) Filtrando por un género
SELECT Libros.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libros.AñoPublicacion as 'Año',
	   Editoriales.NombreEditorial as Editorial,
	   Generos.Descripcion as Género	    
FROM Libros
INNER JOIN Generos on Libros.IDGenero = Generos.IDGenero
INNER JOIN Editoriales on Libros.IDEditorial = Editoriales.IDEditorial
INNER JOIN Autor on Libros.IDAutor = Autor.IDAutor
WHERE Libros.IDGenero = 3 

--3) Filtrando por parte de nombre de un libro
SELECT Libros.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libros.AñoPublicacion as 'Año',
	   Editoriales.NombreEditorial as Editorial,
	   Generos.Descripcion as Género	    
FROM Libros
INNER JOIN Generos on Libros.IDGenero = Generos.IDGenero
INNER JOIN Editoriales on Libros.IDEditorial = Editoriales.IDEditorial
INNER JOIN Autor on Libros.IDAutor = Autor.IDAutor
WHERE Libros.Titulo LIKE '%de%' 

--4) Filtrando por nombre de la editorial
SELECT Libros.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libros.AñoPublicacion as 'Año',
	   Editoriales.NombreEditorial as Editorial,
	   Generos.Descripcion as Género	    
FROM Libros
INNER JOIN Generos on Libros.IDGenero = Generos.IDGenero
INNER JOIN Editoriales on Libros.IDEditorial = Editoriales.IDEditorial
INNER JOIN Autor on Libros.IDAutor = Autor.IDAutor
WHERE Editoriales.NombreEditorial = 'Salamanca'

--5) Filtrando por un nombre del autor
SELECT Libros.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libros.AñoPublicacion as 'Año',
	   Editoriales.NombreEditorial as Editorial,
	   Generos.Descripcion as Género	    
FROM Libros
INNER JOIN Generos on Libros.IDGenero = Generos.IDGenero
INNER JOIN Editoriales on Libros.IDEditorial = Editoriales.IDEditorial
INNER JOIN Autor on Libros.IDAutor = Autor.IDAutor
WHERE Autor.Apellido = 'Poe'

--6) Editorial y libros
SELECT Editoriales.NombreEditorial as Editorial,
	   Libros.Titulo as Título
FROM Libros
INNER JOIN Editoriales on Libros.IDEditorial = Editoriales.IDEditorial
ORDER BY Editoriales.NombreEditorial, Libros.Titulo 


