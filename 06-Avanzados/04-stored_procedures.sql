
-- un "procedimiento almacenado" no deja de ser una query que acabamos de guardar en favoritos, una query que usamos mucho

-- en este caso se crea un procedimiento almacenado para que cuando lo llamemos busque todos los datos de la tabla users
-- la forma de llamar el procedimiento almacenado es con CALL mas el nombre del procesimiento

DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
SELECT * FROM users;
END//

CALL p_all_users;

-- en este caso podemos ingresar un valor y usarlo en el procedimiento para hacer la lógica dentro del BEGIN -- END
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
SELECT * FROM users WHERE age = age_param;
END//

CALL p_age_users(48);

-- para borrar un procedimiento -->
DROP PROCEDURE nombre_del_procedimiento