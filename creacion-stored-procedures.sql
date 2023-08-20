/*CREACIÓN DE STORED PROCEDURES*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_venta //
CREATE PROCEDURE sp_venta (fecha DATE, max_items INT, max_cantidad INT)
BEGIN
	DECLARE cliente VARCHAR(11);
    DECLARE producto VARCHAR(11);
    DECLARE vendedor VARCHAR(5);
    DECLARE cantidad INT;
    DECLARE precio FLOAT;
    DECLARE items INT;
    DECLARE num_factura INT;
    DECLARE contador INT DEFAULT 1;
    DECLARE num_items INT;
    
    SELECT MAX(numero) + 1 INTO num_factura FROM facturas;
    SET cliente = fun_cliente_aleatorio();
    SET vendedor = fun_vendedor_aleatorio();
    INSERT INTO facturas VALUES(num_factura, fecha, cliente, vendedor, 0.16);
    SET items = fun_aleatorio(1, max_items);
    
    WHILE contador <= items DO
		SET producto = fun_producto_aleatorio();
        
        SELECT COUNT(*) INTO num_items FROM items
        WHERE codigo = producto AND numero = num_factura;
        IF num_items = 0 THEN
			SET cantidad = fun_aleatorio(1, max_cantidad);
			SELECT precio INTO precio FROM productos WHERE codigo = producto;
			INSERT INTO items VALUES(num_factura, producto, cantidad, precio);
		END IF;
        
        SET contador = contador + 1;
    END WHILE;
END //
DELIMITER ;


DELIMITER //
DROP PROCEDURE IF EXISTS sp_triggers //
CREATE PROCEDURE sp_triggers ()
BEGIN
	DELETE FROM facturacion;
    INSERT INTO facturacion
    SELECT fac.fecha, SUM(ite.cantidad * ite.precio) AS venta_total
    FROM facturas fac
    INNER JOIN items ite
    ON fac.numero = ite.numero
    GROUP BY fac.fecha;
END //
DELIMITER ;
