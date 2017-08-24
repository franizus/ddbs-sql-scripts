/*
CREAR VISTAS LOCALES
*/
create view carreraGiron as
select ID_CARRERA as 'ID', NOMBRE as 'Nombre', N_SEMESTRES as 'No. de Semestres'
from CARRERA_GIRON
go

create view materiaCarreraGiron as
select mg.NOMBRE as 'Nombre Materia', cg.NOMBRE as 'Nombre Carrera'
from CARRERA_GIRON cg join MATERIA_CARRERA_GIRON mcg
on cg.ID_CARRERA = mcg.ID_CARRERA
join MATERIA_GIRON mg
on mcg.ID_MATERIA = mg.ID_MATERIA
go

select * from materiaCarreraGiron
where [Nombre Carrera] = 'Antropologia'

set xact_abort oN
begin distributed transaction 
insert into V_CARRERA (ID_CARRERA, NOMBRE, N_SEMESTRES, CAMPUS, NODO) 
values (19, 'Nueva', 8, 1, 1)
commit
