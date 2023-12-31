/*CREACIÓN DE USUARIOS Y PRIVILEGIOS*/

-- CREANDO NUEVO USUARIO: 'admin01'(NOMBRE USER), 'localhost'(IP), IDENTIFIED BY: proporciona la contraseña
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'admin01'@'%' IDENTIFIED BY 'admin01';
CREATE USER 'backup'@'localhost' IDENTIFIED BY 'backup';
CREATE USER 'user01'@'%' IDENTIFIED BY 'user01';
CREATE USER 'user02'@'%' IDENTIFIED BY 'user02';

-- HABILITAR PERMISOS: BD(*).(*)TABLAS
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;
-- O SEGÚN CIERTOS PRIVILEGIOS
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE
ON *.* TO 'admin01'@'%';
-- o
GRANT SELECT, RELOAD, LOCK TABLES, REPLICATION CLIENT
ON *.* TO 'backup'@'localhost';
-- o
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE
ON jugos_ventas.* TO 'user01'@'%';
-- o
GRANT SELECT, INSERT, UPDATE, DELETE
ON jugos_ventas.facturas TO 'user02'@'%';