
-- crea una tabla (CREATE TABLE) con el nombre personas, con las siguientes columnas: id, name, age, email, created. y sus respectivos typos de datos
CREATE TABLE personas (
id int,
name varchar(100),
age int,
email varchar(50),
created date
);

-- crea una tabla con el nombre personas2 con las columnas y las restricciones correspondientes:
/*
 NOT NULL (campo obligatorio)
 AUTO_INCREMENT (hace que se incremente automáticamente)
 UNIQUE(id) (el campo id no se puede repetir) 
 PRIMARY KEY(id) (el campo id es el identificador único)
 CHECK(age>=18) (el campo age sólo va a aceptar valores quer mayor o igual a 18)
 DEFAULT CURRENT_TIMESTAMP() (en el caso de que no se ingrese nada por defecto colocar el día y hora actual)
*/
CREATE TABLE personas2 (
id int NOT NULL AUTO_INCREMENT,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
UNIQUE(id),
primary key(id),
CHECK(age>=18)
);