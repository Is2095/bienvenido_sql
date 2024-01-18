
-- alias es para decirle que un atributo (init_date) es como (AS) igual a "fecha de inicio en programación" y al mostrar los datos va a salir lo que hay entre comilla debe init_date

SELECT name, init_date AS "fecha de inicio en programación" FROM users WHERE age BETWEEN 22 AND 48

-- monstrar todos los datos concatenando el dato de la columna name + un espacio (' ') + el dato de la columna surname de la tabla users. El valor del atributo de la tabla que se va a mostrar es CONCAT(....)
SELECT CONCAT(name, ' ', surname) FROM users

--
SELECT CONCAT(name, ' ', surname) AS "nombre completo" FROM users