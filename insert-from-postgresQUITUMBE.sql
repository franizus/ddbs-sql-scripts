/*MATERIA Y CARRERA*/
INSERT INTO CARRERA_QUITUMBE (ID_CARRERA, NOMBRE, N_SEMESTRES, CAMPUS, NODO)
SELECT ID_CARRERA, NOMBRE, N_SEMESTRES, CAMPUS, 2
FROM [BASE_UPS].UPS.[public].carrera
WHERE CAMPUS = 2

--temp
INSERT INTO MATERIA_CARRERA_QUITUMBE (ID_MATERIA, ID_CARRERA, NODO)
SELECT ID_MATERIA, ID_CARRERA, 2
FROM [BASE_UPS].UPS.[public].materia_carrera
WHERE ID_CARRERA IN (SELECT ID_CARRERA from CARRERA_QUITUMBE)

INSERT INTO MATERIA_QUITUMBE (ID_MATERIA, NOMBRE, SEM_REF, N_CREDITOS, NODO)
SELECT ID_MATERIA, NOMBRE, SEM_REF, N_CREDITOS, 2
FROM [BASE_UPS].UPS.[public].materia
WHERE ID_MATERIA IN (SELECT ID_MATERIA from MATERIA_CARRERA_QUITUMBE)

--vale
INSERT INTO MATERIA_QUITUMBE (ID_MATERIA, NOMBRE, SEM_REF, N_CREDITOS, NODO)
SELECT ID_MATERIA, NOMBRE, SEM_REF, N_CREDITOS, 2
FROM temp_QUITUMBE.dbo.MATERIA_QUITUMBE

INSERT INTO MATERIA_CARRERA_QUITUMBE (ID_MATERIA, ID_CARRERA, NODO)
SELECT ID_MATERIA, ID_CARRERA, 2
FROM [BASE_UPS].UPS.[public].materia_carrera
WHERE ID_CARRERA IN (SELECT ID_CARRERA from CARRERA_QUITUMBE)



/*MATERIA Y PROFESOR*/
--temp
INSERT INTO PROFESOR_MATERIA_QUITUMBE (ID_PROF, ID_MATERIA, NODO)
SELECT ID_PROF, ID_MATERIA, 2
FROM [BASE_UPS].UPS.[public].profesor_materia
WHERE ID_MATERIA IN (SELECT ID_MATERIA from MATERIA_QUITUMBE)

INSERT INTO PROFESOR_DATOS_QUITUMBE (ID_PROF, ID_CATEGORIA, NOMBRE_PROF, APELLIDO_PROF, EMAIL_PROF, CI_PROF, NODO)
SELECT ID_PROF, ID_CATEGORIA, NOMBRE_PROF, APELLIDO_PROF, EMAIL_PROF, CI_PROF, 2
FROM [BASE_UPS].UPS.[public].profesor
WHERE ID_PROF IN (SELECT ID_PROF from PROFESOR_MATERIA_QUITUMBE)

select * from CATEGORIA

--vale
INSERT INTO PROFESOR_DATOS_QUITUMBE (ID_PROF, ID_CATEGORIA, NOMBRE_PROF, APELLIDO_PROF, EMAIL_PROF, CI_PROF, NODO)
SELECT ID_PROF, ID_CATEGORIA, NOMBRE_PROF, APELLIDO_PROF, EMAIL_PROF, CI_PROF, 2
FROM temp_QUITUMBE.dbo.PROFESOR_DATOS_QUITUMBE

INSERT INTO PROFESOR_MATERIA_QUITUMBE (ID_PROF, ID_MATERIA, NODO)
SELECT ID_PROF, ID_MATERIA, 2
FROM [BASE_UPS].UPS.[public].profesor_materia
WHERE ID_MATERIA IN (SELECT ID_MATERIA from MATERIA_QUITUMBE)



/*MATERIA Y ESTUDIANTE*/
--temp
INSERT INTO ESTUDIANTE_MATERIA_QUITUMBE (ID_ESTUDIANTE, ID_MATERIA, NODO)
SELECT ID_ESTUDIANTE, ID_MATERIA, 2
FROM [BASE_UPS].UPS.[public].estudiante_materia
WHERE ID_MATERIA IN (SELECT ID_MATERIA from MATERIA_QUITUMBE)

INSERT INTO ESTUDIANTE_QUITUMBE (ID_ESTUDIANTE, ID_CARRERA, NOMBRE_EST, APELLIDO_EST, EMAIL_EST, CI_EST, FECHA_INICIO, FECHA_SALIDA, NODO)
SELECT ID_ESTUDIANTE, ID_CARRERA, NOMBRE_EST, APELLIDO_EST, EMAIL_EST, CI_EST, FECHA_INICIO, FECHA_SALIDA, 2
FROM [BASE_UPS].UPS.[public].estudiante
WHERE ID_CARRERA IN (SELECT ID_CARRERA from CARRERA_QUITUMBE)

--vale
INSERT INTO ESTUDIANTE_QUITUMBE (ID_ESTUDIANTE, ID_CARRERA, NOMBRE_EST, APELLIDO_EST, EMAIL_EST, CI_EST, FECHA_INICIO, FECHA_SALIDA, NODO)
SELECT ID_ESTUDIANTE, ID_CARRERA, NOMBRE_EST, APELLIDO_EST, EMAIL_EST, CI_EST, FECHA_INICIO, FECHA_SALIDA, 2
FROM temp_QUITUMBE.dbo.ESTUDIANTE_QUITUMBE

INSERT INTO ESTUDIANTE_MATERIA_QUITUMBE (ID_ESTUDIANTE, ID_MATERIA, NODO)
SELECT ID_ESTUDIANTE, ID_MATERIA, 2
FROM [BASE_UPS].UPS.[public].estudiante_materia
WHERE ID_MATERIA IN (SELECT ID_MATERIA from MATERIA_QUITUMBE)