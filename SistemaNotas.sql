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