/*Josué Daniel Marroquín Hernández, 2020296, IN5BV*/
USE Ejercicio3;

INSERT INTO Autores(IdAutor, Nombre, Email, Direccion, Adscripcion)
VALUES (1, 'Oscar Niemeyer', 'Oniemeyer@gmail.com', 'AvedelZinc, , España', '150.80');
INSERT INTO Autores(IdAutor, Nombre, Email, Direccion, Adscripcion)
VALUES (2, 'Mijaíl Bajtín', 'Mbajtin@gmail.com', '195197, Saint-Petersburg, Rusia', '175.90');
INSERT INTO Autores(IdAutor, Nombre, Email, Direccion, Adscripcion)
VALUES (3, 'Beatriz Sarlo', 'Bsarlo@gmail.com', 'av.Corrientes 5700CABA, Argentina', '145.30');
INSERT INTO Autores(IdAutor, Nombre, Email, Direccion, Adscripcion)
VALUES (4, 'Michel Foucault', 'Mfoucault@gmail.com', 'Av.FigueroaAlcorta 2263, Argentina', '200.50');
INSERT INTO Autores(IdAutor, Nombre, Email, Direccion, Adscripcion)
VALUES (5, 'Gilles Deleuze', 'Gdeleuze', '25 RuedesPyramides, 75001 Francia', '100.20');

INSERT INTO Revista(NoRevista, Nombre, ISSN, NombreAutor_IdAutor, FechaPublicada)
VALUES (1783, 'Razones de una Práctica', 3092-3829, 3, '03-12-18');
INSERT INTO Revista(NoRevista, Nombre, ISSN, NombreAutor_IdAutor, FechaPublicada)
VALUES (4839, 'CausasyRazones de las IslasDesiertas', 1208-3782, 5, '09-10-14');
INSERT INTO Revista(NoRevista, Nombre, ISSN, NombreAutor_IdAutor, FechaPublicada)
VALUES (7849, 'Mandu´a', 9860-2819, 1, '30-08-10');
INSERT INTO Revista(NoRevista, Nombre, ISSN, NombreAutor_IdAutor, FechaPublicada)
VALUES (2910, 'Estudios Foucaultianos', 4839-2912, 4, '16-10-13');
INSERT INTO Revista(NoRevista, Nombre, ISSN, NombreAutor_IdAutor, FechaPublicada)
VALUES (3902, 'EstudiosdeLenguayLiteraturaEspañolas', 3478-2819, 2, '04-01-17');

INSERT INTO Articulo(NoArticulo, Titulo, NombreAutor_IdAutor, PaginaInicio, PaginaFin)
VALUES (8493, 'Justo el 31', 3, 1, 10);
INSERT INTO Articulo(NoArticulo, Titulo, NombreAutor_IdAutor, PaginaInicio, PaginaFin)
VALUES (3010,'El Concepto de Poder', 4, 1, 4);
INSERT INTO Articulo(NoArticulo, Titulo, NombreAutor_IdAutor, PaginaInicio, PaginaFin)
VALUES (3921, 'Voz, Sentido y Dialogo ', 2, 1, 7);
INSERT INTO Articulo(NoArticulo, Titulo, NombreAutor_IdAutor, PaginaInicio, PaginaFin)
VALUES (9302, 'Modernismo Radical', 1, 1, 5);
INSERT INTO Articulo(NoArticulo, Titulo, NombreAutor_IdAutor, PaginaInicio, PaginaFin)
VALUES (8392, 'El Pensamiento', 5, 1, 8);

INSERT INTO Clientes(IdCLiente, Nombre, Email, Telefono)
VALUES (1, 'Mario Fernandez', 'mariofernandez@gmail.com', 39201921);
INSERT INTO Clientes(IdCLiente, Nombre, Email, Telefono)
VALUES (2, 'Ester Hernandez', 'esterhernandez@gmail.com', 29381920);
INSERT INTO Clientes(IdCLiente, Nombre, Email, Telefono)
VALUES (3, 'Orlando Jimenez', 'orlandojimenez@gmail.com', 10291293);
INSERT INTO Clientes(IdCLiente, Nombre, Email, Telefono)
VALUES (4, 'Andres De Leon', 'andresdeleon@gmail.com', 67392920);
INSERT INTO Clientes(IdCLiente, Nombre, Email, Telefono)
VALUES (5, 'Jimena Lopez', 'jimenalopez@gmail.com', 29010292);

INSERT INTO Suscripcion(IdSuscripcion, Clientes_IdCliente, TipoPago, Total)
VALUES (1, 1, 'TarjetaCredito', '120.50');
INSERT INTO Suscripcion(IdSuscripcion, Clientes_IdCliente, TipoPago, Total)
VALUES (2, 2, 'Efectivo', '125.75');
INSERT INTO Suscripcion(IdSuscripcion, Clientes_IdCliente, TipoPago, Total)
VALUES (3, 3, 'TarjetaCredito', '120.50');
INSERT INTO Suscripcion(IdSuscripcion, Clientes_IdCliente, TipoPago, Total)
VALUES (4, 4, 'TarjetaDebito', '120.75');
INSERT INTO Suscripcion(IdSuscripcion, Clientes_IdCliente, TipoPago, Total)
VALUES (5, 5, 'Efectivo', '125.75');

