/*Josué Daniel Marroquín Hernández, 2020296, IN5BV*/
CREATE DATABASE Ejercicio2;

USE Ejercicio2;

CREATE TABLE IF NOT EXISTS Proveedores(
	IdProveedor INT NOT NULL,
    Nombre VARCHAR(45),
    Direccion VARCHAR(45),
    Departamento VARCHAR(45),
    Ciudad VARCHAR(45),
    PRIMARY KEY (IdProveedor)
);

CREATE TABLE IF NOT EXISTS Categoria(
	IdCategoria INT NOT NULL,
    Nombre VARCHAR(45),
    Descripcion VARCHAR(45),
    Precio DECIMAL(10,2),
    PRIMARY KEY (IdCategoria)
);

CREATE TABLE IF NOT EXISTS Suministros(
	IdSuministro INT NOT NULL,
    Nombre VARCHAR(45),
    Color VARCHAR(45),
    Categoria_IdCategoria INT NOT NULL,
    Precio DECIMAL(10,2),
    Cantidad INT,
    PRIMARY KEY (IdSuministro),
    CONSTRAINT fk_CategoriaSuministros
    FOREIGN KEY (Categoria_IdCategoria) REFERENCES Categoria(IdCategoria)
);

CREATE TABLE IF NOT EXISTS Inventario(
	Proveedor_IdProveedor INT NOT NULL,
    Suministro_IdSuministro  INT NOT NULL,
    PRIMARY KEY (Proveedor_IdProveedor, Suministro_IdSuministro),
    CONSTRAINT fk_Proveedor_has_Suministro_Proveedores
    FOREIGN KEY (Proveedor_IdProveedor) REFERENCES Proveedores(IdProveedor),
    CONSTRAINT gk_Proveedor_has_Suministro_Suministros
    FOREIGN KEY (Suministro_IdSuministro) REFERENCES Suministros(IdSuministro)
);

