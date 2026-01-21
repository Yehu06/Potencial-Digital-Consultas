
USE Potencial_Digital_SQL;

-- Estructura de tabla charla
CREATE TABLE charla (
  idCharla smallint primary key NOT NULL,
  Nombre varchar(80) NOT NULL,
  informacion_adicional varchar(max) null,
  puntuacion_media decimal(4,2) check (puntuacion_media between 1 and 10)
);

-- Estructura de tabla usuarios
CREATE TABLE usuarios (
  idUsuario smallint primary key NOT NULL IDENTITY(1,1),
  Nombre varchar(80) NOT NULL,
  Telefono char(9) NOT NULL,
  CONSTRAINT Id_telefono UNIQUE (Telefono)
);


-- Estructura de tabla ponentes
CREATE TABLE ponentes(
idponente tinyint primary key identity(1,1),
nombre varchar(80) not null,
sueldo decimal(6,2) not null,


);

-- Estructura de tabla fecha
CREATE TABLE fechas(
fecha date not null primary key,

);
