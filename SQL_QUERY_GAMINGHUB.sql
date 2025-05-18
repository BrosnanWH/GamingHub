CREATE DATABASE GamingHub;
GO
USE GamingHub;

CREATE TABLE Usuarios (
    ID INT PRIMARY KEY IDENTITY,
    NombreUsuario NVARCHAR(50),
    Edad INT,
    Correo NVARCHAR(100),
    Contrasena NVARCHAR(100)
);

CREATE TABLE Juegos (
    ID INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(100),
    Categoria NVARCHAR(50),
    Descripcion TEXT
);

CREATE TABLE Preferencias (
    ID INT PRIMARY KEY IDENTITY,
    IDUsuario INT FOREIGN KEY REFERENCES Usuarios(ID),
    IDJuego INT FOREIGN KEY REFERENCES Juegos(ID)
);

CREATE TABLE Comentarios (
    ID INT PRIMARY KEY IDENTITY,
    IDUsuario INT FOREIGN KEY REFERENCES Usuarios(ID),
    IDJuego INT FOREIGN KEY REFERENCES Juegos(ID),
    Comentario TEXT
);

CREATE TABLE Mensajes (
    ID INT PRIMARY KEY IDENTITY,
    IDUsuario INT,
    IDDestinatario INT,
    Contenido TEXT,
    FechaHora DATETIME
);
