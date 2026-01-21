--Comprobaciones al eliminar y modificar en la tabla padre 


--Si usamos las mismas consultas de antes no nos dejara ya que nos dira que esta tabla tiene registros en otras tablas (hijas)

DELETE FROM charla
WHERE idCharla = 1;

UPDATE charla
SET idCharla = 10
WHERE idCharla = 2;



--Cabe a destacar que si quisiesemos quitar las restricciones sin borrar la tabla, como estas se aplican en las foreigns keys, tendriamos que eliminar la foreing key y luego agregarla sin el cascade

ALTER TABLE asistencia
DROP CONSTRAINT Nombre_de_la_clave;


--Y luego crearla otra vez sin los cascade

ALTER TABLE asistencia
ADD CONSTRAINT FK_asistencia_charla FOREIGN KEY (idcharla) REFERENCES charla (idCharla);
