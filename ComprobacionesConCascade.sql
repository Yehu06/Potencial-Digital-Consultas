--Comprobaciones del delete cascade al BORRAR EN LA TABLA PADRE:
--1.Primero miramos las charlas que hay con el id 1

SELECT * FROM charla;
SELECT * FROM asistencia;
SELECT * FROM fecha_charla;
SELECT * FROM ponentes_charla;

--2.Ahora vamos a eliminar todas las charlas donde el id sea 1
DELETE FROM charla
WHERE idCharla = 1;

--3.Finalmente comprobamos que se han borrado todas las filas relacionadas con ese id
SELECT * FROM asistencia;
SELECT * FROM fecha_charla;
SELECT * FROM ponentes_charla;


--Comprobaciones del delete cascade al BORRAR EN LA TABLA HIJO:

--Veamos que pasa si eliminamos algo de la tabla hijo que sigue siendo necesario

DELETE FROM asistencia
WHERE idcharla = 2 AND idusuario = 2;


--En este caso si deja ya que la tabla asistencia no es la padre de otra tabla


--Comprobaciones del delete cascade al modificar EN LA TABLA PADRE:

--1.Vemos donde el id de charla es 2

SELECT * FROM charla WHERE idCharla = 2;
SELECT * FROM asistencia WHERE idcharla = 2;
SELECT * FROM fecha_charla WHERE idcharla = 2;
SELECT * FROM ponentes_charla WHERE idcharla = 2;

--2.Ahora modificaremos ese id en la tabla padre para ver como se cambia en todas las demas

UPDATE charla
SET idCharla = 20
WHERE idCharla = 2;

--3.Comprobamos que el cambio se ha realizado en las que antes tenian id 2
SELECT * FROM charla WHERE idCharla = 20;
SELECT * FROM asistencia WHERE idcharla = 20;
SELECT * FROM fecha_charla WHERE idcharla = 20;
SELECT * FROM ponentes_charla WHERE idcharla = 20;



