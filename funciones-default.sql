/*FUNCIONES POR DEFAULT DE MYSQL*/
-- RAND() - Número aleatorio entre rango 0 y 1
SELECT RAND();

-- FLOOR() - Proporciona un número sin redondear
SELECT FLOOR((RAND() * (250 - 20 + 1)) +20) AS ALEATORIO;