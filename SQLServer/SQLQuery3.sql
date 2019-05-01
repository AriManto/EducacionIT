use pubs
/*
Mostrar todos los puestos de trabajo y los que corresponden
a los empleados
Tambi�n mostrar el puntaje de nivel del empleado
y el puntaje m�nimo del puesto
*/
select
ISNULL(e.lname,'') as Empleado,
j.job_desc as Puesto,
ISNULL(e.job_lvl,0) as NivelEmpleado,
j.min_lvl as NivelMinimo,
j.max_lvl as NivelMaximo,
/*CASE WHEN e.job_lvl>  j.min_lvl
	 THEN 'Super� m�nimo'
	 ELSE 'No super�'
END AS Calificacion*/
IIF (e.job_lvl>j.min_lvl, 'Super� m�nimo', 'No super�') as Calificacion

from employee as e right join jobs as j on j.job_id = e.job_id
order by Empleado
