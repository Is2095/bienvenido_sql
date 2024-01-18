
-- group by es un comando de agrupación

-- mostrar la agrupación por el datos de la columna age con la age MAX, los campos iguales solo coloca uno
SELECT MAX(age) FROM users GROUP BY age

-- mostrar la agrupación por los datos de la columna age contando la cantidad de valores igual en la columna age, y mostrar el dato de la columna age
SELECT COUNT(age), age FROM users GROUP BY age

/* ejemplo si hay 3 registros de los cuales dos tiene la misma edad, lo que se muestra es 
count(age)  age
1           12
2           25
*/

-- lo mismo del anterior pero los ordena por el dato de la columna age en forma descendiente
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age DESC

-- lo mismo que el anterior pero con la restricción que la edad debe ser mayor que 28
SELECT COUNT(age), age FROM users WHERE age > 28 GROUP BY age ORDER BY age DESC