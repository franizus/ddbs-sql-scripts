/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     23/08/2017 15:51:28                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTUDIANTE_MATERIA_QUITUMBE') and o.name = 'FK_ESTUDIAN_ESTUDIANT_ESTUDIAN')
alter table ESTUDIANTE_MATERIA_QUITUMBE
   drop constraint FK_ESTUDIAN_ESTUDIANT_ESTUDIAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTUDIANTE_MATERIA_QUITUMBE') and o.name = 'FK_ESTUDIAN_ESTUDIANT_MATERIA_')
alter table ESTUDIANTE_MATERIA_QUITUMBE
   drop constraint FK_ESTUDIAN_ESTUDIANT_MATERIA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTUDIANTE_QUITUMBE') and o.name = 'FK_ESTUDIAN_ESTUDIANT_CARRERA_')
alter table ESTUDIANTE_QUITUMBE
   drop constraint FK_ESTUDIAN_ESTUDIANT_CARRERA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIA_CARRERA_QUITUMBE') and o.name = 'FK_MATERIA__MATERIA_C_MATERIA_')
alter table MATERIA_CARRERA_QUITUMBE
   drop constraint FK_MATERIA__MATERIA_C_MATERIA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIA_CARRERA_QUITUMBE') and o.name = 'FK_MATERIA__MATERIA_C_CARRERA_')
alter table MATERIA_CARRERA_QUITUMBE
   drop constraint FK_MATERIA__MATERIA_C_CARRERA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROFESOR_DATOS_QUITUMBE') and o.name = 'FK_PROFESOR_ESTA_CATEGORI')
alter table PROFESOR_DATOS_QUITUMBE
   drop constraint FK_PROFESOR_ESTA_CATEGORI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROFESOR_MATERIA_QUITUMBE') and o.name = 'FK_PROFESOR_PROFESOR__PROFESOR')
alter table PROFESOR_MATERIA_QUITUMBE
   drop constraint FK_PROFESOR_PROFESOR__PROFESOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROFESOR_MATERIA_QUITUMBE') and o.name = 'FK_PROFESOR_PROFESOR__MATERIA_')
alter table PROFESOR_MATERIA_QUITUMBE
   drop constraint FK_PROFESOR_PROFESOR__MATERIA_
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CARRERA_QUITUMBE')
            and   type = 'U')
   drop table CARRERA_QUITUMBE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORIA')
            and   type = 'U')
   drop table CATEGORIA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTUDIANTE_MATERIA_QUITUMBE')
            and   name  = 'ESTUDIANTE_MATERIA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTUDIANTE_MATERIA_QUITUMBE.ESTUDIANTE_MATERIA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTUDIANTE_MATERIA_QUITUMBE')
            and   name  = 'ESTUDIANTE_MATERIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTUDIANTE_MATERIA_QUITUMBE.ESTUDIANTE_MATERIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTUDIANTE_MATERIA_QUITUMBE')
            and   type = 'U')
   drop table ESTUDIANTE_MATERIA_QUITUMBE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTUDIANTE_QUITUMBE')
            and   name  = 'ESTUDIANTE_CARRERA_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTUDIANTE_QUITUMBE.ESTUDIANTE_CARRERA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTUDIANTE_QUITUMBE')
            and   type = 'U')
   drop table ESTUDIANTE_QUITUMBE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATERIA_CARRERA_QUITUMBE')
            and   name  = 'MATERIA_CARRERA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATERIA_CARRERA_QUITUMBE.MATERIA_CARRERA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATERIA_CARRERA_QUITUMBE')
            and   name  = 'MATERIA_CARRERA_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATERIA_CARRERA_QUITUMBE.MATERIA_CARRERA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MATERIA_CARRERA_QUITUMBE')
            and   type = 'U')
   drop table MATERIA_CARRERA_QUITUMBE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MATERIA_QUITUMBE')
            and   type = 'U')
   drop table MATERIA_QUITUMBE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROFESOR_DATOS_QUITUMBE')
            and   name  = 'ESTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROFESOR_DATOS_QUITUMBE.ESTA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROFESOR_DATOS_QUITUMBE')
            and   type = 'U')
   drop table PROFESOR_DATOS_QUITUMBE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROFESOR_MATERIA_QUITUMBE')
            and   name  = 'PROFESOR_MATERIA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROFESOR_MATERIA_QUITUMBE.PROFESOR_MATERIA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROFESOR_MATERIA_QUITUMBE')
            and   name  = 'PROFESOR_MATERIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROFESOR_MATERIA_QUITUMBE.PROFESOR_MATERIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROFESOR_MATERIA_QUITUMBE')
            and   type = 'U')
   drop table PROFESOR_MATERIA_QUITUMBE
