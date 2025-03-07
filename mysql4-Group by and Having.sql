
SELECT * FROM products ORDER BY fk_category_id;

/*
 GROUP BY y HAVING se usan para agrupar 
 resultados y aplicar filtros sobre 
 agregaciones:

GROUP BY: Agrupa filas con el mismo 
 valor en una o más columnas.
HAVING: Filtra los resultados después 
 de aplicar funciones de agregación 
 (COUNT, SUM, AVG, etc.). 
 Es similar a WHERE, pero se 
 usa con agregaciones.
*/

/*
 Indicar el num de productos por categoria
 
*/
SELECT
    p.fk_category_id,
    COUNT(p.fk_category_id) AS total_of_products
    FROM products p
    GROUP BY p.fk_category_id
    ORDER by p.fk_category_id;

/*
 Indicar el num de productos por categoria.
  - Productos mayores o igual a 100 en price
 
*/
SELECT
    p.fk_category_id,
    COUNT(p.fk_category_id) AS total_of_products
    FROM products p
    WHERE p.price >= 100
	GROUP BY p.fk_category_id
    ORDER BY p.fk_category_id;

/*
 Indicar el num de productos por categoria.
  - Productos mayores o igual a 100 en price
  - Solo grupos con mas de 3 productos
*/
SELECT
    p.fk_category_id,
    COUNT(p.fk_category_id) AS total_of_products
    FROM products p
    WHERE p.price >= 100
	GROUP BY p.fk_category_id
    HAVING COUNT(p.fk_category_id) >= 3 
    ORDER BY p.fk_category_id;

/*
 Indicar el num de productos por categoria.
  - Productos mayores o igual a 100 en price
  - Solo grupos con mas de 3 productos
  - Mostrar el id y nombre de la categoria
   y total de productos
*/
SELECT
    p.fk_category_id,
    c.name,
    COUNT(p.fk_category_id) AS total_of_products
    FROM products p
    INNER JOIN categories c 
    ON p.fk_category_id = c.category_id
    WHERE p.price >= 100
	GROUP BY p.fk_category_id
    HAVING COUNT(p.fk_category_id) >= 3 
    ORDER BY p.fk_category_id;