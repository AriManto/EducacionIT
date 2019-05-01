USE PUBS

--------------------- WHERE, filtro
-- BETWEEN, rango de búsqueda incluyendo los extremos (>=, <=)

SELECT * from publishers


SELECT pub_name, country
	FROM publishers
	WHERE country = 'USA'
	ORDER BY pub_name

SELECT * FROM titles ORDER BY price

SELECT title, price
		FROM titles
		WHERE price BETWEEN 10 AND 20

------------ Between con valores fecha (van como string)
SELECT * FROM sales
	WHERE ord_date BETWEEN '19930524' AND '19930529'  --Formato ISO style para fechas

-- IN coincidencia, incluido en
SELECT pub_name, country
	FROM publishers
	WHERE country IN ('USA', 'France')

SELECT pub_name, country
	FROM publishers
	WHERE country = 'USA' OR country = 'France'

SELECT * from authors WHERE state in ('OR', 'TN', 'UT')

------------ LIKE
SELECT * FROM authors WHERE au_lname LIKE 'B%'

SELECT * FROM titles WHERE title_id LIKE 'BU[1-3]%' -- Los corchetes le brinda un rango numerico

SELECT title FROM titles WHERE price IS null
SELECT title FROM titles WHERE price IS not null

SELECT * FROM sales
SELECT ord_num FROM sales WHERE STOR_ID = '7131' and QTY >= 20


SELECT stor_id, ord_num, ord_date, qty, title_id 
FROM sales
ORDER BY qty asc, title_id asc

SELECT TOP 10* FROM titles ORDER BY price desc

SELECT TOP 10 PERCENT * FROM titles ORDER BY price desc

SELECT * FROM sales order by ord_date

SELECT COUNT(*) AS CantVentas1994 FROM sales WHERE YEAR(ord_date)=1994

SELECT *, YEAR(ord_date) as Anio, qty, title_id from sales order by ord_date

select * from sales order by title_id
SELECT COUNT(*) AS CantidadDeVentas from sales where title_id = 'ps2091'
SELECT SUM(qty) AS UnidadesVendidas from sales where title_id = 'ps2091'
SELECT COUNT(title_id) from sales where title_id = 'ps2091'

SELECT COUNT(price) as CantLibrosConPrecio,AVG(price) as Promedio from titles

SELECT sum(price) / count(*) as PromedioCorrecto from titles

select * from titles order by type

select type, count(*) as CantPorCategoria
	from titles
	group by type

select avg(qty), stor_id from sales group by stor_id

select stor_id, title_id, sum(qty)
from sales
group by stor_id, title_id order by stor_id, title_id

select type, count(*) as CantPorCategoria
from titles
group by type
having (count(*) > 1)

select * from titles group by type

/*
1) Mostrar de la tabla sales el promedio de las cantidades (qty) agrupadas por sucursal y libro, que
superen las 20 unidades
2) Mostrar de la tabla sales la suma de las cantidades (qty) agrupadas por sucursal y libro, para
 la sucursal 7067 (stor_id) con suma de cantidades mayor a 20
*/
select stor_id, title_id, qty from sales order by stor_id, title_id

select stor_id as IDLocal, title_id as IDLibro, avg(qty) as PromedioCantidad
from sales
where qty>20
group by stor_id, title_id
order by stor_id
--having avg(qty)>20

select stor_id, title_id, sum(qty)
from sales
group by stor_id, title_id
having stor_id = '7067' and sum(qty)>20