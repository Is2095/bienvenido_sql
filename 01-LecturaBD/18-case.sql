
-- el CASE es lanzar una lógica concreta en función de una condición. El CASE si o si se coloca con AS para renombrar la columna y poderle poner un nombre más acorde

-- mostrar todos los registros donde si: el dato age > 23 poder Es mayor de edad, sino poner Es menor de edad, y que el atributo éste sea como: agetext, de la tabla users
SELECT *,
CASE
	WHEN age > 23 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users

--
SELECT *,
CASE
	WHEN age > 23 THEN true
    ELSE false
END AS agetext
FROM users

-- en este caso si age es mayor que 18 coloca Es mayor de edad, sino si es = 18 coloca Acabas de cumplir la mayoría de edad y sino coloca Es menor de edad
SELECT *,
CASE
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acabas de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users
