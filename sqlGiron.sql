/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     23/08/2017 15:50:14                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTUDIANTE_GIRON') and o.name = 'FK_ESTUDIAN_ESTUDIANT_CARRERA_')
alter table ESTUDIANTE_GIRON
   drop constraint FK_ESTUDIAN_ESTUDIANT_CARRERA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTUDIANTE_MATERIA_GIRON') and o.name = 'FK_ESTUDIAN_ESTUDIANT_ESTUDIAN')
alter table ESTUDIANTE_MATERIA_GIRON
   drop constraint FK_ESTUDIAN_ESTUDIANT_ESTUDIAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTUDIANTE_MATERIA_GIRON') and o.name = 'FK_ESTUDIAN_ESTUDIANT_MATERIA_')
alter table ESTUDIANTE_MATERIA_GIRON
   drop constraint FK_ESTUDIAN_ESTUDIANT_MATERIA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIA_CARRERA_GIRON') and o.name = 'FK_MATERIA__MATERIA_C_MATERIA_')
alter table MATERIA_CARRERA_GIRON
   drop constraint FK_MATERIA__MATERIA_C_MATERIA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATERIA_CARRERA_GIRON') and o.name = 'FK_MATERIA__MATERIA_C_CARRERA_')
alter table MATERIA_CARRERA_GIRON
   drop constraint FK_MATERIA__MATERIA_C_CARRERA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROFESOR_DATOS_GIRON') and o.name = 'FK_PROFESOR_ESTA_CATEGORI')
alter table PROFESOR_DATOS_GIRON
   drop constraint FK_PROFESOR_ESTA_CATEGORI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROFESOR_MATERIA_GIRON') and o.name = 'FK_PROFESOR_PROFESOR__PROFESOR')
alter table PROFESOR_MATERIA_GIRON
   drop constraint FK_PROFESOR_PROFESOR__PROFESOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROFESOR_MATERIA_GIRON') and o.name = 'FK_PROFESOR_PROFESOR__MATERIA_')
alter table PROFESOR_MATERIA_GIRON
   drop constraint FK_PROFESOR_PROFESOR__MATERIA_
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CARRERA_GIRON')
            and   type = 'U')
   drop table CARRERA_GIRON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORIA')
            and   type = 'U')
   drop table CATEGORIA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTUDIANTE_GIRON')
            and   name  = 'ESTUDIANTE_CARRERA_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTUDIANTE_GIRON.ESTUDIANTE_CARRERA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTUDIANTE_GIRON')
            and   type = 'U')
   drop table ESTUDIANTE_GIRON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTUDIANTE_MATERIA_GIRON')
            and   name  = 'ESTUDIANTE_MATERIA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTUDIANTE_MATERIA_GIRON.ESTUDIANTE_MATERIA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTUDIANTE_MATERIA_GIRON')
            and   name  = 'ESTUDIANTE_MATERIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTUDIANTE_MATERIA_GIRON.ESTUDIANTE_MATERIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTUDIANTE_MATERIA_GIRON')
            and   type = 'U')
   drop table ESTUDIANTE_MATERIA_GIRON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATERIA_CARRERA_GIRON')
            and   name  = 'MATERIA_CARRERA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATERIA_CARRERA_GIRON.MATERIA_CARRERA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATERIA_CARRERA_GIRON')
            and   name  = 'MATERIA_CARRERA_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATERIA_CARRERA_GIRON.MATERIA_CARRERA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MATERIA_CARRERA_GIRON')
            and   type = 'U')
   drop table MATERIA_CARRERA_GIRON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MATERIA_GIRON')
            and   type = 'U')
   drop table MATERIA_GIRON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROFESOR_DATOS_GIRON')
            and   name  = 'ESTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROFESOR_DATOS_GIRON.ESTA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROFESOR_DATOS_GIRON')
            and   type = 'U')
   drop table PROFESOR_DATOS_GIRON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROFESOR_MATERIA_GIRON')
            and   name  = 'PROFESOR_MATERIA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROFESOR_MATERIA_GIRON.PROFESOR_MATERIA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROFESOR_MATERIA_GIRON')
            and   name  = 'PROFESOR_MATERIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROFESOR_MATERIA_GIRON.PROFESOR_MATERIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROFESOR_MATERIA_GIRON')
            and   type = 'U')
   drop table PROFESOR_MATERIA_GIRON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROFESOR_NOMINA')
            and   type = 'U')
   drop table PROFESOR_NOMINA
