/* Veo los registros de lectores antes de la eliminaci�n
SELECT * FROM LECTOR
WHERE SALARIO < 1000; */

-- Eliminar los lectores con salario menor a $1000
DELETE FROM LECTOR
WHERE SALARIO < 1000;

/* Veo el estado de la tabla LECTOR despu�s de la eliminaci�n
SELECT * FROM LECTOR; */