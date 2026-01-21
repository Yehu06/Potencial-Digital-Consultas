USE Potencial_Digital_SQL;

----------------------------------
-- INSERTS TABLA charla
----------------------------------
INSERT INTO charla (Nombre, informacion_adicional, puntuacion_media)
VALUES
('Introducción a la Inteligencia Artificial', 'Charla básica sobre IA', 8.50),
('Ciberseguridad para principiantes', 'Conceptos clave de seguridad informática', 7.80),
('Desarrollo Web Moderno', 'HTML, CSS y JavaScript en 2025', 9.20);

----------------------------------
-- INSERTS TABLA usuarios
----------------------------------
INSERT INTO usuarios (Nombre, Telefono)
VALUES
('Carlos Pérez', '600123456'),
('Ana Gómez', '600987654'),
('Luis Martínez', '600555444');

----------------------------------
-- INSERTS TABLA ponentes
----------------------------------
INSERT INTO ponentes (nombre, sueldo)
VALUES
('María López', 1800.50),
('Javier Torres', 2100.00),
('Lucía Fernández', 1950.75);

----------------------------------
-- INSERTS TABLA fechas
----------------------------------
INSERT INTO fechas (fecha)
VALUES
('2026-02-10'),
('2026-02-11'),
('2026-02-12');

----------------------------------
-- INSERTS TABLA asistencia
----------------------------------
INSERT INTO asistencia (idcharla, idusuario)
VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 1),
(3, 3);

----------------------------------
-- INSERTS TABLA fecha_charla
----------------------------------
INSERT INTO fecha_charla (idcharla, fecha, hora)
VALUES
(1, '2026-02-10', '10:00'),
(1, '2026-02-11', '12:00'),
(2, '2026-02-10', '16:00'),
(3, '2026-02-12', '09:30');

----------------------------------
-- INSERTS TABLA ponentes_charla
----------------------------------
INSERT INTO ponentes_charla (idcharla, idponente)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 2);

