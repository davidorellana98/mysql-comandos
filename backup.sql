/*BACK-UP*/

-- Detiene de todas las instancias de mysql, para proceder hacer un backup físico
LOCK INSTANCE FOR BACKUP;
-- Habilita de todas las instancias de mysql
UNLOCK INSTANCE;