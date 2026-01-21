
ALTER TABLE ponentes 
ADD CONSTRAINT DF_ponentes_sueldo 
DEFAULT 0 FOR sueldo;
--He usado un alter table para no tener que borrar y crear otra vez la tabla de nuevo. He puesto que si no se pone un sueldo que se ponga como 0 por defecto




INSERT INTO ponentes (nombre)
VALUES

('María López');
