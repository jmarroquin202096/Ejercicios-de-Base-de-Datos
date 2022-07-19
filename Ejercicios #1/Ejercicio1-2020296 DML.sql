/*Josué Daniel Marroquín Hernández, 2020296, IN5BV*/
USE Ejercicio1;

INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Email, Telefono)
VALUES (1,'DINADEC S.A', '16ave. 2-30, Zona 15', 'dinadec@gmail.com', 30120721);
INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Email, Telefono)
VALUES (2, 'OTECEL S.A', '13calle, 4-21, Zona 2', 'otecel@gmail.com', 20192910);
INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Email, Telefono)
VALUES (3, 'LA FABRIL S.A', '2ave. 17-45, Zona 3', 'fabril@gmail.com', 39201382);
INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Email, Telefono)
VALUES (4, 'AYMESA S.A', '4calle, 48-20, Zona 1', 'aymesa@gmail.com', 2345019);
INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Email, Telefono)
VALUES (5,'GRUPO TRANSBEL S.A', '5ave, 2-10 Zona 10', 'grupotransabel@gmail.com', 40198301);

INSERT INTO Categorias(IdCategoria, Nombre, Descripcion)
VALUES (1, 'Bebidas', 'Venta la Mayor de cualquier Bebida');
INSERT INTO Categorias(IdCategoria, Nombre, Descripcion)
VALUES (2, 'Tecnolgia', 'Venta por Mayor de Tecnologia');
INSERT INTO Categorias(IdCategoria, Nombre, Descripcion)
VALUES (3, 'Alimentos', 'Venta por Mayor de Aliementos');
INSERT INTO Categorias(IdCategoria, Nombre, Descripcion)
VALUES (4, 'Vehiculos', 'Venta por Mayor de Vehiculos');
INSERT INTO Categorias(IdCategoria, Nombre, Descripcion)
VALUES (5, 'Higiene', 'Venta por Mayor de Articulos Higienicos');

INSERT INTO Productos(IdProducto, Nombre, Precio, Categoria_IdCategoria)
VALUES (1, 'CocaCola', '5.20', 1);
INSERT INTO Productos(IdProducto, Nombre, Precio, Categoria_IdCategoria)
VALUES (2, 'Laptop HP', '5700.90', 2);
INSERT INTO Productos(IdProducto, Nombre, Precio, Categoria_IdCategoria)
VALUES (3, 'Snack', '1.99', 3);
INSERT INTO Productos(IdProducto, Nombre, Precio, Categoria_IdCategoria)
VALUES (4, 'Pick Up Toyota', '50000.99', 4);
INSERT INTO Productos(IdProducto, Nombre, Precio, Categoria_IdCategoria)
VALUES (5, 'Papel Higienico', '3.50', 5);

INSERT INTO Factura(Proveedor_IdProveedor, Producto_IdProducto, Cantidad, Total)
VALUES (1, 1, 100, '520.00');
INSERT INTO Factura(Proveedor_IdProveedor, Producto_IdProducto, Cantidad, Total)
VALUES (2, 2, 20, '114018.00');
INSERT INTO Factura(Proveedor_IdProveedor, Producto_IdProducto, Cantidad, Total)
VALUES (3, 3, 200, '398.00');
INSERT INTO Factura(Proveedor_IdProveedor, Producto_IdProducto, Cantidad, Total)
VALUES (4, 4, 2, '100001.98');
INSERT INTO Factura(Proveedor_IdProveedor, Producto_IdProducto, Cantidad, Total)
VALUES (5, 5, 100, '350.00');

/*SELECTS*/
SELECT*FROM Proveedores;
SELECT*FROM Categorias;
SELECT*FROM Productos;
SELECT*FROM Factura;

/*Update*/
UPDATE Categorias SET Descripcion='Venta por Mayor de cualquier Bebida' WHERE IdCategoria='1';
UPDATE Proveedores SET Email = 'elfabril@gmail.com' WHERE IdProveedor = 3;
UPDATE Productos SET Precio = '7.50' WHERE IdProducto = 1;

/*Drop*/
DROP TABLE Facturas;

/*Delete*/
DELETE FROM Proveedores WHERE IdProveedor = 4;
DELETE FROM Categorias WHERE IdCategoria = 3;
DELETE FROM Productos WHERE IdProducto = 2;

/*Selects*/
SELECT*FROM Proveedores;
SELECT*FROM Categorias;
SELECT*FROM Productos;