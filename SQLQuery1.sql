select * from BASEPG.distribuidaCampus.[public].carrera

EXEC sp_addlinkedserver
'WIN-LI1RVIVJS5R','SQL Server'

EXEC sp_addlinkedsrvlogin 'WIN-LI1RVIVJS5R','true'

select * from [WIN-LI1RVIVJS5R].prueba.dbo.personas

