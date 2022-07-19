/*Josué Daniel Marroquín Hernández, 202096, IN5BV*/
CREATE DATABASE Ejercicio1;

USE Ejercicio1;

CREATE TABLE IF NOT EXISTS  Proveedores(
	IdProveedor INT NOT NULL,
    Nombre VARCHAR(45),
    Direccion VARCHAR(45),
    Email VARCHAR(45),
    Telefono INT,
    PRIMARY KEY (IdProveedor)
);

CREATE TABLE IF NOT EXISTS  Categorias(
	IdCategoria INT NOT NULL,
    Nombre VARCHAR(45),
    Descripcion VARCHAR(45),
    PRIMARY KEY (IdCategoria)
);

CREATE TABLE IF NOT EXISTS  Productos(
	IdProducto INT NOT NULL,
    Nombre VARCHAR(45),
    Precio DECIMAL(10,2),
    Categoria_IdCategoria INT NOT NULL,
    PRIMARY KEY (IdProducto), 
    CONSTRAINT fk_CategoriasProductos
    FOREIGN KEY (Categoria_IdCategoria) REFERENCES Categorias(IdCategoria)
);

CREATE TABLE IF NOT EXISTS  Factura(
	Proveedor_IdProveedor INT NOT NULL,
    Producto_IdProducto INT NOT NULL,
    Cantidad INT,
    Total DECIMAL(10,2),
    PRIMARY KEY (Proveedor_IdProveedor, Producto_IdProducto),
    CONSTRAINT fk_Proveedor_has_Producto_Proveedores
    FOREIGN KEY (Proveedor_IdProveedor) REFERENCES Proveedores(IdProveedor),
    CONSTRAINT fk_Proveedor_has_Producto_Productos
    FOREIGN KEY (Producto_IdProducto) REFERENCES Productos(IdProducto)
);