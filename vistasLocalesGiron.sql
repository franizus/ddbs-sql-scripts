/*
CREAR VISTAS LOCALES
*/
create view CarreraGiron as
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

create view profesorDatosGiron as
select ID_PROF as 'ID', NOM_CAT as 'Categoria', CI_PROF as 'Cedula', NOMBRE_PROF as 'Nombre', APELLIDO_PROF as 'Apellido', EMAIL_PROF as 'E-Mail'
from PROFESOR_DATOS_GIRON pdg join CATEGORIA c
on pdg.ID_CATEGORIA = c.ID_CATEGORIA
go

create view profesorNomina as
select ID_PROF as 'ID', NOMBRE_PROF as 'Nombre', APELLIDO_PROF as 'Apellido', SALARIO as 'Salario', FECHA_INICIO as 'Fecha Inicio', FECHA_SALIDA as 'Fecha Salida'
from PROFESOR_DATOS_GIRON pdg join PROFESOR_NOMINA pn
on pdg.ID_PROF = pn.ID_PRO
go

create view profesorGiron as
select ID_PROF, ID_CATEGORIA, NOMBRE_PROF, APELLIDO_PROF, EMAIL_PROF, CI_PROF, SALARIO, FECHA_INICIO, FECHA_SALIDA
from PROFESOR_DATOS_GIRON pdg join PROFESOR_NOMINA pn
on pdg.ID_PROF = pn.ID_PRO
go

create view estudianteGiron as
select ID_ESTUDIANTE as 'ID', NOMBRE as 'Carrera', CI_EST as 'Cedula', NOMBRE_EST as 'Nombre', APELLIDO_EST as 'Apellido', EMAIL_EST as 'E-Mail', FECHA_INICIO as 'Fecha Inicio', FECHA_SALIDA as 'Fecha Salida'
from ESTUDIANTE_GIRON eg join CARRERA_GIRON cg
on eg.ID_CARRERA = cg.ID_CARRERA
go



select [Nombre Materia] from materiaCarreraGiron where not [Nombre Carrera]

select * from materiaCarreraGiron
where not [Nombre Carrera] = 'Antropologia'

set xact_abort oN
begin distributed transaction 
insert into V_CARRERA (ID_CARRERA, NOMBRE, N_SEMESTRES, CAMPUS, NODO) 
values (19, 'Nueva', 8, 1, 1)
commit
