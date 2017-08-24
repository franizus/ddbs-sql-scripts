/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     23/08/2017 13:44:31                          */
/*==============================================================*/


drop index CARRERA_PK;

drop table CARRERA;

drop index CATEGORIA_PK;

drop table CATEGORIA;

drop index ESTUDIANTE_CARRERA_FK;

drop index ESTUDIANTE_PK;

drop table ESTUDIANTE;

drop index ESTUDIANTE_MATERIA2_FK;

drop index ESTUDIANTE_MATERIA_FK;

drop index ESTUDIANTE_MATERIA_PK;

drop table ESTUDIANTE_MATERIA;

drop index MATERIA_PK;

drop table MATERIA;

drop index MATERIA_CARRERA2_FK;

drop index MATERIA_CARRERA_FK;

drop index MATERIA_CARRERA_PK;

drop table MATERIA_CARRERA;

drop index ESTA_FK;

drop index PROFESOR_PK;

drop table PROFESOR;

drop index PROFESOR_MATERIA2_FK;

drop index PROFESOR_MATERIA_FK;

drop index PROFESOR_MATERIA_PK;

drop table PROFESOR_MATERIA;

/*==============================================================*/
/* Table: CARRERA                                               */
/*==============================================================*/
create table CARRERA (
   ID_CARRERA           INT4                 not null,
   NOMBRE               CHAR(20)             not null,
   N_SEMESTRES          INT4                 not null,
   CAMPUS               INT4                 not null,
   constraint PK_CARRERA primary key (ID_CARRERA)
);

