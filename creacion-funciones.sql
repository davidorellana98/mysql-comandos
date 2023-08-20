/*CREACIÓN DE FUNCIONES*/
-- EN MYSQL SE NECESITA HABILITAR EL SISTEMA DE FUNCIONES
SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER $$
DROP FUNCTION IF EXISTS fun_aleatorio$$
CREATE FUNCTION fun_aleatorio(min INT, max INT)
RETURNS INTEGER
BEGIN
	DECLARE resultado INT;
    SELECT FLOOR((RAND() * (max - min + 1)) + min) INTO resultado;
    RETURN resultado;
END $$
DELIMITER ;

DELIMITER //
DROP FUNCTION IF EXISTS fun_cliente_aleatorio//
CREATE FUNCTION fun_cliente_aleatorio()
RETURNS VARCHAR(11)
BEGIN
	DECLARE resultado VARCHAR(11);
    DECLARE max INT;
    DECLARE aleatoria INT;
    SELECT COUNT(*) INTO max FROM clientes;
    SET aleatoria = fun_aleatorio(1, max);
    SET aleatoria = aleatoria - 1;
    SELECT dni INTO resultado FROM clientes LIMIT aleatoria, 1;
    RETURN resultado;
END//
DELIMITER ;

DELIMITER //
CREATE FUNCTION fun_producto_aleatorio() 
RETURNS varchar(10) 
BEGIN
	DECLARE resultado VARCHAR(10);
	DECLARE max INT;
	DECLARE aleatorio INT;
	SELECT COUNT(*) INTO max FROM productos;
	SET aleatorio = fun_aleatorio(1,max);
	SET aleatorio = aleatorio-1;
	SELECT codigo INTO resultado FROM productos LIMIT aleatorio,1;
	RETURN resultado;
END //

DELIMITER //
CREATE FUNCTION fun_vendedor_aleatorio() 
RETURNS varchar(5) 
BEGIN
DECLARE resultado VARCHAR(5);
DECLARE max INT;
DECLARE aleatorio INT;
SELECT COUNT(*) INTO max FROM vendedores;
SET aleatorio = fun_aleatorio(1,max);
SET aleatorio = aleatorio-1;
SELECT matricula INTO resultado FROM vendedores LIMIT aleatorio,1;
RETURN resultado;
END //
