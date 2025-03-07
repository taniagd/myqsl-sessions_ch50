/*
 JOINS
 Se utiliza para combinar filas de dos o más tablas, basándose
 en una columna relacional entre ellas.
 
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
    ON category_id = category_id;

/* Ser explicito en le nombre de la tabla.campo */
SELECT * 
	FROM products
    INNER JOIN categories
    ON products.fk_category_id = categories.category_id;

/* Formas de usar un alias en el nombre de la tabla */
SELECT * 
	FROM products AS p
    INNER JOIN categories c
    ON p.fk_category_id = c.category_id;

/* Mostrar columnas especificas */
SELECT 
	p.product_id AS id,
    p.name,
    p.price,
    c.name AS category_name
	FROM products AS p
    INNER JOIN categories AS c
    ON p.fk_category_id = c.category_id;
    
/* Mostrar columnas especificas, ordenar por product name */
SELECT 
	p.product_id AS id,
    p.name,
    p.price,
    c.name AS category_name
	FROM products AS p
    INNER JOIN categories AS c
    ON p.fk_category_id = c.category_id
    ORDER BY p.name;
    
/* Mostrar columnas especificas, ordenar por category name y price de forma descendente */
SELECT 
	p.product_id AS id,
    p.name,
    p.price,
    c.name AS category_name
	FROM products AS p
    INNER JOIN categories AS c
    ON p.fk_category_id = c.category_id
    ORDER BY c.name DESC, p.price DESC;
    
/* - Mostrar columnas especificas, 
   - ordenar por category name y price de forma descendente 
   - Mostrar solo los productos mayores a 100 en price
*/
SELECT 
	p.product_id AS id,
    p.name,
    p.price,
    c.name AS category_name
	FROM products AS p
    INNER JOIN categories AS c
    ON p.fk_category_id = c.category_id
    -- filtrar
    WHERE p.price >= 100
    ORDER BY c.name DESC, p.price DESC;

/* - Mostrar columnas especificas, 
   - ordenar por category name y price de forma descendente 
   - Mostrar solo los productos mayores a 100 en price
   - Mostrar solo las categorias Moda y accesorios y linea blanca
*/
SELECT 
	p.product_id AS id,
    p.name,
    p.price,
    c.name AS category_name
	FROM products AS p
    INNER JOIN categories AS c
    ON p.fk_category_id = c.category_id
    -- filtrar
    WHERE p.price >= 100 AND c.category_id IN (2,4) -- Linea blanca, moda y accesorios
    ORDER BY c.name DESC, p.price DESC;
    