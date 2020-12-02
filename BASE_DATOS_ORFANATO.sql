/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     30/11/2020 14:22:43                          */
/*==============================================================*/


alter table ACTIVIDAD
   drop constraint PK_ACTIVIDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ACTIVIDAD')
            and   type = 'U')
   drop table ACTIVIDAD
go

alter table ACTIVIDAD_TRABAJADOR
   drop constraint PK_ACTIVIDAD_TRABAJADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ACTIVIDAD_TRABAJADOR')
            and   type = 'U')
   drop table ACTIVIDAD_TRABAJADOR
go

alter table ADOPCION
   drop constraint PK_ADOPCION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADOPCION')
            and   type = 'U')
   drop table ADOPCION
go

alter table ADOPTANTE
   drop constraint PK_ADOPTANTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADOPTANTE')
            and   type = 'U')
   drop table ADOPTANTE
go

alter table CARGO
   drop constraint PK_CARGO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CARGO')
            and   type = 'U')
   drop table CARGO
go

alter table CITA
   drop constraint PK_CITA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CITA')
            and   type = 'U')
   drop table CITA
go

alter table ENFERMEDAD_DISCAPACIDAD
   drop constraint PK_ENFERMEDAD_DISCAPACIDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ENFERMEDAD_DISCAPACIDAD')
            and   type = 'U')
   drop table ENFERMEDAD_DISCAPACIDAD
go

alter table ESTADO
   drop constraint PK_ESTADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTADO')
            and   type = 'U')
   drop table ESTADO
go

alter table GRUPO
   drop constraint PK_GRUPO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GRUPO')
            and   type = 'U')
   drop table GRUPO
go

alter table HISTORIAL_ENFERMEDAD
   drop constraint PK_HISTORIAL_ENFERMEDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HISTORIAL_ENFERMEDAD')
            and   type = 'U')
   drop table HISTORIAL_ENFERMEDAD
go

alter table HISTORIAL_MEDICO
   drop constraint PK_HISTORIAL_MEDICO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HISTORIAL_MEDICO')
            and   type = 'U')
   drop table HISTORIAL_MEDICO
go

alter table HUERFANO
   drop constraint PK_HUERFANO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HUERFANO')
            and   type = 'U')
   drop table HUERFANO
go

alter table OBSERVACION
   drop constraint PK_OBSERVACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OBSERVACION')
            and   type = 'U')
   drop table OBSERVACION
go

alter table ORFANATO
   drop constraint PK_ORFANATO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ORFANATO')
            and   type = 'U')
   drop table ORFANATO
go

alter table TRABAJADOR
   drop constraint PK_TRABAJADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRABAJADOR')
            and   type = 'U')
   drop table TRABAJADOR
go

/*==============================================================*/
/* Table: ACTIVIDAD                                             */
/*==============================================================*/
create table ACTIVIDAD (
   ACTIVIDAD_ID         smallint             not null,
   TRABAJADOR_ID        smallint             not null,
   GRUPO_ID             smallint             not null,
   ACTIVIDAD_DESCRIPCION varchar(200)         null,
   ACTIVIDAD_FECHA      datetime             null
)
go

alter table ACTIVIDAD
   add constraint PK_ACTIVIDAD primary key nonclustered (ACTIVIDAD_ID)
go

/*==============================================================*/
/* Table: ACTIVIDAD_TRABAJADOR                                  */
/*==============================================================*/
create table ACTIVIDAD_TRABAJADOR (
   TRABAJADOR_ID        smallint             not null,
   ACTIVIDAD_ID         smallint             not null
)
go

alter table ACTIVIDAD_TRABAJADOR
   add constraint PK_ACTIVIDAD_TRABAJADOR primary key nonclustered (TRABAJADOR_ID, ACTIVIDAD_ID)
go

/*==============================================================*/
/* Table: ADOPCION                                              */
/*==============================================================*/
create table ADOPCION (
   ADOPCION_ID          smallint             not null,
   ORFANATO_ID          smallint             not null,
   TRABAJADOR_ID        smallint             not null,
   ADOPTANTE_ID         smallint             not null,
   ADOPCION_FECHA       datetime             null
)
go

alter table ADOPCION
   add constraint PK_ADOPCION primary key nonclustered (ADOPCION_ID)
go

/*==============================================================*/
/* Table: ADOPTANTE                                             */
/*==============================================================*/
create table ADOPTANTE (
   ADOPTANTE_ID         smallint             not null,
   ADOPTANTE_CI         int                  null,
   ADOPTANTE_NOMBRES    varchar(80)          null,
   ADOPTANTE_APELLIDOS  varchar(80)          null,
   ADOPTANTE_TELEFONO   int                  null,
   ADOPTANTE_CORREO     varchar(100)         null
)
go

alter table ADOPTANTE
   add constraint PK_ADOPTANTE primary key nonclustered (ADOPTANTE_ID)
go

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   CARGO_ID             smallint             not null,
   CARGO_DESCRIPCION    varchar(50)          null
)
go

alter table CARGO
   add constraint PK_CARGO primary key nonclustered (CARGO_ID)
