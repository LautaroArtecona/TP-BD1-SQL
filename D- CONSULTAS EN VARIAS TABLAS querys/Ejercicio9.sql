SELECT
	LIBRO.TITULO,
	LECTOR.NOMBRE
FROM PRESTAMO
INNER JOIN LIBRO ON PRESTAMO.NRO_LIBRO = LIBRO.NRO_LIBRO
INNER JOIN LECTOR ON PRESTAMO.NRO_LECTOR = LECTOR.NRO_LECTOR
WHERE PRESTAMO.F_DEVOL IS NULL