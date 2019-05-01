use Libreria
alter authorization on database::Libreria to sa
/*1)	Catálogo de libros: Desarrollar una consulta la tabla libros, que muestre el nombre de género, el nombre de la editorial y los autores.

2)	Misma consulta que 1) pero filtrando por un género.

3)	Misma consulta que 1) pero filtrando por parte del nombre del libro.

4)	Misma consulta que 1) pero filtrando por nombre de la editorial.

5)	Misma consulta que 1) pero filtrando por un nombre del autor.

6)	Mostrar por cada nombre de editorial, los nombres de los libros, ordenado por nombre de editorial y nombre del libro.
*/
SELECT * from Libro
SELECT * from Editorial
SELECT * from Autor
SELECT * from Genero

--1)
SELECT Libro.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libro.AñoPublicacion as 'Año',
	   Editorial.NombreEditorial as Editorial,
	   Genero.Descripcion as Género	    
FROM Libro
INNER JOIN Genero on Libro.IDGenero = Genero.IDGenero
INNER JOIN Editorial on Libro.IDEditorial = Editorial.IDEditorial
INNER JOIN AutorLibro on AutorLibro.IDLibro = Libro.IDLibro
INNER JOIN Autor on AutorLibro.IDAutor = Autor.IDAutor
order by Libro.IDLibro

--2) Filtrando por un género
SELECT Libro.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libro.AñoPublicacion as 'Año',
	   Editorial.NombreEditorial as Editorial,
	   Genero.Descripcion as Género	    
FROM Libro
INNER JOIN Genero on Libro.IDGenero = Genero.IDGenero
INNER JOIN Editorial on Libro.IDEditorial = Editorial.IDEditorial
INNER JOIN AutorLibro on AutorLibro.IDLibro = Libro.IDLibro
INNER JOIN Autor on AutorLibro.IDAutor = Autor.IDAutor
WHERE Libro.IDGenero = 3 

--3) Filtrando por parte de nombre de un libro
SELECT Libro.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libro.AñoPublicacion as 'Año',
	   Editorial.NombreEditorial as Editorial,
	   Genero.Descripcion as Género	    
FROM Libro
INNER JOIN Genero on Libro.IDGenero = Genero.IDGenero
INNER JOIN Editorial on Libro.IDEditorial = Editorial.IDEditorial
INNER JOIN AutorLibro on AutorLibro.IDLibro = Libro.IDLibro
INNER JOIN Autor on AutorLibro.IDAutor = Autor.IDAutor
WHERE Libro.Titulo LIKE '%de%' 

--4) Filtrando por nombre de la editorial
SELECT Libro.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libro.AñoPublicacion as 'Año',
	   Editorial.NombreEditorial as Editorial,
	   Genero.Descripcion as Género	    
FROM Libro
INNER JOIN Genero on Libro.IDGenero = Genero.IDGenero
INNER JOIN Editorial on Libro.IDEditorial = Editorial.IDEditorial
INNER JOIN AutorLibro on AutorLibro.IDLibro = Libro.IDLibro
INNER JOIN Autor on AutorLibro.IDAutor = Autor.IDAutor
WHERE Editorial.NombreEditorial = 'Salamanca'

--5) Filtrando por un nombre del autor
SELECT Libro.Titulo as Título,
	   Autor.Apellido+', '+Autor.Nombre as Autor,
	   Libro.AñoPublicacion as 'Año',
	   Editorial.NombreEditorial as Editorial,
	   Genero.Descripcion as Género	    
FROM Libro
INNER JOIN Genero on Libro.IDGenero = Genero.IDGenero
INNER JOIN Editorial on Libro.IDEditorial = Editorial.IDEditorial
INNER JOIN AutorLibro on AutorLibro.IDLibro = Libro.IDLibro
INNER JOIN Autor on AutorLibro.IDAutor = Autor.IDAutor
WHERE Autor.Apellido = 'Poe'

--6) Mostrar editorial y libros. Ordenando por editorial y luego libros
SELECT Editorial.NombreEditorial as Editorial,
	   Libro.Titulo as Título
FROM Libro
INNER JOIN Editorial on Libros.IDEditorial = Editorial.IDEditorial
ORDER BY Editorial.NombreEditorial, Libros.Titulo 
