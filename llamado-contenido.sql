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

/*LLAMADO A STORED PROCEDURES*/
CALL sp_venta('2022-06-19', 15, 100);

-- VISUALIZACIÓN DEL PLAN DE EJECUCIÓN EN UNA CONSULTA (QUERY_COST)
EXPLAIN SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos;
/* Estos comandos se visualizan desde linea de comando (Terminal), para mejor entendimiento
EXPLAIN SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A \G;
EXPLAIN FORMAT = JSON SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A \G;
*/

-- VISUALIZACIÓN DE USUARIOS Y SUS PRIVILEGIOS
SELECT * FROM mysql.USER;
