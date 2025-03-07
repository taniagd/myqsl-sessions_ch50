SELECT * FROM users;
SELECT * FROM purchases;

/* - Mostrar columnas: email del usuario, fecha de compra(purchase_date)  
   - Ordenar por email de forma descendente 
   
   Se mostrarian solamente los usuarios que han hecho una o mas compras
   y la fecha en que la realizaron.
*/
SELECT 
	p.purchase_id AS id,
    p.purchase_date,
    u.email AS email_users
	FROM purchases AS p
    INNER JOIN users AS u
    ON p.fk_user_id = u.user_id
    ORDER BY u.email DESC;
    
/* - Mostrar columnas: email del usuario  
   - Ordenar por email de forma descendente 
   - Unicamente usuarios que tenga una sola compra
   
*/
SELECT 
    u.email AS email_users,
    COUNT(u.user_id) AS total_purchases
	FROM purchases AS p
    INNER JOIN users AS u
    ON p.fk_user_id = u.user_id
    GROUP BY u.user_id
    HAVING COUNT(u.user_id) = 1
    ORDER BY u.email DESC;