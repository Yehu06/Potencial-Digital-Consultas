ALTER TABLE ponentes 
ADD CONSTRAINT DF_ponentes_sueldo 
DEFAULT 0 FOR sueldo;

INSERT INTO ponentes (nombre)
VALUES
('María López');