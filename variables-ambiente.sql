/*VARIABLES DE AMBIENTE*/

-- Muestra los valores de las variables de ambiente, segun su alcance
SHOW STATUS;
SHOW GLOBAL STATUS;
SHOW SESSION STATUS;

-- Permite saber el número de tablas temperales creadas en el disco
SHOW GLOBAL STATUS LIKE 'Created_tmp_disk_tables';

-- Permite saber el número de tablas temporales creadas
SHOW GLOBAL STATUS LIKE 'Created_tmp_tables';

-- Permite saber el tamaño de memoria disponible para creación de tablas temporales
SHOW GLOBAL VARIABLES LIKE 'tmp_table_size';

-- Permite aumentar o disminuir tamaño de memoria disponible para creación de tablas temporales
-- Es preferible también modificar el archivo my.ini y cambiar su tamaño
SET GLOBAL tmp_table_size = 985661440;

-- VER INFORMACIÓN DE LOS MECANISMOS DE ALMACENAMIENTO
SHOW ENGINES;

-- PROPORCIONA INFORMACIÓN DE VARIABLES DEL SISTEMA DE MYSQL
SHOW VARIABLES;
SHOW VARIABLES WHERE Variable_Name LIKE '%dir';

-- PERMITE VER LOS PRIVILEGIOS QUE TIENE CIERTO USUARIO
SHOW GRANTS FOR 'admin01'@'localhost';