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

/* CREACIÓN DE TABLA CON REFERENCIAS A CONSTRAINT (Es útil para refrenciar a las llaves primarias,
foreaneas y unique) */
CREATE TABLE usuarios(
	id INT AUTO_INCREMENT,
    login VARCHAR(30) NOT NULL,
    password TEXT NOT NULL,
    nickname VARCHAR(32) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    CONSTRAINT usuario_id_pk PRIMARY KEY(id)
);

CREATE TABLE posts(
	id INT AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    fecha_publicacion TIMESTAMP NOT NULL,
    contenido TEXT NOT NULL,
    estatus CHAR(8) NOT NULL DEFAULT 'activo',
    usuario_id INT NOT NULL,
    categoria_id INT NOT NULL,
    CONSTRAINT post_id_pk PRIMARY KEY (id),
    CONSTRAINT usuario_id_fk FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT categoria_id_fk FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON UPDATE CASCADE ON DELETE NO ACTION
);