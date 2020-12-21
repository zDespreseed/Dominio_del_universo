SELECT 
	mascotas.nombre,
	age(mascotas.fecha_nac) as edad
FROM 
	mascotas
	inner join historial_clinico on mascotas.id_mascotas= historial_clinico.id_mascotas
WHERE 
	 mascotas.esterilizado = 'true'and
	 (extract(year from historial_clinico.fecha_visita)= 2020)
GROUP BY  mascotas.nombre, mascotas.fecha_nac