go

/*==============================================================*/
/* Table: CARRERA_GIRON                                         */
/*==============================================================*/
create table CARRERA_GIRON (
   ID_CARRERA           int                  not null,
   NOMBRE               char(20)             not null,
   N_SEMESTRES          int                  not null,
   CAMPUS               int                  not null,
   NODO                 int                  not null,
   constraint PK_CARRERA_GIRON primary key (ID_CARRERA)
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
/* Table: ESTUDIANTE_GIRON                                      */
/*==============================================================*/
create table ESTUDIANTE_GIRON (
   ID_ESTUDIANTE        int                  not null,
   ID_CARRERA           int                  null,
   NOMBRE_EST           char(10)             not null,
   APELLIDO_EST         char(10)             not null,
   EMAIL_EST            varchar(50)          null,
   CI_EST               varchar(10)          not null,
   FECHA_INICIO         datetime             not null,
   FECHA_SALIDA         datetime             null,
   NODO                 int                  not null,
   constraint PK_ESTUDIANTE_GIRON primary key (ID_ESTUDIANTE)
)
go

/*==============================================================*/
/* Index: ESTUDIANTE_CARRERA_FK                                 */
/*==============================================================*/




create nonclustered index ESTUDIANTE_CARRERA_FK on ESTUDIANTE_GIRON (ID_CARRERA ASC)
go

/*==============================================================*/
/* Table: ESTUDIANTE_MATERIA_GIRON                              */
/*==============================================================*/
create table ESTUDIANTE_MATERIA_GIRON (
   ID_ESTUDIANTE        int                  not null,
   ID_MATERIA           int                  not null,
   NODO                 int                  not null,
   constraint PK_ESTUDIANTE_MATERIA_GIRON primary key (ID_ESTUDIANTE, ID_MATERIA)
)
go

/*==============================================================*/
/* Index: ESTUDIANTE_MATERIA_FK                                 */
/*==============================================================*/




create nonclustered index ESTUDIANTE_MATERIA_FK on ESTUDIANTE_MATERIA_GIRON (ID_ESTUDIANTE ASC)
go

/*==============================================================*/
/* Index: ESTUDIANTE_MATERIA2_FK                                */
/*==============================================================*/




create nonclustered index ESTUDIANTE_MATERIA2_FK on ESTUDIANTE_MATERIA_GIRON (ID_MATERIA ASC)
go

/*==============================================================*/
/* Table: MATERIA_CARRERA_GIRON                                 */
/*==============================================================*/
create table MATERIA_CARRERA_GIRON (
   ID_MATERIA           int                  not null,
   ID_CARRERA           int                  not null,
   NODO                 int                  not null,
   constraint PK_MATERIA_CARRERA_GIRON primary key (ID_MATERIA, ID_CARRERA)
)
go

/*==============================================================*/
/* Index: MATERIA_CARRERA_FK                                    */
/*==============================================================*/




create nonclustered index MATERIA_CARRERA_FK on MATERIA_CARRERA_GIRON (ID_MATERIA ASC)
go

/*==============================================================*/
/* Index: MATERIA_CARRERA2_FK                                   */
/*==============================================================*/




create nonclustered index MATERIA_CARRERA2_FK on MATERIA_CARRERA_GIRON (ID_CARRERA ASC)
go

/*==============================================================*/
/* Table: MATERIA_GIRON                                         */
/*==============================================================*/
create table MATERIA_GIRON (
   ID_MATERIA           int                  not null,
   NOMBRE               char(20)             not null,
   SEM_REF              int                  null,
   N_CREDITOS           int                  not null,
   NODO                 int                  not null,
   constraint PK_MATERIA_GIRON primary key (ID_MATERIA)
)
go

/*==============================================================*/
/* Table: PROFESOR_DATOS_GIRON                                  */
/*==============================================================*/
create table PROFESOR_DATOS_GIRON (
   ID_PROF              int                  not null,
   ID_CATEGORIA         int                  null,
   NOMBRE_PROF          char(10)             not null,
   APELLIDO_PROF        char(10)             not null,
   EMAIL_PROF           varchar(50)          null,
   CI_PROF              varchar(10)          not null,
   NODO                 int                  not null,
   constraint PK_PROFESOR_DATOS_GIRON primary key (ID_PROF)
)
go

/*==============================================================*/
/* Index: ESTA_FK                                               */
/*==============================================================*/




create nonclustered index ESTA_FK on PROFESOR_DATOS_GIRON (ID_CATEGORIA ASC)
go

/*==============================================================*/
/* Table: PROFESOR_MATERIA_GIRON                                */
/*==============================================================*/
create table PROFESOR_MATERIA_GIRON (
   ID_PROF              int                  not null,
   ID_MATERIA           int                  not null,
   NODO                 int                  not null,
   constraint PK_PROFESOR_MATERIA_GIRON primary key (ID_PROF, ID_MATERIA)
)
go

/*==============================================================*/
/* Index: PROFESOR_MATERIA_FK                                   */
/*==============================================================*/




create nonclustered index PROFESOR_MATERIA_FK on PROFESOR_MATERIA_GIRON (ID_PROF ASC)
go

/*==============================================================*/
/* Index: PROFESOR_MATERIA2_FK                                  */
/*==============================================================*/




create nonclustered index PROFESOR_MATERIA2_FK on PROFESOR_MATERIA_GIRON (ID_MATERIA ASC)
go

/*==============================================================*/
/* Table: PROFESOR_NOMINA                                       */
/*==============================================================*/
create table PROFESOR_NOMINA (
   ID_PRO               int                  not null,
   SALARIO              money                not null,
   FECHA_INICIO         datetime             not null,
   FECHA_SALIDA         datetime             null,
   constraint PK_PROFESOR_NOMINA primary key (ID_PRO)
)
go

alter table ESTUDIANTE_GIRON
   add constraint FK_ESTUDIAN_ESTUDIANT_CARRERA_ foreign key (ID_CARRERA)
      references CARRERA_GIRON (ID_CARRERA)
go

alter table ESTUDIANTE_MATERIA_GIRON
   add constraint FK_ESTUDIAN_ESTUDIANT_ESTUDIAN foreign key (ID_ESTUDIANTE)
      references ESTUDIANTE_GIRON (ID_ESTUDIANTE)
go

alter table ESTUDIANTE_MATERIA_GIRON
   add constraint FK_ESTUDIAN_ESTUDIANT_MATERIA_ foreign key (ID_MATERIA)
      references MATERIA_GIRON (ID_MATERIA)
go

alter table MATERIA_CARRERA_GIRON
   add constraint FK_MATERIA__MATERIA_C_MATERIA_ foreign key (ID_MATERIA)
      references MATERIA_GIRON (ID_MATERIA)
go

alter table MATERIA_CARRERA_GIRON
   add constraint FK_MATERIA__MATERIA_C_CARRERA_ foreign key (ID_CARRERA)
      references CARRERA_GIRON (ID_CARRERA)
go

alter table PROFESOR_DATOS_GIRON
   add constraint FK_PROFESOR_ESTA_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
go

alter table PROFESOR_MATERIA_GIRON
   add constraint FK_PROFESOR_PROFESOR__PROFESOR foreign key (ID_PROF)
      references PROFESOR_DATOS_GIRON (ID_PROF)
go

alter table PROFESOR_MATERIA_GIRON
   add constraint FK_PROFESOR_PROFESOR__MATERIA_ foreign key (ID_MATERIA)
      references MATERIA_GIRON (ID_MATERIA)
go

