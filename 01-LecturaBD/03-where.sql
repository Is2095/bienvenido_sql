
-- mostra todos los datos de la tabla users donde (WHERE) el dato de la columna (age) sea igual a 48
SELECT * FROM users WHERE age = 48

-- mostra todos los datos de la columna name de la tabla users donde el dato de la columna age sea igual a 48
SELECT name FROM users WHERE age = 48

-- mostra todos los datos DISTINTOS de la columna name de la tabla users donde el dato de la columna age es igual a 48
SELECT DISTINCT name FROM users WHERE age = 48 