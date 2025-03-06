-- Consulta anidada, subconsultas
/* Mostrar las direcciones que estén en países como México y Argentina, 
ciudades específicas como Atlixco y Buenos Aires*/
-- country, city, address

SELECT * FROM country;
SELECT * FROM city;
SELECT * FROM address;

-- Mostrar las direcciones de países como México y Argentina.
SELECT address
FROM address
WHERE city_id IN (
	SELECT city_id 
	FROM city
	WHERE country_id IN(
		SELECT country_id 
		FROM country
		WHERE country IN ('Mexico', 'Argentina')
	)
);

/* Mostrar las direcciones que estén en países como México y Argentina, 
ciudades específicas como Atlixco y Buenos Aires*/
SELECT address
FROM address
WHERE city_id IN (
	SELECT city_id 
	FROM city
	WHERE city IN ('Atlixco', 'Buenos Aires')
    AND country_id IN(
		SELECT country_id 
		FROM country
		WHERE country IN ('Mexico', 'Argentina')
	)
);