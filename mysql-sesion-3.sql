SELECT * FROM actor;
SELECT * FROM film;
SELECT title FROM film;
-- Ciudades que comiencen con la letra A/H.
SELECT * FROM city WHERE upper(city) LIKE 'H%';
-- Ciudades que su nombre termine con S. 
SELECT * FROM city WHERE upper(city) LIKE '%S';

-- Limitar el número de elementos mostrados de la tabla film
SELECT * FROM film LIMIT 32;

-- Conteo de número de elementos
SELECT COUNT(*) AS "total de películas" FROM film;

 -- Mostrar las películas que estén en un rango de 60 a 75 minutos de duración
 SELECT title,length
 FROM film
 WHERE length BETWEEN 60 AND 75;
 
 -- Mostrar las películas que estén en un rango de 60 a 75 minutos de duración VERSIÓN2
 SeLeCt title, length
 FrOm film
 WheRe length > 60 AND length < 75;
 
 -- Mostrar películas que no están en un rango de 92 a 115 minutos de duración
SELECT title, length
FROM film 
WHERE length NOT BETWEEN 92 AND 115;

-- Mostrar el apellido de cada actor y la cantidad de actores que tienen ese apellido
SELECT 
last_name AS "Apellido",
COUNT(*) AS "Cantidad de actores con ese apellido"
FROM actor
GROUP BY last_name;

-- Mostrar los clientes que están asociados a las tiendas con id 6 y 2.
SELECT first_name, last_name
FROM customer
WHERE store_id IN (6,2);

-- Mostrar el nombre y apellido de todos los clientes llamados "Terry", "Jessie" o "Alice".
SELECT
first_name AS "nombre",
last_name AS "apellido" 
FROM customer
WHERE first_name IN ("Terry", "Jessie", "Matthew");