CREATE DATABASE miramu;
USE miramu;

CREATE TABLE servicios (
id INT PRIMARY KEY AUTO_INCREMENT,
tipo_servicio VARCHAR(100) NOT NULL,
precio DECIMAL (10,2),
descripcion TEXT);

CREATE TABLE clientes (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (100) NOT NULL,
email VARCHAR (100) UNIQUE NOT NULL,
telefono VARCHAR (20));

CREATE TABLE CITAS (
id INT PRIMARY KEY AUTO_INCREMENT,
fecha_cita DATE NOT NULL,
cliente_id INT NOT NULL,
servicio_id INT NOT NULL,
FOREIGN KEY (cliente_id) REFERENCES clientes(id),
FOREIGN KEY (servicio_id) REFERENCES servicios(id));

CREATE TABLE caracteristicas (
id INT PRIMARY KEY AUTO_INCREMENT,
estilo TEXT,
silueta TEXT,
rostro TEXT,
temperatura TEXT,
estacion TEXT,
cliente_id INT NOT NULL,
FOREIGN KEY (cliente_id) REFERENCES clientes(id));

CREATE TABLE pagos (
id INT PRIMARY KEY AUTO_INCREMENT,
debito DECIMAL (10,2),
credito DECIMAL (10,2),
servicio_id INT NOT NULL,
FOREIGN KEY (servicio_id) REFERENCES servicios(id));






