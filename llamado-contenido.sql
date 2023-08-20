/*SELECCIONAR PARA VER CONTENIDO DE LAS TABLAS*/
SELECT * FROM clientes;
SELECT * FROM facturas;
SELECT * FROM facturacion;
SELECT * FROM items;
SELECT * FROM productos;
SELECT * FROM vendedores;

/*LLAMADO A FUNCIONES*/
SELECT fun_aleatorio(1,10);
SELECT fun_cliente_aleatorio();
SELECT fun_producto_aleatorio();
SELECT fun_vendedor_aleatorio();

/*LLAMDO A STORED PROCEDURES*/
CALL sp_venta('2022-06-19', 15, 100);
