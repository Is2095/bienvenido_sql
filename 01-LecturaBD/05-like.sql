

-- mostrar todos los datos de la tabla users donde en la columna email contenga (LIKE) algo (%) seguido de gmail.com
SELECT * FROM users WHERE email LIKE "%gmail.com"

-- mostrar todos los datos de la tabla users donde en la columna email contenga (LIKE) pepe con algo más
SELECT * FROM users WHERE email LIKE "pepe%"