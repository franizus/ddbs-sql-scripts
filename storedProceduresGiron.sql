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



CREATE PROCEDURE registrarMATERIA_CARRERA
   @ID_MATERIA           int,
   @ID_CARRERA           int,
   @NODO					int
AS 
BEGIN 
	set xact_abort oN
	begin distributed transaction 
		 INSERT INTO V_MATERIA_CARRERA
		 ( 
			   ID_MATERIA,
			   ID_CARRERA,
			   NODO
		 ) 
		 VALUES 
		 ( 
			   @ID_MATERIA,
			   @ID_CARRERA,
			   @NODO
		 ) 
	commit
END 
go



select * from PROFESOR_DATOS_GIRON
SELECT * FROM PROFESOR_NOMINA

create PROCEDURE registrarPROFESOR
   @ID_PROF            int,
   @ID_CATEGORIA           int,
   @NOMBRE_PROF             varchar(10),
   @APELLIDO_PROF          varchar(10),
   @EMAIL_PROF          varchar(50),
   @CI_PROF           varchar(10),
   @NODO            int,
   @SALARIO			money,
   @FECHA_INICIO	date,
   @FECHA_SALIDA	date = null
AS 
BEGIN 
	set xact_abort oN
	begin distributed transaction
		 INSERT INTO V_PROFESOR_DATOS
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

create PROCEDURE actualizarPROFESOR
   @ID_PROF            int,
   @ID_CATEGORIA           int,
   @NOMBRE_PROF             varchar(10),
   @APELLIDO_PROF          varchar(10),
   @EMAIL_PROF          varchar(50),
   @CI_PROF           varchar(10),
   @NODO            int,
   @SALARIO			money,
   @FECHA_INICIO	date,
   @FECHA_SALIDA	date = null
AS 
BEGIN 
	set xact_abort oN
	begin distributed transaction 
		 UPDATE V_PROFESOR_DATOS SET
			   ID_CATEGORIA = @ID_CATEGORIA,
			   NOMBRE_PROF = @NOMBRE_PROF,
			   APELLIDO_PROF = @APELLIDO_PROF,
			   EMAIL_PROF = @EMAIL_PROF,
			   CI_PROF = @CI_PROF,
			   NODO = @NODO
		 WHERE ID_PROF = @ID_PROF
	commit
	UPDATE PROFESOR_NOMINA SET
		SALARIO = @SALARIO,
		FECHA_INICIO = @FECHA_INICIO,
		FECHA_SALIDA = @FECHA_SALIDA
	WHERE ID_PRO = @ID_PROF
END 
go



create PROCEDURE registrarESTUDIANTE
   @ID_ESTUDIANTE        int,
   @ID_CARRERA           int,
   @NOMBRE_EST           varchar(10),
   @APELLIDO_EST         varchar(10),
   @EMAIL_EST            varchar(50),
   @CI_EST               varchar(10),
   @NODO				int,
   @FECHA_INICIO		date,
   @FECHA_SALIDA		date = null
AS 
BEGIN 
	set xact_abort oN
	begin distributed transaction
		 INSERT INTO V_ESTUDIANTE
		 ( 
			   ID_ESTUDIANTE,
			   ID_CARRERA,
			   NOMBRE_EST,
			   APELLIDO_EST,
			   EMAIL_EST,
			   CI_EST,
			   FECHA_INICIO,
			   FECHA_SALIDA,
			   NODO
		 ) 
		 VALUES 
		 ( 
			   @ID_ESTUDIANTE,
			   @ID_CARRERA,
			   @NOMBRE_EST,
			   @APELLIDO_EST,
			   @EMAIL_EST,
			   @CI_EST,
			   @FECHA_INICIO,
			   @FECHA_SALIDA ,
			   @NODO
		 ) 
	commit
END 
go

create PROCEDURE actualizarESTUDIANTE
   @ID_ESTUDIANTE        int,
   @ID_CARRERA           int,
   @NOMBRE_EST           varchar(10),
   @APELLIDO_EST         varchar(10),
   @EMAIL_EST            varchar(50),
   @CI_EST               varchar(10),
   @NODO            int,
   @FECHA_INICIO	date,
   @FECHA_SALIDA	date = null
AS 
BEGIN 
	set xact_abort oN
	begin distributed transaction 
		 UPDATE V_ESTUDIANTE SET
			   ID_CARRERA = @ID_CARRERA,
			   NOMBRE_EST = @NOMBRE_EST,
			   APELLIDO_EST = @APELLIDO_EST,
			   EMAIL_EST = @EMAIL_EST,
			   CI_EST = @CI_EST,
			   FECHA_INICIO = @FECHA_INICIO,
			   FECHA_SALIDA = @FECHA_INICIO,
			   NODO = @NODO
		 WHERE ID_ESTUDIANTE = @ID_ESTUDIANTE
	commit
END 
go