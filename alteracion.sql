/* ALTERAR NOMBRE DE LA TABLA*/
ALTER TABLE vender RENAME TO vendedores;

/*ALTERAR NOMBRE A UNA COLUMNA EN UNA TABLA*/
ALTER TABLE clientes RENAME COLUMN primira_compra TO primera_compra;
-- O
ALTER TABLE clientes CHANGE primera_compra compra_unica VARCHAR(30) NOT NULL;

/*ALTERAR TABLA PARA ADICIÓN DE NUEVA COLUMNA*/
/*FIRST (Se coloca primero) - AFTER (Se coloca segun en campo donde se requiere que valla)*/
ALTER TABLE clientes ADD COLUMN ciudad VARCHAR(50) AFTER barrio;

-- ALTERAR EL MECANISMO DE ALMACENAMIENTO DE OTRA TABLA (MyISAM, InnoDB o MEMORY)
ALTER TABLE clientes ENGINE = MyISAM;

-- ALTERAR TABLA PARA APLICAR INDICES
ALTER TABLE facturas ADD INDEX(fecha_venta);
ALTER TABLE facturas ADD INDEX(impuesto);
