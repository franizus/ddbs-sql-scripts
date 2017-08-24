set xact_abort oN
begin distributed transaction 
select * from V_CARRERA
commit

select * from PROFESOR_DATOS_GIRON
SELECT * FROM PROFESOR_NOMINA

ALTER PROCEDURE registrarPROFESOR
   @ID_PROF            int,
   @ID_CATEGORIA           int,
   @NOMBRE_PROF             char(10),
   @APELLIDO_PROF          char(10),
   @EMAIL_PROF          varchar(50),
   @CI_PROF           varchar(10),
   @NODO            int,
   @SALARIO			money,
   @FECHA_INICIO	date,
   @FECHA_SALIDA	date
AS 
BEGIN 
     INSERT INTO PROFESOR_DATOS_GIRON
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









