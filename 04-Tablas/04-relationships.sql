
-- crea una tabla con el nombre dni
/* con los siguiente tipos y restricciones
dni_id tipo entero, autoincremental y clave primaria
dni_number entero y requerido
user_id entero
dni_id único
user_id se declara como clave secundaria y que hace referencia al campo user_id de la tabla users
*/
CREATE TABLE dni (
dni_id int AUTO_INCREMENT PRIMARY KEY,
dni_number int NOT NULL,
user_id int,
UNIQUE(dni_id),
FOREIGN KEY(user_id)REFERENCES users(user_id)
);

-- crea una tabla llamada empresa con las siguiente columnas: empresa_id (tipo: entero autoincremental y que sea clave primaria), name (tipo: string hasta 100 caracteres, y requerido)
CREATE TABLE empresa (
    empresa_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

-- alterar/actualizar la tabla con nombre users, agregando una restricción a la columna fk_empresa, la clave secundaria empresa_id hace referencia al atributo empresa_id de la tabla empresa
ALTER TABLA users
ADD CONSTRAINT fk_empresas
FOREIGN KEY(empresa_id) REFERENCES empresa(empresa_id)

-- crea una tabla con el nombre languages con los siguientes atributos: language_id (tipo: entero, autoincremental, clave primaria), name (tipo: string de no más de 100 caracteres y requerido)
CREATE TABLE languages(
    language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

-- crea una tabla intermedia con el nombre de las dos tablas que hace referencia "users_languages", con los siguientes atributos:
/*
users_languages_id: entero, autoincremental, llave primaria -> es el id de los registros de la tabla
user_id: entero
language_id: entero
clave secundaria user_id que hace referencia al atributo user_id de la tabla users
clave secundaria language_id que hace referencia al atributo language_id de la tabla languages
y hace que los atributos user_id y language_id sean únicos
*/
CREATE TABLE users_languages (
    users_languages_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE(user_id, language_id)
);

--
INSERT INTO dni(dni_number, user_id) VALUES (11111111,1);
INSERT INTO dni(dni_number, user_id) VALUES (22222222,2);
INSERT INTO dni(dni_number, user_id) VALUES (33333333,3);
INSERT INTO dni(dni_number, user_id) VALUES (44444444,4);
