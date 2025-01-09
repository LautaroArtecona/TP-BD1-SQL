/* Veo el estado de la tabla LIBRO y la tabla COPIAS antes de la inserción
SELECT * FROM LIBRO;
SELECT * FROM COPIAS;*/

-- Agrego un nuevo libro a la tabla LIBRO
INSERT INTO LIBRO (NRO_LIBRO, TITULO, AUTOR, TIPO, PRECIO_ORI, PRECIO_ACT, EDICION, ESTADO)
VALUES (123456, 'Nuevo Libro', 'Autor Ejemplo', 'NO', 50.00, 50.00, 2024, 'A');

-- Agrego las copias del nuevo libro a la tabla COPIAS
INSERT INTO COPIAS (NRO_LIBRO, NRO_COPIA)
VALUES (123456, 1),
       (123456, 2);

/* Veo el estado de la tabla LIBRO y la tabla COPIAS después de la inserción
SELECT * FROM LIBRO;
SELECT * FROM COPIAS;*/