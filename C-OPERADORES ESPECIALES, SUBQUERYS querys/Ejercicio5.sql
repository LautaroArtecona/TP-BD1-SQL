SELECT
	NRO_LIBRO,
	TITULO,
	PRECIO_ORI
FROM LIBRO
WHERE PRECIO_ORI > ALL (SELECT PRECIO_ORI FROM LIBRO WHERE TIPO = 'NO')

/* EL ENUNCIADO PIDE COMPARAR CON CADA UNO PERO TAMBIEN SE PODRIA HACER ASI

WHERE PRECIO_ORI > (SELECT MAX(PRECIO_ORI) FROM LIBRO WHERE TIPO = 'NO')

YA QUE SOLO SERIA NECESARIO COMPARAR CON EL MAS ALTO DEL TIPO NOVELA
*/