INSERT INTO Compra(IdCompra, Cliente_IdCliente, TipoPago, Total)
VALUES (1, 3, 'Efectivo', '30.50');
INSERT INTO Compra(IdCompra, Cliente_IdCliente, TipoPago, Total)
VALUES (2, 5, 'TarjetaCredito', '20.50');
INSERT INTO Compra(IdCompra, Cliente_IdCliente, TipoPago, Total)
VALUES (3, 4, 'Efectivo', '30.50');
INSERT INTO Compra(IdCompra, Cliente_IdCliente, TipoPago, Total)
VALUES (4, 1, 'Efectivo',  '30.50');
INSERT INTO Compra(IdCompra, Cliente_IdCliente, TipoPago, Total)
VALUES (5, 2, 'Efectivo', '30.50');

INSERT INTO PosiciondelArticulo(PosiciondeArticulo, Autor_IdAutor, Revista_NoRevista, Articulo_NoArticulo)
VALUES (1.1, 3, 1783, 8493);
INSERT INTO PosiciondelArticulo(PosiciondeArticulo, Autor_IdAutor, Revista_NoRevista, Articulo_NoArticulo)
VALUES (2.1, 4, 2910, 3010);
INSERT INTO PosiciondelArticulo(PosiciondeArticulo, Autor_IdAutor, Revista_NoRevista, Articulo_NoArticulo)
VALUES (3.2, 1, 7849, 9302);
INSERT INTO PosiciondelArticulo(PosiciondeArticulo, Autor_IdAutor, Revista_NoRevista, Articulo_NoArticulo)
VALUES (4.2, 5, 4839, 8392);
INSERT INTO PosiciondelArticulo(PosiciondeArticulo, Autor_IdAutor, Revista_NoRevista, Articulo_NoArticulo)
VALUES (5.1, 2, 3902, 3921);

INSERT INTO RevistaCompra(Compra_IdCompra, Revista_NoRevista)
VALUES (1, 7849);
INSERT INTO RevistaCompra(Compra_IdCompra, Revista_NoRevista)
VALUES (2, 4839);
INSERT INTO RevistaCompra(Compra_IdCompra, Revista_NoRevista)
VALUES (5, 2910);
INSERT INTO RevistaCompra(Compra_IdCompra, Revista_NoRevista)
VALUES (3, 1783);
INSERT INTO RevistaCompra(Compra_IdCompra, Revista_NoRevista)
VALUES (4, 3902);

INSERT INTO SuscripcionRevista(Suscripcion_IdSuscripcion, Revista_NoRevista)
VALUE (5,1783);
INSERT INTO SuscripcionRevista(Suscripcion_IdSuscripcion, Revista_NoRevista)
VALUE (1, 4839);
INSERT INTO SuscripcionRevista(Suscripcion_IdSuscripcion, Revista_NoRevista)
VALUE (3, 3902);
INSERT INTO SuscripcionRevista(Suscripcion_IdSuscripcion, Revista_NoRevista)
VALUE (4, 7849);
INSERT INTO SuscripcionRevista(Suscripcion_IdSuscripcion, Revista_NoRevista)
VALUE (2, 2910);

/*Selects*/
SELECT*FROM Autores;
SELECT*FROM Revista;
SELECT*FROM Articulo;
SELECT*FROM Clientes;
SELECT*FROM Suscripcion;
SELECT*FROM Compra;
SELECT*FROM PosiciondelArticulo;
SELECT*FROM RevistaCompra;
SELECT*FROM SuscripcionRevista;

/*Updates*/
UPDATE Autores SET Adscripcion = '175.30' WHERE IdAutor = 5;
UPDATE Revista SET FechaPublicada = '20-05-2017' WHERE NoRevista = 2;
UPDATE Articulo SET PaginaFin = 5 WHERE NoArticulo = 3;
UPDATE Clientes SET Telefono = 30291932 WHERE IdCliente = 3;
UPDATE Suscripcion SET Total = '130.25' WHERE IdSuscripcion = 5;
UPDATE Compra SET TipoPago = 'TarjetaCredito' WHERE IdCompra = 4;

/*Drops*/
DROP TABLE RevistaCompra;
DROP TABLE SuscripcionCompra;

/*Delete*/
DELETE FROM Autores WHERE IdAutor = 4;
DELETE FROM Revista WHERE NoRevista = 3;
DELETE FROM Articulo WHERE NoArticulo = 2;
DELETE FROM Clientes WHERE IdCliente = 1;
DELETE FROM Suscripcion WHERE IdSuscripcion = 3;
DELETE FROM Compra WHERE IdCompra = 5;

/*Selects*/
SELECT*FROM Autores;
SELECT*FROM Revista;
SELECT*FROM Articulo;
SELECT*FROM Clientes;
SELECT*FROM Suscripcion;
SELECT*FROM Compra;
SELECT*FROM PosiciondelArticulo;