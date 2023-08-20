/* ALTERAR NOMBRE DE LA TABLA*/
ALTER TABLE vender RENAME TO vendedores;

/*ALTERAR NOMBRE A UNA COLUMNA EN UNA TABLA*/
ALTER TABLE clientes RENAME COLUMN primira_compra TO primera_compra;

/*ALTERAR TABLA PARA ADICIÓN DE NUEVA COLUMNA*/
/*FIRST (Se coloca primero) - AFTER (Se coloca segun en campo donde se requiere que valla)*/
ALTER TABLE clientes ADD COLUMN ciudad VARCHAR(50) AFTER barrio;

