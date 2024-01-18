
--

RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- muestra todos los datos de la tabla users, pero me quedo con los datos de la tabla de la izquierda (dni) tengan o no coincidencia con la de users, y en el caso de users que no tenga coincidencia en users aparecerá null
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

SELECT users.name, lenguajes.name
FROM users
RIGHT JOIN users_lenguajes ON users.user_id = users_lenguajes.user_id
RIGHT JOIN lenguajes ON users_lenguajes.language_id = lenguajes.language_id;