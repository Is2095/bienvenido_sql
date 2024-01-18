
-- mostrar todos los datos de la tabla users donde en la columna email es nula (IS NULL)
SELECT * FROM users WHERE email IS NULL;

-- mostrar todos los datos de la tabla users donde en la columna email no sea nula (IS NOT NULL)
SELECT * FROM users WHERE email IS NOT NULL;

-- mostrar todos los datos de la tabla users donde en la columna email no sea nula (IS NOT NULL) y que el dato de la columna age sea igual a 48
SELECT * FROM users WHERE email IS NOT NULL AND age = 48;

-- mostrar los datos de la columna name y surname, y si el dato de la columna age es nulo reemplazarlo por 0 (IFNULL(age, 0))
SELECT name, surname, IFNULL(age, 0) AS age FROM users;
