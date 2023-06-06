SELECT *
FROM servicios;

CREATE VIEW v_servicios_miramu AS 
SELECT *
FROM miramu.servicios;

ALTER TABLE clientes
ADD last_name VARCHAR (45) NOT NULL;

