set xact_abort oN
begin distributed transaction 
select * from V_CARRERA
commit

select * from PROFESOR_DATOS_QUITUMBE

CREATE PROCEDURE registrarPROFESOR
   @ID_PROF            int,
   @ID_CATEGORIA           int,
   @NOMBRE_PROF             varchar(10),
   @APELLIDO_PROF          varchar(10),
   @EMAIL_PROF          varchar(50),
   @CI_PROF           varchar(10),
   @NODO            int,
   @SALARIO			money,
   @FECHA_INICIO	date,
   @FECHA_SALIDA	date
AS 
BEGIN 
	begin distributed transaction 
		 INSERT INTO V_PROFESOR
		 ( 
			   ID_PROF,
			   ID_CATEGORIA,
			   NOMBRE_PROF,
			   APELLIDO_PROF,
			   EMAIL_PROF,
			   CI_PROF,
			   NODO
		 ) 
		 VALUES 
		 ( 
			   @ID_PROF,
			   @ID_CATEGORIA,
			   @NOMBRE_PROF,
			   @APELLIDO_PROF,
			   @EMAIL_PROF,
			   @CI_PROF,
			   @NODO
		 ) 
	commit
	begin distributed transaction 
		 INSERT INTO [WIN-PS6SN3G9U9I].UPS_GIRON.dbo.PROFESOR_NOMINA
		 ( 
			   ID_PRO,
			   SALARIO,
			   FECHA_INICIO,
			   FECHA_SALIDA
		 ) 
		 VALUES 
		 ( 
			   @ID_PROF,
			   @SALARIO,
			   @FECHA_INICIO,
			   @FECHA_SALIDA
		 ) 
	 commit
END 
go

EXEC registrarPROFESOR 44, 8, 'David', 'Guerrero', 'dag@ups.edu.ec', '1723458952', 2, 5000, '2013-12-01', NULL