/*==============================================================*/
/* Index: CARRERA_PK                                            */
/*==============================================================*/
create unique index CARRERA_PK on CARRERA (
ID_CARRERA
);

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA (
   ID_CATEGORIA         INT4                 not null,
   NOM_CAT              CHAR(20)             not null,
   constraint PK_CATEGORIA primary key (ID_CATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_PK                                          */
/*==============================================================*/
create unique index CATEGORIA_PK on CATEGORIA (
ID_CATEGORIA
);

/*==============================================================*/
/* Table: ESTUDIANTE                                            */
/*==============================================================*/
create table ESTUDIANTE (
   ID_ESTUDIANTE        INT4                 not null,
   ID_CARRERA           INT4                 null,
   NOMBRE_EST           CHAR(10)             not null,
   APELLIDO_EST         CHAR(10)             not null,
   EMAIL_EST            VARCHAR(50)          null,
   CI_EST               VARCHAR(10)          not null,
   FECHA_INICIO         DATE                 not null,
   FECHA_SALIDA         DATE                 null,
   constraint PK_ESTUDIANTE primary key (ID_ESTUDIANTE)
);

/*==============================================================*/
/* Index: ESTUDIANTE_PK                                         */
/*==============================================================*/
create unique index ESTUDIANTE_PK on ESTUDIANTE (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Index: ESTUDIANTE_CARRERA_FK                                 */
/*==============================================================*/
create  index ESTUDIANTE_CARRERA_FK on ESTUDIANTE (
ID_CARRERA
);

/*==============================================================*/
/* Table: ESTUDIANTE_MATERIA                                    */
/*==============================================================*/
create table ESTUDIANTE_MATERIA (
   ID_ESTUDIANTE        INT4                 not null,
   ID_MATERIA           INT4                 not null,
   constraint PK_ESTUDIANTE_MATERIA primary key (ID_ESTUDIANTE, ID_MATERIA)
);

/*==============================================================*/
/* Index: ESTUDIANTE_MATERIA_PK                                 */
/*==============================================================*/
create unique index ESTUDIANTE_MATERIA_PK on ESTUDIANTE_MATERIA (
ID_ESTUDIANTE,
ID_MATERIA
);

/*==============================================================*/
/* Index: ESTUDIANTE_MATERIA_FK                                 */
/*==============================================================*/
create  index ESTUDIANTE_MATERIA_FK on ESTUDIANTE_MATERIA (
ID_ESTUDIANTE
);

/*==============================================================*/
/* Index: ESTUDIANTE_MATERIA2_FK                                */
/*==============================================================*/
create  index ESTUDIANTE_MATERIA2_FK on ESTUDIANTE_MATERIA (
ID_MATERIA
);

/*==============================================================*/
/* Table: MATERIA                                               */
/*==============================================================*/
create table MATERIA (
   ID_MATERIA           INT4                 not null,
   NOMBRE               CHAR(20)             not null,
   SEM_REF              INT4                 null,
   N_CREDITOS           INT4                 not null,
   constraint PK_MATERIA primary key (ID_MATERIA)
);

/*==============================================================*/
/* Index: MATERIA_PK                                            */
/*==============================================================*/
create unique index MATERIA_PK on MATERIA (
ID_MATERIA
);

/*==============================================================*/
/* Table: MATERIA_CARRERA                                       */
/*==============================================================*/
create table MATERIA_CARRERA (
   ID_MATERIA           INT4                 not null,
   ID_CARRERA           INT4                 not null,
   constraint PK_MATERIA_CARRERA primary key (ID_MATERIA, ID_CARRERA)
);

/*==============================================================*/
/* Index: MATERIA_CARRERA_PK                                    */
/*==============================================================*/
create unique index MATERIA_CARRERA_PK on MATERIA_CARRERA (
ID_MATERIA,
ID_CARRERA
);

/*==============================================================*/
/* Index: MATERIA_CARRERA_FK                                    */
/*==============================================================*/
create  index MATERIA_CARRERA_FK on MATERIA_CARRERA (
ID_MATERIA
);

/*==============================================================*/
/* Index: MATERIA_CARRERA2_FK                                   */
/*==============================================================*/
create  index MATERIA_CARRERA2_FK on MATERIA_CARRERA (
ID_CARRERA
);

/*==============================================================*/
/* Table: PROFESOR                                              */
/*==============================================================*/
create table PROFESOR (
   ID_PROF              INT4                 not null,
   ID_CATEGORIA         INT4                 null,
   NOMBRE_PROF          CHAR(10)             not null,
   APELLIDO_PROF        CHAR(10)             not null,
   EMAIL_PROF           VARCHAR(50)          null,
   CI_PROF              VARCHAR(10)          not null,
   SALARIO              MONEY                not null,
   FECHA_INICIO         DATE                 not null,
   FECHA_SALIDA         DATE                 null,
   constraint PK_PROFESOR primary key (ID_PROF)
);

/*==============================================================*/
/* Index: PROFESOR_PK                                           */
/*==============================================================*/
create unique index PROFESOR_PK on PROFESOR (
ID_PROF
);

/*==============================================================*/
/* Index: ESTA_FK                                               */
/*==============================================================*/
create  index ESTA_FK on PROFESOR (
ID_CATEGORIA
);

/*==============================================================*/
/* Table: PROFESOR_MATERIA                                      */
/*==============================================================*/
create table PROFESOR_MATERIA (
   ID_PROF              INT4                 not null,
   ID_MATERIA           INT4                 not null,
   constraint PK_PROFESOR_MATERIA primary key (ID_PROF, ID_MATERIA)
);

/*==============================================================*/
/* Index: PROFESOR_MATERIA_PK                                   */
/*==============================================================*/
create unique index PROFESOR_MATERIA_PK on PROFESOR_MATERIA (
ID_PROF,
ID_MATERIA
);

/*==============================================================*/
/* Index: PROFESOR_MATERIA_FK                                   */
/*==============================================================*/
create  index PROFESOR_MATERIA_FK on PROFESOR_MATERIA (
ID_PROF
);

/*==============================================================*/
/* Index: PROFESOR_MATERIA2_FK                                  */
/*==============================================================*/
create  index PROFESOR_MATERIA2_FK on PROFESOR_MATERIA (
ID_MATERIA
);

alter table ESTUDIANTE
   add constraint FK_ESTUDIAN_ESTUDIANT_CARRERA foreign key (ID_CARRERA)
      references CARRERA (ID_CARRERA)
      on delete restrict on update restrict;

alter table ESTUDIANTE_MATERIA
   add constraint FK_ESTUDIAN_ESTUDIANT_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE (ID_ESTUDIANTE)
      on delete restrict on update restrict;

alter table ESTUDIANTE_MATERIA
   add constraint FK_ESTUDIAN_ESTUDIANT_MATERIA foreign key (ID_MATERIA)
      references MATERIA (ID_MATERIA)
      on delete restrict on update restrict;

alter table MATERIA_CARRERA
   add constraint FK_MATERIA__MATERIA_C_MATERIA foreign key (ID_MATERIA)
      references MATERIA (ID_MATERIA)
      on delete restrict on update restrict;

alter table MATERIA_CARRERA
   add constraint FK_MATERIA__MATERIA_C_CARRERA foreign key (ID_CARRERA)
      references CARRERA (ID_CARRERA)
      on delete restrict on update restrict;

alter table PROFESOR
   add constraint FK_PROFESOR_ESTA_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
      on delete restrict on update restrict;

alter table PROFESOR_MATERIA
   add constraint FK_PROFESOR_PROFESOR__PROFESOR foreign key (ID_PROF)
      references PROFESOR (ID_PROF)
      on delete restrict on update restrict;

alter table PROFESOR_MATERIA
   add constraint FK_PROFESOR_PROFESOR__MATERIA foreign key (ID_MATERIA)
      references MATERIA (ID_MATERIA)
      on delete restrict on update restrict;

