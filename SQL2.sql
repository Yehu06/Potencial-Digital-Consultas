
USE Potencial_Digital_SQL;

-- Estructura de tabla asistencia
CREATE TABLE asistencia (
    idcharla smallint NOT NULL,
    idusuario smallint NOT NULL,
   FOREIGN KEY (idcharla) REFERENCES charla (idCharla) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (idusuario) REFERENCES usuarios (idUsuario) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idcharla, idusuario)

    
);

-- Estructura de tabla  fecha_charla
CREATE TABLE fecha_charla (
idcharla smallint not null,
fecha date not null,
hora time not null,
FOREIGN KEY (idcharla) REFERENCES charla (idCharla) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (fecha) REFERENCES fechas (fecha) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (idcharla, fecha,hora)

    --Una charla se puede repetir en varias fechas/horas
  
);

-- Estructura de tabla  ponentes_charla
CREATE TABLE ponentes_charla (
idcharla smallint not null,
idponente tinyint not null,
FOREIGN KEY (idcharla) REFERENCES charla (idCharla) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (idponente) REFERENCES ponentes (idponente) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (idcharla,idponente)
  
);


--Los on delete y on update son  para que si se modifica o borra un registro en la tabla padre, este tambien borrara o modificara todo los registros relacionados en la tabla hijo (que son estas 3)
