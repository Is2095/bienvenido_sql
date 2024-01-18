
-- inserta un nuevo registro (INSERT INTO), en la tabla users, en las siguientes columnas user_id, name, surname, con los siguientes valores (VALUES) 8, 'María', 'López' 
INSERT INTO users (user_id, name, surname) VALUES (8, 'María', 'López');

-- es igual al anterior pero no se coloca user_id, y si bien obligatorio también es autoincremental y se coloca automáticamente
INSERT INTO users (name, surname) VALUES ('Tete', 'Toto');

--