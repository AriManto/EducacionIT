use pubs
/*
Mostrar todos los puestos de trabajo y los que corresponden
a los empleados
También mostrar el puntaje de nivel del empleado
y el puntaje mínimo del puesto
*/
select
ISNULL(e.lname,'') as Empleado,
j.job_desc as Puesto,
ISNULL(e.job_lvl,0) as NivelEmpleado,
j.min_lvl as NivelMinimo,
j.max_lvl as NivelMaximo,
/*CASE WHEN e.job_lvl>  j.min_lvl
	 THEN 'Superó mínimo'
	 ELSE 'No superó'
END AS Calificacion*/
IIF (e.job_lvl>j.min_lvl, 'Superó mínimo', 'No superó') as Calificacion

from employee as e right join jobs as j on j.job_id = e.job_id
order by Empleado
