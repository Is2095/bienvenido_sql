
-- LIMIT se suele usar para la paginación

-- mostrar todos los datos de la tabla users limitando (LIMIT) los 3 primeros
SELECT * FROM users LIMIT 3

-- mostrar todos los datos de la tabla users donde en la columna email no sea igual a pepe@gmail.com o que en la columna age sea igual a 48 limitando los 2 primero registros
SELECT * FROM users WHERE NOT email = "pepe@gmail.com" OR age = 48 LIMIT 2