
-- los triggers (disparadores), son instrucciones que se ejecutan automáticamente cuando ocurren eventos en la tabla, no son consultas sino que programamos eventos que queremos que ocurra en una tabla concreta.

-- crea una tabla historico_email con los atributos hirtorico_email, user_id y email
CREATE TABLE hola_sql.historico_email(
historico_email_id int NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
email varchar(100) NULL,
PRIMARY KEY(historico_email_id),
UNIQUE INDEX historico_email_id_UNIQUE(historico_email_id ASC) VISIBLE);




-- al querer acualizar de la tabla users el atributo email por ="....." cuando el user_id=1 ->
-- crea un trigger con el nombre tg_email que se ejecute después de la actualización (acotación del trigger BEFORE/AFTER INSERT/UPDATE/DELETE) sobre la tabla users
-- (para quién se va ejecutar el trigger?) FOR EACH ROW -> instrucción para que se ejecute en todas las filas
/*
BEGIN
    -- acá va la propia instrucción (bloque donde va la lógica)
    IF OLD.email <> NEW.email THEN -> SI el viejo email "es distinto" que el nuevo email ENTONCES
        INSERT INTO historico_email (user_id, email)
        VALUES (OLD.user_id, OLD.email);  
    END IF;
END
*/
/*
el delimiter |  |  delimiter ; --> sirve para cambiar el límite de fin de secuencia, nos permite hacer la lógica del trigger he indicarle cuando termina
*/

delimiter |

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO historico_email (user_id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF;
END;

|

delimiter ;

UPDATE users SET email = "prueba@trigger.com" WHERE user_id = 1;

-- para eleminar el trigger ->
DROP TRIGGER nombre_trigger;