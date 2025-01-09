SELECT 
	TIPO,
	SUM(PRECIO_ORI) AS TOTAL_PRECIOS_ORIGINALES,
	AVG(PRECIO_ACT) AS PROMEDIO_PRECIOS_ACTUALES
FROM LIBRO
WHERE EDICION BETWEEN 1946 AND 1975
GROUP BY TIPO