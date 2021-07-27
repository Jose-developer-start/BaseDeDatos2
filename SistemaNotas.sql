/*
*MariaDB
*@Autor: José Deodanes
*
*/

/*CREATING DATABASE Sistema_nota*/

/*VERIFIED DATABASE*/
DROP TABLE IF EXISTS sistema_nota; 
CREATE DATABASE sistema_nota charset utf8;

/*CREATING TABLES FOR Sistema_nota*/
CREATE TABLE Estudiante(Carnet VARCHAR(10) PRIMARY KEY NOT NULL,Nombre VARCHAR(30) NOT NULL,Apellido VARCHAR(30) NOT NULL,Telefono INT,Direccion TEXT NOT NULL, Email VARCHAR(20),Fecha_nac DATE NOT NULL);

CREATE TABLE Asignaturas(Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, Nombre VARCHAR(30) NOT NULL); 

CREATE TABLE Carrera(Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, Nombre VARCHAR(30)NOT NULL);

CREATE TABLE Notas(Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, Nota_1 FLOAT(10,2),Nota_2 FLOAT(10,2), Nota_3 FLOAT(10,2), Nota_4 FLOAT(10,2), Nota_final FLOAT(10,2));

CREATE TABLE Carrera_Estudiante(Carnet_estudiante VARCHAR(10),Id_carrera INT); 

 CREATE TABLE Estudiante_Asignatura_Nota(Carnet_estudiante VARCHAR(10),Id_asignatura INT, Id_notas INT);

/*INSERT DATA*/

INSERT INTO Estudiante(Carnet,Nombre,Apellido,Telefono,Direccion,Email,Fecha_nac) VALUES('DP01135790','José','Deodanes',50374474442,'San Isidro, calle principal, Panchimalco,San Salvador,El salvador','josedeodanes99@gmail.com',2000-06-12);

INSERT INTO Estudiante(Carnet,Nombre,Apellido,Telefono,Direccion,Email,Fecha_nac) VALUES('DP01135200','Alexander','Rivas',50374472233,'La Paz,San Salvador,El salvador','alexader.vasques99@gmail.com',2001-2-12);

INSERT INTO Estudiante(Carnet,Nombre,Apellido,Telefono,Direccion,Email,Fecha_nac) VALUES('DP01135400','Maria Nelly','Vazques',50374479921,'San Salvador,El salvador','maria.nelly99@gmail.com',2001-2-12);

INSERT INTO notas(Nota_1,Nota_2,Nota_3,Nota_4,Nota_final) VALUES(9.2,7.2,10,9.2,9),(7,7,7,7,7),(9.2,10,9.9,9.5,9.8);

INSERT INTO asignaturas(Nombre) VALUES('Progrmacion 3'),('Base de datos 2'),('Metodos y tecnicas de investigacion');

INSERT INTO carrera(nombre) VALUES('Licenciatura en ciencias de la computacion'),('Licenciatura en trabajo social'),('Ingenieria en sistemas informaticos');

INSERT INTO carrera_estudiante(Carnet_estudiante,Id_carrera) VALUES('DP01135200',1),('DP01135300',3),('DP01135790',2);

INSERT INTO estudiante_asignatura_nota(Carnet_estudiante,Id_asignatura,Id_notas) VALUES('DP01135200',1,1),('DP01135400',2,2),('DP01135790',3,3);