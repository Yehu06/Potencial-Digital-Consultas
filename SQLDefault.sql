
ALTER TABLE ponentes 
ADD CONSTRAINT DF_ponentes_sueldo 
DEFAULT 0 FOR sueldo;
--He usado un alter table para no tener que borrar y crear otra vez la tabla de nuevo. He puesto que si no se pone un sueldo que se ponga como 0 por defecto

CREATE TABLE ponentes(
idponente tinyint primary key identity(1,1),
nombre varchar(80) not null,
sueldo decimal(6,2) default 0,
);
--Para poner un valor por defecto en sql server al crear una tabla seria asi

INSERT INTO ponentes (nombre)
VALUES

('María López');

--Cuando introduzca este insert, maria lopez tendra un sueldo de 0 ya que al no poner un sueldo se me ha puesto el de por defecto
