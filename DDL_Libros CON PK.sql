/* DDL de Creacion de Tablas */

CREATE TABLE LIBRO (NRO_LIBRO int not null, 
                     TITULO char(40),
                     AUTOR char(30),
                     TIPO char(2),
                     PRECIO_ORI smallmoney,
                     PRECIO_ACT smallmoney, 
                     EDICION smallint,
					 ESTADO char(1),
					 CONSTRAINT PK_LIBRO PRIMARY KEY (NRO_LIBRO))
--
CREATE TABLE TIPOLIBRO (TIPO char(2) not null,
			DESCTIPO char(40),
			CONSTRAINT PK_TIPOLIBRO PRIMARY KEY(TIPO))
--
CREATE TABLE LECTOR (NRO_LECTOR int not null,
                     NOMBRE char(22),
                     DIRECCION char(30),
                     TRABAJO char(10),
                     SALARIO smallmoney,
					 ESTADO char(1),
					 CONSTRAINT PK_LECTOR PRIMARY KEY (NRO_LECTOR))
--
CREATE TABLE COPIAS (NRO_LIBRO int not null,
                       NRO_COPIA smallint not null,
					   ESTADO char(1),
                       CONSTRAINT PK_COPIAS PRIMARY KEY (NRO_LIBRO, NRO_COPIA),
					   CONSTRAINT FK_COPIAS_LIBRO FOREIGN KEY (NRO_LIBRO) REFERENCES LIBRO(NRO_LIBRO))
--
CREATE TABLE PRESTAMO (NRO_LECTOR int not null,
                       NRO_LIBRO int not null,
                       NRO_COPIA smallint not null,
                       F_PREST datetime,
                       F_DEVOL datetime,
					   CONSTRAINT PK_PRESTAMO PRIMARY KEY (NRO_LECTOR, NRO_LIBRO, NRO_COPIA),
					   CONSTRAINT FK_PRESTAMO_LECTOR FOREIGN KEY (NRO_LECTOR) REFERENCES LECTOR(NRO_LECTOR),
					   CONSTRAINT FK_PRESTAMO_COPIAS FOREIGN KEY (NRO_LIBRO, NRO_COPIA) REFERENCES COPIAS(NRO_LIBRO, NRO_COPIA))

