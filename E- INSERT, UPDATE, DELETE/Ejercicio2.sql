/* Veo el precio actual antes de la actualización
SELECT NRO_LIBRO, TITULO, PRECIO_ACT
FROM LIBRO
WHERE TITULO = 'LAS MIL Y UNA NOCHES'; */

-- Actualizar el precio actual del libro
UPDATE LIBRO
SET PRECIO_ACT = 35.35
WHERE TITULO = 'LAS MIL Y UNA NOCHES';

/* Ver el precio actual después de la actualización
SELECT NRO_LIBRO, TITULO, PRECIO_ACT
FROM LIBRO
WHERE TITULO = 'LAS MIL Y UNA NOCHES';  */