
-- Regla de ORO, siempre al usar el UPDATE, SE USA CON EL -----WHERE----- sino va a actualizar el mismo campo de todos los registros

-- actualiza (UPDATE) de la tabla users colocar (SET) en la columna age el valor 21 cuando (WHERE) el user_id = 7, asi actualiza el registro id=7 el age a 21
UPDATE users SET age = '21' WHERE user_id = 7;

-- el mismo concepto que el anterior pero también se actualiza el atributo init_date del user_id = 8
UPDATE users SET age = 36, init_date = '2020-12-27' WHERE user_id = 8;

