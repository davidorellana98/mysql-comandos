/*CREACIÓN DE TRIGGERS*/
-- Gracias a la creación de un STORED PROCEDURES, se puede ahorrar código repetido.

DELIMITER //
CREATE TRIGGER tg_facturacion_insert
AFTER INSERT ON items
FOR EACH ROW BEGIN
	/*DELETE FROM facturacion;
    INSERT INTO facturacion
    SELECT fac.fecha, SUM(ite.cantidad * ite.precio) AS venta_total
    FROM facturas fac
    INNER JOIN items ite
    ON fac.numero = ite.numero
    GROUP BY fac.fecha;*/
    CALL sp_triggers();
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER tg_facturacion_update
AFTER UPDATE ON items
FOR EACH ROW BEGIN
	/*DELETE FROM facturacion;
    INSERT INTO facturacion
    SELECT fac.fecha, SUM(ite.cantidad * ite.precio) AS venta_total
    FROM facturas fac
    INNER JOIN items ite
    ON fac.numero = ite.numero
    GROUP BY fac.fecha;*/
     CALL sp_triggers();
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER tg_facturacion_delete
AFTER DELETE ON items
FOR EACH ROW BEGIN
	/*DELETE FROM facturacion;
    INSERT INTO facturacion
    SELECT fac.fecha, SUM(ite.cantidad * ite.precio) AS venta_total
    FROM facturas fac
    INNER JOIN items ite
    ON fac.numero = ite.numero
    GROUP BY fac.fecha;*/
     CALL sp_triggers();
END //
DELIMITER ;
