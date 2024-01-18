
-- una views es una representación virtual de una o más tablas, es una consulta como se representaría como tabla

-- se crea la vista cuando habitualmente se solicitan cierto datos, por lo que se crea una vista que es una representación de una tabla sin crear la tabla
-- solo se crea la vista y se da los atributos requeridos.
-- la vista se va a ir actualizando miestras se modifiquen los datos de las tablas y atributos solicitados en la vista

CREATE VIEW v_adult_users AS 
SELECT name, age
FROM users
WHERE age >= 30;

SELECT * FROM v_adult_users;

-- para eliminar una vista -->
DROP VIEW nombre_de_la_vista;