go

/*==============================================================*/
/* Table: CITA                                                  */
/*==============================================================*/
create table CITA (
   CITA_ID              smallint             not null,
   HUERFANO_IDENT       int                  not null,
   TRABAJADOR_ID        smallint             not null,
   OBSERVACION_ID       int                  not null,
   CITA_DESCRIPCION     varchar(200)         null,
   CITA_FECHA           datetime             null
)
go

alter table CITA
   add constraint PK_CITA primary key nonclustered (CITA_ID)
go

/*==============================================================*/
/* Table: ENFERMEDAD_DISCAPACIDAD                               */
/*==============================================================*/
create table ENFERMEDAD_DISCAPACIDAD (
   ENFERMEDAD_ID        int                  not null,
   ENFERMEDAD_TIPO      varchar(50)          null
)
go

alter table ENFERMEDAD_DISCAPACIDAD
   add constraint PK_ENFERMEDAD_DISCAPACIDAD primary key nonclustered (ENFERMEDAD_ID)
go

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   ESTADO_ID            smallint             not null,
   ESTADO_DESCRIPCION   varchar(100)         null
)
go

alter table ESTADO
   add constraint PK_ESTADO primary key nonclustered (ESTADO_ID)
go

/*==============================================================*/
/* Table: GRUPO                                                 */
/*==============================================================*/
create table GRUPO (
   TRABAJADOR_ID        smallint             not null,
   GRUPO_ID             smallint             not null,
   GRUPO_DESCRIPCION    varchar(50)          null,
   GRUPO_RANGO          varchar(50)          null
)
go

alter table GRUPO
   add constraint PK_GRUPO primary key nonclustered (TRABAJADOR_ID, GRUPO_ID)
go

/*==============================================================*/
/* Table: HISTORIAL_ENFERMEDAD                                  */
/*==============================================================*/
create table HISTORIAL_ENFERMEDAD (
   ENFERMEDAD_ID        int                  not null,
   HISTORIAL_ID         int                  not null
)
go

alter table HISTORIAL_ENFERMEDAD
   add constraint PK_HISTORIAL_ENFERMEDAD primary key nonclustered (ENFERMEDAD_ID, HISTORIAL_ID)
go

/*==============================================================*/
/* Table: HISTORIAL_MEDICO                                      */
/*==============================================================*/
create table HISTORIAL_MEDICO (
   HISTORIAL_ID         int                  not null,
   HISTORIAL_DETALLE    varchar(200)             null
)
go

alter table HISTORIAL_MEDICO
   add constraint PK_HISTORIAL_MEDICO primary key nonclustered (HISTORIAL_ID)
go

/*==============================================================*/
/* Table: HUERFANO                                              */
/*==============================================================*/
create table HUERFANO (
   HUERFANO_IDENT       int                  not null,
   ORFANATO_ID          smallint             null,
   TRABAJADOR_ID        smallint             not null,
   GRUPO_ID             smallint             not null,
   HISTORIAL_ID         int                  not null,
   ESTADO_ID            smallint             not null,
   ADOPCION_ID          smallint             null,
   HUERFANO_NOMBRE      varchar(80)          null,
   HUERFANO_APELLIDO    varchar(80)          null,
   HUERFANO_GENERO      varchar(20)          null,
   HUERFANO_FECHA_NACIMIENTO datetime             null
)
go

alter table HUERFANO
   add constraint PK_HUERFANO primary key nonclustered (HUERFANO_IDENT)
go

/*==============================================================*/
/* Table: OBSERVACION                                           */
/*==============================================================*/
create table OBSERVACION (
   OBSERVACION_ID       int                  not null,
   HISTORIAL_ID         int                  not null,
   OBSERVACION_DESCRIPCION varchar(500)         null
)
go

alter table OBSERVACION
   add constraint PK_OBSERVACION primary key nonclustered (OBSERVACION_ID)
go

/*==============================================================*/
/* Table: ORFANATO                                              */
/*==============================================================*/
create table ORFANATO (
   ORFANATO_ID          smallint             not null,
   ORFANATO_DIRECCION   varchar(200)         null,
   ORFANATO_TELEFONO    int                  null,
   ORFANATO_CORREO      varchar(100)         null
)
go

alter table ORFANATO
   add constraint PK_ORFANATO primary key nonclustered (ORFANATO_ID)
go

/*==============================================================*/
/* Table: TRABAJADOR                                            */
/*==============================================================*/
create table TRABAJADOR (
   TRABAJADOR_ID        smallint             not null,
   CARGO_ID             smallint             not null,
   ORFANATO_ID          smallint             not null,
   TRABAJADOR_CI        int                  null,
   TRABAJADOR_NOMBRES   varchar(80)          null,
   TRABAJADOR_APELLIDOS varchar(80)          null,
   TRABAJADOR_PROFESION varchar(60)          null,
   TRABAJADOR_TELEFONO  int                  null,
   TRABAJADOR_CORREO    varchar(100)         null
)
go

alter table TRABAJADOR
   add constraint PK_TRABAJADOR primary key nonclustered (TRABAJADOR_ID)
go

