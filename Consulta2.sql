SELECT 
	mascotas.nombre , COUNT(vacunas.id_mascotas) AS Total
FROM 
	mascotas
	inner join vacunas on vacunas.id_mascotas = mascotas.id_mascotas
GROUP BY   mascotas.nombre