/*Josué Daniel Marroquín Hernández*/
CREATE DATABASE Ejercicio3;

USE Ejercicio3;

CREATE TABLE IF NOT EXISTS Autores(
	IdAutor INT NOT NULL,
    Nombre VARCHAR(45),
    Email VARCHAR(45),
    Direccion VARCHAR(45),
    Adscripcion DECIMAL(10,2),
    PRIMARY KEY (IdAutor)
);

CREATE TABLE IF NOT EXISTS Revista(
	NoRevista INT NOT NULL,
    Nombre VARCHAR(45),
    ISSN INT,
    NombreAutor_IdAutor INT NOT NULL,
    FechaPublicada DATE,
    PRIMARY KEY (NoRevista),
    CONSTRAINT fk_AutoresRevista
    FOREIGN KEY ( NombreAutor_IdAutor) REFERENCES Autores(IdAutor)
);

CREATE TABLE IF NOT EXISTS Articulo(
	NoArticulo INT NOT NULL,
    Titulo VARCHAR(45),
    NombreAutor_IdAutor INT NOT NULL,
    PaginaInicio INT,
    PaginaFin INT,
    PRIMARY KEY (NoArticulo),
    CONSTRAINT fk_AutoresArticulo
    FOREIGN KEY (NombreAutor_IdAutor) REFERENCES Autores(IdAutor)
);

CREATE TABLE IF NOT EXISTS Clientes(
	IdCliente INT NOT NULL,
    Nombre VARCHAR(45),
    Email VARCHAR(45),
    Telefono INT,
    PRIMARY KEY (IdCliente)
);

CREATE TABLE IF NOT EXISTS Suscripcion(
	IdSuscripcion INT NOT NULL,
    Clientes_IdCliente INT NOT NULL,
    TipoPago VARCHAR(45),
    Total DOUBLE(10,2),
    PRIMARY KEY (IdSuscripcion),
    CONSTRAINT fk_ClientesSuscripcion
    FOREIGN KEY (Clientes_IdCliente) REFERENCES Clientes(IdCliente)
);

CREATE TABLE IF NOT EXISTS Compra(
	IdCompra INT NOT NULL,
    Cliente_IdCliente INT NOT NULL,
    TipoPago VARCHAR(45),
    Total DOUBLE(10,2),
    PRIMARY KEY (IdCompra),
    CONSTRAINT fk_ClientesCompra
    FOREIGN KEY (Cliente_IdCliente) REFERENCES CLientes(idCLiente)
);

CREATE TABLE IF NOT EXISTS PosiciondelArticulo(
	PosiciondeArticulo INT NOT NULL,
    Autor_IdAutor INT NOT NULL,
    Revista_NoRevista INT NULL,
    Articulo_NoArticulo INT NULL,
    PRIMARY KEY (PosiciondeArticulo),
    CONSTRAINT fk_AutorPosiciondelArticulo
    FOREIGN KEY (Autor_IdAutor) REFERENCES Autores(IdAutor),
    CONSTRAINT fk_RevistaPosiciondelArticulo
    FOREIGN KEY (Revista_NoRevista) REFERENCES Revista(NoRevista),
     CONSTRAINT fk_ArticuloPosiciondelArticulo
     FOREIGN KEY (Articulo_NoArticulo) REFERENCES Articulo(NoArticulo)
);

CREATE TABLE IF NOT EXISTS RevistaCompra(
	Compra_IdCompra INT NOT NULL,
	Revista_NoRevista INT NOT NULL,
    PRIMARY KEY (Compra_IdCompra, Revista_NoRevista),
    CONSTRAINT fk_Compra_Revista_Compra
    FOREIGN KEY (Compra_IdCompra) REFERENCES Compra(IdCompra),
    CONSTRAINT fk_Compra_Revista_Revista
    FOREIGN KEY (Revista_NoRevista) REFERENCES Revista(NoRevista)
)
CREATE TABLE IF NOT EXISTS SuscripcionRevista(
	Suscripcion_IdSuscripcion INT NOT NULL,
	Revista_NoRevista INT NOT NULL,
    PRIMARY KEY (Suscripcion_IdSuscripcion, Revista_NoRevista),
    CONSTRAINT fk_Suscripcion_Revista_Suscripcion
    FOREIGN KEY (Suscripcion_IdSuscripcion) REFERENCES Suscripcion(IdSuscripcion),
    CONSTRAINT fk_Suscripcion_Revista_Revista
    FOREIGN KEY (Revista_NoRevista) REFERENCES Revista(NoRevista)
);