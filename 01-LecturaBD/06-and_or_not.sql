
-- mostrar todos los datos de la tabla users donde no (NOT) coincidan en la columna email con el valor pepe@gmail.com
SELECT * FROM users WHERE NOT email = "pepe@gmail.com"

-- mostrar todos los datos de la tabla users donde no coincidan en la columna email con el valor pepe@gmail.com y (AND) que en la columna age sea igual a 48
SELECT * FROM users WHERE NOT email = "pepe@gmail.com" AND age = 48

-- mostrar todos los datos de la tabla users donde no coincidan en la columna email con el valor pepe@gmail.com o (OR) que en la columna age sea igual a 48
SELECT * FROM users WHERE NOT email = "pepe@gmail.com" OR age = 48