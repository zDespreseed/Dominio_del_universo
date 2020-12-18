SELECT 
	cliente.nombres_C, cliente.apellidos_c , COUNT(historial_clinico.ci_cliente) AS Total
FROM 
	cliente
	inner join historial_clinico on cliente.ci_cliente = historial_clinico.ci_cliente
GROUP BY   cliente.nombres_c, cliente.apellidos_c