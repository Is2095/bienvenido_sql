
-- left join se queda con todos los datos todos los datos de la tabla de la izquierda

-- muestra todos los datos de la tabla users y las coincidencias con la tabla dni, los que no tienen datos en dni se le colocará null
-- la tabla de la derecha será users y la de la izquierda dni
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- igual que el anterior sólo que se mostrá el nombre y su respectivo dni, en caso que no tenga dni aparecerá null
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- en este caso trae los mismos datos de la anterior con la diferencia que la tabla referente (izquierda) será la de dni, y la de la derecha users
SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;

-- mostrará todos los usuarios de la tabla users, con su respectiva coincidencias con la tabla lenguajes y los elemento de la tabla principal users (derecha), que no tengan elemento en la de lenguajes aparecerá null
SELECT users.name, lenguajes.name
FROM users
LEFT JOIN users_lenguajes ON users.user_id = users_lenguajes.user_id
LEFT JOIN lenguajes ON users_lenguajes.language_id = lenguajes.language_id;