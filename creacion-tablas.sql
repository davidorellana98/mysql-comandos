/* CREACIÓN DE TABLAS*/
CREATE TABLE clientes(
	dni VARCHAR(11) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    barrio VARCHAR(50),
    estado VARCHAR(10),
    cp VARCHAR(10),
    fecha_nacimiento DATE,
    edad SMALLINT,
    sexo VARCHAR(1),
    limite_credito FLOAT,
    volumen_compra FLOAT,
    primira_compra BIT,
    PRIMARY KEY (dni)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE vendedores(
	matricula VARCHAR(5) NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    barrio VARCHAR(50) NOT NULL,
    comision FLOAT NOT NULL,
    fecha_admision DATE NOT NULL,
    vacaciones BIT(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS productos(
	codigo VARCHAR(10) NOT NULL,
    descripcion VARCHAR(100),
    sabor VARCHAR(50),
    tamano VARCHAR(50),
    envase VARCHAR(50),
    precio FLOAT,
    PRIMARY KEY (codigo)
);

CREATE TABLE facturas(
	numero INT NOT NULL,
    fecha DATE,
    dni VARCHAR(11) NOT NULL,
    matricula VARCHAR(5) NOT NULL,
    impuesto FLOAT,
    PRIMARY KEY (numero),
    FOREIGN KEY (dni) REFERENCES clientes(dni),
    FOREIGN KEY (matricula) REFERENCES vendedores(matricula)
);

CREATE TABLE facturacion(
	fecha DATE NULL,
    venta_total FLOAT
);

CREATE TABLE items(
	numero INT NOT NULL,
    codigo VARCHAR(10) NOT NULL,
    cantidad INT,
    precio FLOAT,
    PRIMARY KEY (numero, codigo),
    FOREIGN KEY (numero) REFERENCES facturas(numero),
    FOREIGN KEY (codigo) REFERENCES productos(codigo)
);