go

/*==============================================================*/
/* Table: CARRERA_QUITUMBE                                      */
/*==============================================================*/
create table CARRERA_QUITUMBE (
   ID_CARRERA           int                  not null,
   NOMBRE               char(20)             not null,
   N_SEMESTRES          int                  not null,
   CAMPUS               int                  not null,
   NODO                 int                  not null,
   constraint PK_CARRERA_QUITUMBE primary key (ID_CARRERA)
)
go

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA (
   ID_CATEGORIA         int                  not null,
   NOM_CAT              char(20)             not null,
   constraint PK_CATEGORIA primary key (ID_CATEGORIA)
)
go

/*==============================================================*/
/* Table: ESTUDIANTE_MATERIA_QUITUMBE                           */
/*==============================================================*/
create table ESTUDIANTE_MATERIA_QUITUMBE (
   ID_ESTUDIANTE        int                  not null,
   ID_MATERIA           int                  not null,
   NODO                 int                  not null,
   constraint PK_ESTUDIANTE_MATERIA_QUITUMBE primary key (ID_ESTUDIANTE, ID_MATERIA)
)
go

/*==============================================================*/
/* Index: ESTUDIANTE_MATERIA_FK                                 */
/*==============================================================*/




create nonclustered index ESTUDIANTE_MATERIA_FK on ESTUDIANTE_MATERIA_QUITUMBE (ID_ESTUDIANTE ASC)
go

/*==============================================================*/
/* Index: ESTUDIANTE_MATERIA2_FK                                */
/*==============================================================*/




create nonclustered index ESTUDIANTE_MATERIA2_FK on ESTUDIANTE_MATERIA_QUITUMBE (ID_MATERIA ASC)
go

/*==============================================================*/
/* Table: ESTUDIANTE_QUITUMBE                                   */
/*==============================================================*/
create table ESTUDIANTE_QUITUMBE (
   ID_ESTUDIANTE        int                  not null,
   ID_CARRERA           int                  null,
   NOMBRE_EST           char(10)             not null,
   APELLIDO_EST         char(10)             not null,
   EMAIL_EST            varchar(50)          null,
   CI_EST               varchar(10)          not null,
   FECHA_INICIO         datetime             not null,
   FECHA_SALIDA         datetime             null,
   NODO                 int                  not null,
   constraint PK_ESTUDIANTE_QUITUMBE primary key (ID_ESTUDIANTE)
)
go

/*==============================================================*/
/* Index: ESTUDIANTE_CARRERA_FK                                 */
/*==============================================================*/




create nonclustered index ESTUDIANTE_CARRERA_FK on ESTUDIANTE_QUITUMBE (ID_CARRERA ASC)
go

/*==============================================================*/
/* Table: MATERIA_CARRERA_QUITUMBE                              */
/*==============================================================*/
create table MATERIA_CARRERA_QUITUMBE (
   ID_MATERIA           int                  not null,
   ID_CARRERA           int                  not null,
   NODO                 int                  not null,
   constraint PK_MATERIA_CARRERA_QUITUMBE primary key (ID_MATERIA, ID_CARRERA)
)
go

/*==============================================================*/
/* Index: MATERIA_CARRERA_FK                                    */
/*==============================================================*/




create nonclustered index MATERIA_CARRERA_FK on MATERIA_CARRERA_QUITUMBE (ID_MATERIA ASC)
go

/*==============================================================*/
/* Index: MATERIA_CARRERA2_FK                                   */
/*==============================================================*/




