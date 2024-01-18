-- mostrar todos los datos de la tabla users ordenados por los datos en la columna age (por defecto es de menos a mayor el orden "...ORDER BY age ASC")
SELECT * FROM users ORDER BY age

-- mostrar todos los datos de la tabla users ordenados por los datos en la columna age en forma descendente.
SELECT * FROM users ORDER BY age DESC

-- mostrar todos los datos de la tabla users donde email = pepe@gmail.com ordenados por los datos en la columna age en forma descendente
SELECT * FROM users WHERE email="pepe@gmail.com" ORDER BY age DESC

-- mostrar todos los datos de la columna name de la tabla users donde email=pepe@gmail.com ordenados por los datos en la columna age y en forma descendente
SELECT name FROM users WHERE email="pepe@gmail.com" ORDER BY age DESC