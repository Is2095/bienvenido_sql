
-- el full join se queda con todo la tabla de la derecha, la izquierda y las coincidencias

-- pero en MySQL no existe el FULL JOIN para ello se utiliza union

-- mostrar todo los datos: lo de users, los de dni y los que sean comunes de ambas tablas
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION 
SELECT users.user_id AS user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id
WHERE users.user_id IS NULL;

-- mismo resultado diferente forma de encarar el código
SELECT name, dni_number 
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT name, dni_number
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;