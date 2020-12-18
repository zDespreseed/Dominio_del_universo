SELECT 
	veterinario.nombre_v, veterinario.apellido_v , COUNT(vacunas.ci_veterinario) AS Total
FROM 
	veterinario
	inner join vacunas on vacunas.ci_veterinario = veterinario.ci_veterinario
GROUP BY   veterinario.nombre_v, veterinario.apellido_v