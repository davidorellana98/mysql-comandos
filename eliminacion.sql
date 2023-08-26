/*ELIMINAR TABLAS*/
DROP TABLE items;
DROP TABLE facturas;

/*ELIMANR UNA COLUMNA EN UNA TABLA*/
ALTER TABLE clientes DROP COLUMN ciudad;

/*ELIMINAR TRIGGERS*/
DROP TRIGGER tg_facturacion_insert;

-- ELIMINAR INDICE EN UNA TABLA
ALTER TABLE facturas DROP INDEX impuesto;

-- REMOVER PRIVILEGIOS DE UN USUARIO
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'admin01'@'localhost';
