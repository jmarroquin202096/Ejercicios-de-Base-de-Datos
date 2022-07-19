/*Josué Daniel Marroquín Hernández, 2020296, IN5BV*/
USE Ejercicio2;

INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Departamento, Ciudad)
VALUES (1, 'Molinos MOdernos', '33Calle 25-30 Zona12', 'Guatemala', 'Guatemala');
INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Departamento, Ciudad)
VALUES (2, 'Papelera Internacional S.A', 'Km10 Ruta Al Atlántico Zona17', 'Guatemala', 'Guatemala');
INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Departamento, Ciudad)
VALUES (3, 'Alimento C&Q', '7Avenida 1-53 Zona2', 'Guatemala', 'Mixco');
INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Departamento, Ciudad)
VALUES (4, 'Dacema', 'Lote3ManazaE RVJ1 Zona18', 'Guatemala', 'Guatemala');
INSERT INTO Proveedores(IdProveedor, Nombre, Direccion, Departamento, Ciudad)
VALUES (5, 'Ninoshka S.A', '24Ave 42-11 Zona12', 'Guatemala', 'Guatemala');

INSERT INTO Categoria(IdCategoria, Nombre, Descripcion, Precio)
VALUES (1, 'Aliementos', 'Venta de Aliementos de Harina', '100.50');
INSERT INTO Categoria(IdCategoria, Nombre, Descripcion, Precio)
VALUES (2, 'Papel', 'Venta de Papel', '50.25');
INSERT INTO Categoria(IdCategoria, Nombre, Descripcion, Precio)
VALUES (3, 'Alimentos','Venta de Alimentos y Salsas', '75.40');
INSERT INTO Categoria(IdCategoria, Nombre, Descripcion, Precio)
VALUES (4, 'Limpieza', 'Venta de Articulos de Limpieza', '45.90');
INSERT INTO Categoria(IdCategoria, Nombre, Descripcion, Precio)
VALUES (5, 'Tecnologia', 'Venta de Tecnologia', '150.80');

INSERT INTO Suministros(IdSuministro, Nombre, Color, Categoria_IdCategoria, Precio, Cantidad)
VALUES (1, 'Gaseosas', 'Amarrillo', 1, '100.50', 100);
INSERT INTO Suministros(IdSuministro, Nombre, Color, Categoria_IdCategoria, Precio, Cantidad)
VALUES (2, 'Papel Higienico', 'Verde', 2, '50.25', 100);
INSERT INTO Suministros(IdSuministro, Nombre, Color, Categoria_IdCategoria, Precio, Cantidad)
VALUES (3, 'Galletas', 'Amarrillo', 3, '75.40', 500);
INSERT INTO Suministros(IdSuministro, Nombre, Color, Categoria_IdCategoria, Precio, Cantidad)
VALUES (4, 'Escobas', 'Negro', 4, '45.90', 20);
INSERT INTO Suministros(IdSuministro, Nombre, Color, Categoria_IdCategoria, Precio, Cantidad)
VALUES (5, 'Impresoras', 'Azul', 5, '150.80', 10);

INSERT INTO Inventario(Proveedor_IdProveedor, Suministro_IdSuministro)
VALUES (1,1);
INSERT INTO Inventario(Proveedor_IdProveedor, Suministro_IdSuministro)
VALUES (2,2);
INSERT INTO Inventario(Proveedor_IdProveedor, Suministro_IdSuministro)
VALUES (3,3);
INSERT INTO Inventario(Proveedor_IdProveedor, Suministro_IdSuministro)
VALUES (4,4);
INSERT INTO Inventario(Proveedor_IdProveedor, Suministro_IdSuministro)
VALUES (5,5);

/*SELECTS*/
SELECT*FROM Proveedores;
SELECT*FROM Categoria;
SELECT*FROM Suministros;
SELECT*FROM Inventario;

/*Update*/
UPDATE Categoria SET Nombre='Bebidas' WHERE IdCategoria='1';
UPDATE Suministros SET Nombre='Trapeadores' WHERE IdSuministro='4';
UPDATE Proveedores SET Nombre='Intelaf' WHERE IdProveedor='5';

/*Drop*/
DROP TABLE Inventario;

/*Delete*/
DELETE FROM Proveedores WHERE IdProveedor = 4;
DELETE FROM Suminstros WHERE IdSuministro = 2;
DELEtE FROm Categorias WHERE IdCategoria = 3;

/*Selects*/
SELECT*FROM Proveedores;
SELECT*FROM Categoria;
SELECT*FROM Suministros;