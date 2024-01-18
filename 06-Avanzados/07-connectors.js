const mysql = require('mysql2')
require('dotenv').config()
const PASSWORD_SQL = process.env.PASSWORD_SQL
console.log(PASSWORD_SQL);
/*
const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    port: '3306',
    password: PASSWORD_SQL,
    database: 'hola_sql'
});

connection.connect((err) => {
    if(err) throw err
    console.log('me conecté a la BD mysql');
});
connection.query('SELECT * FROM users WHERE user_id = 1', (err, rows) => {
    if(err) throw err
    console.log('-*-', rows, '-*-');
});
connection.end();
*/

// const def = (id) => {
//     const config = {
//         host: '127.0.0.1',
//         user: 'root',
//         port: '3306',
//         password: PASSWORD_SQL,
//         database: 'hola_sql'
//     }
//     const connection = mysql.createConnection(config);

//     connection.connect((err) => {
//         if (err) throw err
//         console.log('me conecté a la BD mysql');
//     });
//     connection.query('SELECT * FROM users WHERE user_id = ?;',[id], (err, rows, sql, apa) => {
//         if (err) throw err
//         console.log('-*-', rows, '-*-');
//     });
//     connection.end();
// };
// def(1);

/* 
inyección sql es que está la posibilidad de enviar a través de string, agregando una segunda query la cual estaría como inyección sql, en los login como ejemplo.
Con node no permite el envío de múltiples query, más allá que se debe colocar como el ejemplo asi, en éste ejemplo, id lo toma como parámetro y no como string, y el signo ? identifica el parámetro, la cantidad de signos corresponderían a la cantidad de parámetros
*/