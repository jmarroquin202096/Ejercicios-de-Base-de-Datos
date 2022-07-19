CREATE DATABASE TiendaMascotas;

 USE TiendaMascotas;
 
 /*Crear nueva Tabla*/
 CREATE TABLE Clientes(
 IdCliente int(3) AUTO_INCREMENT NOT NULL,
 Nombres varchar(45),
 Apellidos varchar(45),
 CUI bigint(13),
 Telefono int(8),
primary key(IdCliente)
);

/* Insertar los Datos a la  Tabla */
INSERT INTO Clientes(Nombres, Apellidos, CUI, Telefono) 
VALUES ('Mario Adolfo', 'Molina Marquez', 2029209209123, 68490330);
INSERT INTO Clientes(Nombres, Apellidos, CUI, Telefono) 
VALUES ('Javier Ronaldo', 'Villatoro Ruiz', 2022039102930, 39094032);
INSERT INTO Clientes(Nombres, Apellidos, CUI, Telefono) 
VALUES ('Mariana Luisa', 'Cruz Ramirez', 2025393829182, 74839291);

/*Crear nueva Tabla*/
 CREATE TABLE Mascotas(
 IdMascotas int(3) AUTO_INCREMENT NOT NULL,
 Nombre varchar(45),
 Tipo varchar(45),
 Genero varchar(45),
 Raza varchar(45),
 CodigoIdentificacion int(5),
primary key(IdMascotas)
);
/* Insertar los Datos a la  Tabla */
INSERT INTO Mascotas(Nombre,Tipo, Genero, Raza, CodigoIdentificacion)
VALUES ('Perro', 'Canino', 'Macho', 'PastorAleman', 23491);
INSERT INTO Mascotas(Nombre,Tipo, Genero, Raza, CodigoIdentificacion)
VALUES ('Gato', 'Felino', 'Hembra', 'Persa', 45673);
INSERT INTO Mascotas(Nombre,Tipo, Genero, Raza, CodigoIdentificacion)
VALUES ('Canario', 'Ave', 'Masculino', 'Roller', 78345);

/*Crear nueva Tabla*/
 CREATE TABLE Productos(
 IdProducto int(3) AUTO_INCREMENT NOT NULL,
 CodigoBarra int(5),
 Nombre varchar(45),
 Marca varchar(45),
 Precio dec(5,2),
primary key(IdProducto)
);

/* Insertar los Datos a la  Tabla */
INSERT INTO Productos(CodigoBarra, Nombre, Marca, Precio)
VALUES (57483, 'ConcentradoparaPerro', 'Beneful', 159.59);
INSERT INTO Productos(CodigoBarra, Nombre, Marca, Precio)
VALUES (34210, 'ConcentradoparaGato', 'MeawMix', 59.90);
INSERT INTO Productos(CodigoBarra, Nombre, Marca, Precio)
VALUES (83049, 'DailyBlend', 'WildHarvest', 25.00);

/*Crear nueva Tabla*/
 CREATE TABLE Vacunas(
 IdVacuna int(3) AUTO_INCREMENT NOT NULL,
 Nombre varchar(45),
 Codigo int(5),
 DosisAplicar varchar(45),
 NombreEnfermedad varchar(45),
primary key(IdVacuna)
);

/* Insertar los Datos a la  Tabla */
INSERT INTO Vacunas(Nombre, Codigo, DosisAplicar, NombreEnfermedad)
VALUES ('VacunacontraRabia', 23123, 'UnacadaAño', 'Rabia');
INSERT INTO Vacunas(Nombre, Codigo, DosisAplicar, NombreEnfermedad)
VALUES ('Trivalente', 14930, 'UnacadaDosMeses', 'Calcivirus');
INSERT INTO Vacunas(Nombre, Codigo, DosisAplicar, NombreEnfermedad)
VALUES ('Diftervac', 48302, 'UnacadaMes', 'Difteroviruela');

SELECT*FROM Clientes;
SELECT*FROM Mascotas;
SELECT*FROM Productos;
SELECT*FROM Vacunas;