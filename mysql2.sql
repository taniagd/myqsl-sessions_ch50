/* Comentario
de
bloque
*/

-- Comentario de línea

-- Ver las bases de datos disponibles.
SHOW databases;

-- Crear una base de datos
CREATE database trinomio_store;

-- Seleccionar base de datos y comenzar a usarla.
USE trinomio_store;

-- Crear tabla de productos con sus atributos
CREATE TABLE productos (
id_producto INT NOT NULL KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
categoria INT NOT NULL
);

-- Mostrar las tablas existentes de una base de datos
SHOW tables;

-- Mostrar la estructura de la tabla
DESCRIBE productos;

-- Insertar productos con el id
INSERT INTO productos (id_producto, nombre, precio, categoria)
VALUES
(1, "mango", 25.5, 1);

SELECT * FROM productos;

-- Insertar registro sin id
-- Se añade en automático el id_producto, ya que colocamos que fuera autoincrementable
INSERT INTO productos (nombre, precio, categoria)
VALUES
("limón", 30.99, 1);

SELECT * FROM productos;

INSERT INTO productos (nombre, precio, categoria)
VALUES
("limón", 30.99, 1);

SELECT * FROM productos;

-- Si duplico un registro y quiero eliminarlo...
DELETE FROM productos WHERE id_producto = 2;

SELECT * FROM productos;