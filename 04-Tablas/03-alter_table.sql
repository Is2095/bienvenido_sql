
-- alterar/actualizar la tabla (ALTER TABLE) personas8 y sumarle (ADD) el atributo surname y con el tipo varchar(150)
ALTER TABLE personas8
ADD surname varchar(150);

-- alterar/actualizar la tabla personas8 y renombrar la columna (RENAME COLUMN) surname a (TO) description- hereda el tipo de surname
ALTER TABLE personas8
RENAME COLUMN surname TO description;

-- alterar/actualizar la tabla personas8 y modificar el tipo de dato de la columna (MODIFY COLUMN) description por el tipo varchar(230)
ALTER TABLE personas8
MODIFY COLUMN description varchar(230);

-- alterar/actualizar la tabla personas8 y borrar la columna (DROP COLUMN) con el nombre description
ALTER TABLE personas8
DROP COLUMN description;