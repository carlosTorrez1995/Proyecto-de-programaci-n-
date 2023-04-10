
CREATE DATABASE Biblioteca;
GO


CREATE TABLE Libros (
    id_libro INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(50) NOT NULL,
    editorial VARCHAR(50) NOT NULL,
    anio_publicacion INT NOT NULL,
    genero VARCHAR(50) NOT NULL,
    num_paginas INT NOT NULL
);
select *from Ejemplares


CREATE TABLE Ejemplares (
    id_ejemplar INT PRIMARY KEY,
    id_libro INT FOREIGN KEY REFERENCES Libros(id_libro),
    ubicacion VARCHAR(50) NOT NULL,
    estado VARCHAR(10) NOT NULL
);


CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
);


CREATE TABLE Prestamos (
    id_prestamo INT PRIMARY KEY,
    id_ejemplar INT FOREIGN KEY REFERENCES Ejemplares(id_ejemplar),
    id_usuario INT FOREIGN KEY REFERENCES Usuarios(id_usuario),
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE NOT NULL,
    estado VARCHAR(10) NOT NULL
);

