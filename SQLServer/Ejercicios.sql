use AdventureWorks
/*
5) SELECT campos
1) FROM .... JOIN
2) WHERE expresion (v o f)
3) GROUP BY ....
4) HAVING expresion (v o f)
6) ORDER BY
*/
-- Lab distinct
-- Mostrar los diferentes productos vendidos
select distinct ProductID from Sales.SalesOrderDetail

-- Lab union
-- Mostrar todos los productos vendidos y ordenados
/*
select ProductID from Sales.SalesOrderDetail
union all
select ProductID from Production.WorkOrder
*/
-- Mostrar los diferentes productos vendidos y ordenados
select ProductID from Sales.SalesOrderDetail
union
select ProductID from Production.WorkOrder

-- Lab case
--
--

-- Lab funciones
-- 1) Mostrar la fecha más reciente de venta
select MAX(OrderDate) as FechaVenta from Sales.SalesOrderHeader
-- 2) Mostrar el precio más barato de todas las bicicletas
select MIN(ListPrice) as MenorPrecio from Production.Product
where (ListPrice <>0)
-- 3) Mostrar la fecha de nacimiento del empleado más joven
select MAX(BirthDate) as FechaNacimiento from HumanResources.Employee
-- 4) Mostrar el promedio del listado de precios de productos
select AVG(ListPrice) as PromedioPrecios from Production.Product
-- 5) Mostrar la cantidad y el total vendido por productos
select LineTotal from Sales.SalesOrderDetail
select ProductID, 
	sum(OrderQty) as CantidadPedidos,
	sum(LineTotal) as TotalVendido
from Sales.SalesOrderDetail
group by ProductID
order by ProductID

select ProductID, sum(OrderQty) as Cantidad from Sales.SalesOrderDetail
group by ProductID
having ProductID = 710

select ProductID, LineTotal from Sales.SalesOrderDetail
order by ProductID

select ProductID, 
	sum(OrderQty) as CantidadPedidos,
	sum(LineTotal) as TotalVendido,
	UnitPrice as PrecioUnitario,
	UnitPriceDiscount as Descuento
from Sales.SalesOrderDetail
group by ProductID, unitPrice, UnitPriceDiscount
order by ProductID, UnitPriceDiscount desc

select ProductID, unitPrice, specialOfferID from Sales.SalesOrderDetail
order by ProductID