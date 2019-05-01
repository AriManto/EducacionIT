use pubs

select t.title as Libro, t.price as Precio, p.pub_name as Editorial
from titles as t
inner join publishers as p on p.pub_id = t.pub_id


select sa.ord_num as NroPedido, sa.ord_date as FechaPedido,
	st.stor_name as Sucursal from Sales as sa
	inner join Stores as st ON sa.stor_id = st.stor_id

	--sales y stores

select distinct pub_id from titles order by pub_id

select * from publishers order by pub_id
select * from titles
/*
   Mostrar los empleados y las editoriales donde pertenecen (nombres)
*/
select emp_id as ID, 
	   lname+', '+fname as Empleado, 
	   pub_name as Editorial 
from employee inner join publishers on employee.pub_id = publishers.pub_id

select
	title as Libro,
	price as Precio,
	pub_name as Editorial
from titles
right join publishers on titles.pub_id = publishers.pub_id

select
	title as Libro,
	price as Precio,
	pub_name as Editorial
from publishers
right join titles on titles.pub_id = publishers.pub_id

/*
  Mostrar todos los libros existentes y aún los que no 
  se hayan vendido en ninguna sucursal (titles y sales)
*/
select sum(sales.qty) as qty, titles.title 
from titles 
left join sales on sales.title_id = titles.title_id
group by title
order by title

select t.title as Libro, p.pub_name as Editorial
from Titles t
full join publishers p ON p.pub_id = t.pub_id
order by Libro

select t.title as Libro, p.pub_name as Editorial
from Titles t
cross join publishers p
order by Libro

--Ejemplo SELF JOIN 
 -- Mostrar el nombre del empleado y su jefe
 IF OBJECT_ID (N'dbo.Empleado', N'T') IS NOT NULL 
	DROP TABLE Empleado; 
 
CREATE TABLE Empleado
(
empid int primary key,
nombre varchar(50),
jefeid int
)
Insert into Empleado(empid,nombre,jefeid)values (1001,'Juan Perez',null); 
Insert into Empleado(empid,nombre,jefeid)values (1002,'María Lopez',1001);
Insert into Empleado(empid,nombre,jefeid)values (1003,'Josecito',1001);
Insert into Empleado(empid,nombre,jefeid)values (1004,'Sandra Bull',1002);
Insert into Empleado(empid,nombre,jefeid)values (1005,'Andrea Puente',1003);
Insert into Empleado(empid,nombre,jefeid)values (1006,'Mr. Enri',1002);

SELECT * from Empleado;

SELECT e.empid, e.nombre as Emple, j.nombre as Jefe

FROM Empleado e LEFT JOIN Empleado j ON e.jefeid=j.empid;

select fname from employee
union all
select au_fname from authors
