SELECT
	LIBRO.NRO_LIBRO,
	LIBRO.TITULO,
	COPIAS.NRO_COPIA,
	PRESTAMO.F_PREST

FROM LIBRO
LEFT JOIN COPIAS ON LIBRO.NRO_LIBRO = COPIAS.NRO_LIBRO
LEFT JOIN PRESTAMO ON COPIAS.NRO_LIBRO = PRESTAMO.NRO_LIBRO AND COPIAS.NRO_COPIA = PRESTAMO.NRO_COPIA