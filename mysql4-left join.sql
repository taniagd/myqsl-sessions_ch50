-- Uso de left join

-- Numero de usuarios que han hecho compras
SELECT 
    COUNT(DISTINCT u.email )
	FROM users AS u
    INNER JOIN purchases p
    ON u.user_id = p.fk_user_id;
    
-- Mostrar todos los usuarios
-- Con las compras, en caso de que tengan
SELECT 
	u.email,
    p.purchase_date
    FROM users u 
    LEFT JOIN purchases p 
    ON u.user_id = p.fk_user_id
    ORDER BY u.email;

-- Mostrar todos los usuarios(Solo email)
-- Indicar el numero de compras que han realizado
SELECT
	u.email, count(p.purchase_id) AS numero_de_compras
    FROM users u
    LEFT JOIN purchases p 
    ON u.user_id = p.fk_user_id
    GROUP BY u.email -- Es posible usar el u.user_id
    ORDER BY count(p.purchase_id);
