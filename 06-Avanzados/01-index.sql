
-- el index es un elemento que se puede crear en una base de datos

-- básicamente es una herramienta para poder buscar elementos

/* 
    Tipos de índices
Índices primarios -> los que están vinculados con la PRIMARY KEY
Índices únicos -> son los unique key, aseguran que dos filas de una tabla no tengan datos duplicados
Índice compuestos -> permiten es que se podrán utilizar dos o más columnas
*/

-- crear un índice hace que la tabla sea más pesada, tiene un elemento más
-- la recuperación de los datos asociados al índice se hace más rápido
-- por el contrario guardar datos se hace más lento ya que hay que generar también al índice
-- crear/eleminar también puede repercutir en la tabla por el tema del índice
-- los índices son herramientas muy potentes pero pueden el rendimiento de la tabla puede verse afectado

-- crea un índice con el nombre idx_name(es por convención el _ y el nombre al que hace referencia) sobre la tabla users y la columna name
CREATE INDEX idx_name ON users(name);

-- crea un índice único con el nombre idx_name sobre la tabla users y la columna name
CREATE UNIQUE INDEX idx_name ON users(name);

-- crea un índice único con el nombre idx_name sobre la tabla users haciendo referencia s dos columnas: name, surname
CREATE UNIQUE INDEX idx_name ON users(name, surname);

-- borrar el índice
DROP INDEX idx_name OR users