
-- mostrar la agrupación de la cantidad de registros que tienen un dato en la columna age y que cumplan con la condición después del HAVING 
SELECT COUNT(age) FROM users HAVING COUNT(age) > 6
-- el dato después de SELECT debe coincidir con el dato después del HAVING