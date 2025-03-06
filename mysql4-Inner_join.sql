/*
 JOINS
 Se utiliza para combinar filas de dos o más tablas, basándose
 en una columna relaciona entre ellas.
 
 INNER JOIN: Devuelve registros cuando hay coinidencia en ambas tablas
 
 LEFT JOIN: Devuelve todos los registros de la tabla izquierda
  y los registros coincidentes de la tabla derecha, Si no hay coincidencia
  devuelve NULL en las columnas de la tabla derecha.
 
 RIGH JOIN: Devuelve todos los registros de la tabla derecha
  y los registros coincidentes de la tabla izquierda, Si no hay coincidencia
  devuelve NULL en las columnas de la tabla izquierda.

*/
USE tienda3b;

SELECT * 
	FROM products
    INNER JOIN categories
    ON fk_category_id = category_id;


