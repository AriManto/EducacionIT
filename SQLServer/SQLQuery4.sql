USE [pubs]
GO

INSERT INTO [dbo].[titles]
           ([title_id]
           ,[title]
           ,[type]
           ,[pub_id]
           ,[price]
           ,[advance]
           ,[royalty]
           ,[ytd_sales]
           ,[notes]
           ,[pubdate])
     VALUES
           ('TC1000'
           ,'Chocolate'
           ,'trad_cook'
           ,'0877'
           ,25.00
           ,0
           ,10
           ,0
           ,'El maestro del chocolate'
           ,'20161207')
GO

/*USE [pubs]
GO
CREATE TABLE NuevaSucursal(
	stor_id char(4) NOT NULL,
	stor_name varchar(40) NULL,
	stor_address varchar(40) NULL,
	city varchar(20) NULL,
	state char(2) NULL,
	zip char(5) NULL)
GO

INSERT NuevaSucursal (stor_id, stor_name, stor_address, city, state, zip) VALUES ('7890', 'Sucursal Rosario', 'Calle 1', 'Rosario', 'SF', '1000')
INSERT NuevaSucursal (stor_id, stor_name, stor_address, city, state, zip) VALUES ('1234', 'Sucursal CABA', 'Calle 2', 'CABA', 'BA', '2000')
*/
/*
insert stores
select stor_id, stor_name, stor_address, city, state, zip FROM NuevaSucursal

drop table NuevaSucursal
*/
USE pubs
SELECT title_id as Codigo, title AS Libro,
		price AS PrecioNeto,
		(price *1.21) as PrecioConIVA
INTO #ListaPrecios
FROM titles

select * from #ListaPrecios

insert Publishers (pub_id, pub_name)
VALUES ('9934', 'Cúspide')
select * from publishers where pub_id = '9934'
/*
select * into SalesPrueba from sales
select * from SalesPrueba
delete from SalesPrueba where YEAR(ord_date) = 1992
select * from SalesPrueba

truncate table SalesPrueba
drop table SalesPrueba
*/
/*
--DELETE CON JOIN. Osea borra los registros de una tabla, cumpliendo la condición de relación con la otra tabla
select * from titles
select * from titleauthor
delete from titleauthor
from titles as T
inner join titleauthor as TA
on T.title_id = TA.title_id
where pubdate='19910609' --YYYYMMDD
*/
/*
select * from titles
update titles set price = (price * 1.21)
select * from titles
*/
/*
update titles
set price = price + 2
from titles as T
inner join Publishers as P
on T.pub_id = P.pub_id
where P.state = 'CA'
*/
