
-- el comando IN lo vamos a usar cuando queremos buscar los registros que tengan un valor concreto conocido, el dato entre () es exactamente el que buscamos, y no diferencia entre mayús, o minús

-- mostrar todos los datos de la tabla users donde el dato de la columna name tenga (IN) name = ismael o name = tres o name....
SELECT * FROM users WHERE name IN ("ismael", 'tres')