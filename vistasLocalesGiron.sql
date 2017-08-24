/*
CREAR VISTAS LOCALES
*/
create view CarreraGiron as
select ID_CARRERA as 'ID', NOMBRE as 'Nombre', N_SEMESTRES as 'No. de Semestres', CAMPUS as 'Campus', NODO as 'Nodo'
from CARRERA_GIRON
go

set xact_abort oN
begin distributed transaction 
insert into V_CARRERA (ID_CARRERA, NOMBRE, N_SEMESTRES, CAMPUS, NODO) 
values (19, 'Nueva', 8, 1, 1)
commit