create nonclustered index MATERIA_CARRERA2_FK on MATERIA_CARRERA_QUITUMBE (ID_CARRERA ASC)
go

/*==============================================================*/
/* Table: MATERIA_QUITUMBE                                      */
/*==============================================================*/
create table MATERIA_QUITUMBE (
   ID_MATERIA           int                  not null,
   NOMBRE               char(20)             not null,
   SEM_REF              int                  null,
   N_CREDITOS           int                  not null,
   NODO                 int                  not null,
   constraint PK_MATERIA_QUITUMBE primary key (ID_MATERIA)
)
go

/*==============================================================*/
/* Table: PROFESOR_DATOS_QUITUMBE                               */
/*==============================================================*/
create table PROFESOR_DATOS_QUITUMBE (
   ID_PROF              int                  not null,
   ID_CATEGORIA         int                  null,
   NOMBRE_PROF          char(10)             not null,
   APELLIDO_PROF        char(10)             not null,
   EMAIL_PROF           varchar(50)          null,
   CI_PROF              varchar(10)          not null,
   NODO                 int                  not null,
   constraint PK_PROFESOR_DATOS_QUITUMBE primary key (ID_PROF)
)
go

/*==============================================================*/
/* Index: ESTA_FK                                               */
/*==============================================================*/




create nonclustered index ESTA_FK on PROFESOR_DATOS_QUITUMBE (ID_CATEGORIA ASC)
go

/*==============================================================*/
/* Table: PROFESOR_MATERIA_QUITUMBE                             */
/*==============================================================*/
create table PROFESOR_MATERIA_QUITUMBE (
   ID_PROF              int                  not null,
   ID_MATERIA           int                  not null,
   NODO                 int                  not null,
   constraint PK_PROFESOR_MATERIA_QUITUMBE primary key (ID_PROF, ID_MATERIA)
)
go

/*==============================================================*/
/* Index: PROFESOR_MATERIA_FK                                   */
/*==============================================================*/




create nonclustered index PROFESOR_MATERIA_FK on PROFESOR_MATERIA_QUITUMBE (ID_PROF ASC)
go

/*==============================================================*/
/* Index: PROFESOR_MATERIA2_FK                                  */
/*==============================================================*/




create nonclustered index PROFESOR_MATERIA2_FK on PROFESOR_MATERIA_QUITUMBE (ID_MATERIA ASC)
go

alter table ESTUDIANTE_MATERIA_QUITUMBE
   add constraint FK_ESTUDIAN_ESTUDIANT_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE_QUITUMBE (ID_ESTUDIANTE)
go

alter table ESTUDIANTE_MATERIA_QUITUMBE
   add constraint FK_ESTUDIAN_ESTUDIANT_MATERIA_ foreign key (ID_MATERIA)
      references MATERIA_QUITUMBE (ID_MATERIA)
go

alter table ESTUDIANTE_QUITUMBE
   add constraint FK_ESTUDIAN_ESTUDIANT_CARRERA_ foreign key (ID_CARRERA)
      references CARRERA_QUITUMBE (ID_CARRERA)
go

alter table MATERIA_CARRERA_QUITUMBE
   add constraint FK_MATERIA__MATERIA_C_MATERIA_ foreign key (ID_MATERIA)
      references MATERIA_QUITUMBE (ID_MATERIA)
go

alter table MATERIA_CARRERA_QUITUMBE
   add constraint FK_MATERIA__MATERIA_C_CARRERA_ foreign key (ID_CARRERA)
      references CARRERA_QUITUMBE (ID_CARRERA)
go

alter table PROFESOR_DATOS_QUITUMBE
   add constraint FK_PROFESOR_ESTA_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
go

alter table PROFESOR_MATERIA_QUITUMBE
   add constraint FK_PROFESOR_PROFESOR__PROFESOR foreign key (ID_PROF)
      references PROFESOR_DATOS_QUITUMBE (ID_PROF)
go

alter table PROFESOR_MATERIA_QUITUMBE
   add constraint FK_PROFESOR_PROFESOR__MATERIA_ foreign key (ID_MATERIA)
      references MATERIA_QUITUMBE (ID_MATERIA)
go

