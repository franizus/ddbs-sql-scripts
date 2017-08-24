set xact_abort oN
begin distributed transaction 
select * from V_CARRERA
commit

select * from CARRERA_GIRON

CREATE PROCEDURE registrarCARRERA
   @ID_CARRERA           int,
   @NOMBRE               varchar(20),
   @N_SEMESTRES          int,
   @CAMPUS               int,
   @NODO                 int
AS 
BEGIN 
	set xact_abort oN
	begin distributed transaction 
		 INSERT INTO V_CARRERA
		 ( 
			   ID_CARRERA,
			   NOMBRE,
			   N_SEMESTRES,
			   CAMPUS,
			   NODO
		 ) 
		 VALUES 
		 ( 
			   @ID_CARRERA,
			   @NOMBRE,
			   @N_SEMESTRES,
			   @CAMPUS,
			   @NODO
		 ) 
	commit
END 
go

CREATE PROCEDURE actualizarCARRERA
   @ID_CARRERA           int,
   @NOMBRE               varchar(20),
   @N_SEMESTRES          int,
   @CAMPUS               int,
   @NODO                 int
AS 
BEGIN 
	set xact_abort oN
	begin distributed transaction 
		 UPDATE V_CARRERA SET
			   NOMBRE = @NOMBRE,
			   N_SEMESTRES = @N_SEMESTRES,
			   CAMPUS = @CAMPUS,
			   NODO = @NODO
		 WHERE ID_CARRERA = @ID_CARRERA
	commit
END 
go



select * from PROFESOR_DATOS_GIRON
SELECT * FROM PROFESOR_NOMINA

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
	set xact_abort oN
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
	INSERT INTO PROFESOR_NOMINA
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
END 
go
