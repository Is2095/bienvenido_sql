
-- el inner join nos sirve para optener los datos comunes de ambas tablas 

-- no retorna las filas de dos o más tablas cuando halla coincidencia en ambas tablas

-- 
SELECT * FROM users
INNER JOIN dni;

-- muestra todos los datos de la tabla users, haciendo un inner join de la tabla dni, sobre  el atributo de users.user_id sea igual a dni.user_id
-- trae los datos que coinciden en ambas tablas, nunca va a traer usuarios que no tengan dni, ni dni que no tengan ususario.
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

-- éste código funciona exactamente igual al anterior pero sin el INNER
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

-- el la misma llamada anterior con el agregado que muestra los datos ordenador por el dato de la columna age
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC;

-- muestra todos los datos de la tabla users que coinciden con la tabla empresa sobre el atributos users.empresa_id sea igual a empresa.empresa_id
SELECT * FROM users
JOIN empresa
ON users.empresa_id = empresa.empresa_id
ORDER BY age DESC;

-- es la misma llamada anterior pero desde la tabla empresa
SELECT * FROM empresa
JOIN users
ON users.empresa_id = empresa.empresa_id
ORDER BY age DESC;

-- es la misma llamada anterior pero solo muestra los datos de la columna nombre_empresa y nombre del usuario
SELECT empresa.nombre_empresa, users.name FROM empresa
JOIN users
ON users.empresa_id = empresa.empresa_id
ORDER BY age DESC;

-- mostrar todos los datos de la tabla intermedia users_lenguajes donde coincidan los datos de las columnas de la tabla users sobre users_lenguajes.user_id sea igual a users.user_id 
-- y los datos que coinciden de la tabla lenguajes sobre los datos de users_lenguajes.language_id sea igual a lenguajes.language_id
SELECT * 
FROM users_lenguajes
JOIN users ON users_lenguajes.user_id = users.user_id
JOIN lenguajes ON users_lenguajes.language_id = lenguajes.language_id;

-- igual a la anterior solo que se muestra los datos users.name y lenguajes.name
SELECT users.name, lenguajes.name
FROM users_lenguajes
JOIN users ON users_lenguajes.user_id = users.user_id
JOIN lenguajes ON users_lenguajes.language_id = lenguajes.language_id;

-- igual a la anterior pero desde la tabla users
SELECT users.name, lenguajes.name
FROM users
JOIN users_lenguajes ON users.user_id = users_lenguajes.user_id
JOIN lenguajes ON users_lenguajes.language_id = lenguajes.language_id;
