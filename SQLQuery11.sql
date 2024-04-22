create database udemydb
go
use udemydb
go
create schema Acce
go
create schema Gral
go 
create schema Curs
go
CREATE TABLE [Acce].[tbUsuarios](
	[Usu_Id] [int] IDENTITY(1,1) primary key ,
	[Usu_Usuario] [varchar](50) ,
	[Usu_Contrasena] [varchar](max)  NULL,
	
	[Ins_Id] [int]  NULL,
	[Rol_Id] [int]  NULL,
	[Usu_Admin] [bit]  NULL,
	[Usu_UsuarioCreacion] [int]  NULL,
	[Usu_FechaCreacion] [datetime]  NULL,
	[Usu_UsuarioModificacion] [int] NULL,
	[Usu_FechaModificacion] [datetime] NULL,
	[Usu_Estado] [bit] default 1)
GO
--desde aca
CREATE TABLE [Acce].[tbPantallas](
	[Pan_Id] [int] IDENTITY(1,1)  primary key,
	[Pan_Descripcion] [varchar](30)  NULL,
	[Pan_UsuarioCreacion] [int]  NULL,
	[Pan_FechaCreacion] [datetime]  NULL,
	[Pan_UsuarioModificacion] [int] NULL,
	[Pan_FechaModificacion] [datetime] NULL,
	[Pan_Estado] [bit]  default 1,
	constraint FK_tbPantallas_Pan_UsuarioCreacion foreign key (Pan_UsuarioCreacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbPantallas_Pan_UsuarioModificacion foreign key (Pan_UsuarioModificacion) references [Acce].[tbUsuarios] ([Usu_Id])) 
GO	
CREATE TABLE Acce.[tbRoles](
	[Rol_Id] [int] IDENTITY(1,1) primary key ,
	[Rol_Descripcion] [varchar](30)  NULL,
	[Rol_UsuarioCreacion] [int]  NULL,
	[Rol_UsuarioModificacion] [int] NULL,
	[Rol_FechaCreacion] [datetime]  NULL,
	[Rol_FechaModificacion] [datetime] NULL,
	[Rol_Estado] [bit]  default 1,
	constraint FK_tbPantallas_Rol_UsuarioCreacion foreign key (Rol_UsuarioCreacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbPantallas_Rol_UsuarioModificacion foreign key (Rol_UsuarioModificacion) references [Acce].[tbUsuarios] ([Usu_Id])
) 
GO
CREATE TABLE [Acce].[tbPantallasPorRoles](
	[Ppr_Id] [int] IDENTITY(1,1)  primary key,
	[Pan_Id] [int]  NULL,
	[Rol_Id] [int]  NULL,
	[Ppr_UsuarioCreacion] [int]  NULL,
	[Ppr_FechaCreacion] [datetime]  NULL,
	[Ppr_UsuarioModificacion] [int] NULL,
	[Ppr_FechaModificacion] [datetime] NULL,
	[Ppr_Estado] [bit]  default 1,
	constraint FK_tbPantallasPorRoles_tbPantallas_Pan_Id foreign key (Pan_Id) references [Acce].[tbPantallas] (Pan_Id),
	constraint FK_tbPantallasPorRoles_tbRoles_Rol_Id foreign key (Rol_Id) references Acce.[tbRoles] (Rol_Id),
	constraint FK_tbPantallas_Ppr_UsuarioCreacion foreign key (Ppr_UsuarioCreacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbPantallas_Ppr_UsuarioModificacion foreign key (Ppr_UsuarioModificacion) references [Acce].[tbUsuarios] ([Usu_Id]))
	GO
	CREATE TABLE Gral.[tbDepartamentos](
	[Dep_Id] [char](2) primary key ,
	[Dep_Descripcion] [varchar](50)  NULL,
	[Dep_UsuarioCreacion] [int]  NULL,
	[Dep_FechaCreacion] [datetime]  NULL,
	[Dep_UsuarioModificacion] [int] NULL,
	[Dep_FechaModificacion] [datetime] NULL,
	[Dep_Estado] [bit]  default 1,
	constraint FK_tbDepartamentos_Dep_UsuarioCreacion foreign key (Dep_UsuarioCreacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbDepartamentos_Dep_UsuarioModificacion foreign key (Dep_UsuarioModificacion) references [Acce].[tbUsuarios] ([Usu_Id])
)

GO
CREATE TABLE Gral.[tbMunicipios](
	[Mun_Id] [char](4) primary key,
	[Mun_Descripcion] [varchar](50) NOT NULL,
	[Dep_Id] [char](2)  ,
	[Mun_UsuarioCreacion] [int] NOT NULL,
	[Mun_FechaCreacion] [datetime] NOT NULL,
	[Mun_UsuarioModificacion] [int] NULL,
	[Mun_FechaModificacion] [datetime] NULL,
	[Mun_Estado] [bit]  default 1,
	constraint FK_tbMunicipios_Mun_UsuarioCreacion foreign key (Mun_UsuarioCreacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbMunicipios_Mun_UsuarioModificacion foreign key (Mun_UsuarioModificacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbMunicipios_Dep_Id foreign key (Dep_Id) references Gral.[tbDepartamentos](Dep_Id)

 ) 
GO
CREATE TABLE Gral.[tbEstadosCiviles](
	[Est_Id] [int] IDENTITY(1,1) primary key,
	[Est_Descripcion] [varchar](30) NOT NULL,
	[Est_UsuarioCreacion] [int] NOT NULL,
	[Est_FechaCreacion] [datetime] NOT NULL,
	[Est_UsuarioModificacion] [int] NULL,
	[Est_FechaModificacion] [datetime] NULL,
	[Est_Estado] [bit] default 1,
	constraint FK_tbEstadosCiviles_Est_UsuarioCreacion foreign key (Est_UsuarioCreacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbEstadosCiviles_Est_UsuarioModificacion foreign key (Est_UsuarioModificacion) references [Acce].[tbUsuarios] ([Usu_Id])
) 
GO
CREATE TABLE [Curs].[tbInstructores](
	Ins_Id int primary key identity(1,1),
	[Ins_Nombre] [varchar](30) NOT NULL,
	[Ins_Apellido] [varchar](30) NOT NULL,
	[Ins_FechaNacimiento] [date] NOT NULL,
	[Ins_Sexo] [char](1) NOT NULL,
	[Est_Id] [int] NOT NULL,
	[Ins_Direccion] [varchar](max) NOT NULL,
	[Mun_Id] [char](4) NOT NULL,
	[Ins_Telefono] [varchar](15) NOT NULL,
	[Ins_CorreoElectronico] [varchar](max) NOT NULL,
	[Ins_UsuarioCreacion] [int]  NULL,
	[Ins_FechaCreacion] [datetime]  NULL,
	[Ins_UsuarioModificacion] [int] NULL,
	[Ins_FechaModificacion] [datetime] NULL,
	[Ins_Estado] [bit]   default 1,
	constraint FK_tbInstructores_Ins_UsuarioCreacion foreign key (Ins_UsuarioCreacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbInstructores_Ins_UsuarioModificacion foreign key (Ins_UsuarioModificacion) references [Acce].[tbUsuarios] ([Usu_Id]),
	constraint FK_tbInstructores_Est_Id foreign key (Est_Id) references Gral.[tbEstadosCiviles](Est_Id),
	constraint FK_tbInstructores_Mun_Id foreign key (Mun_Id) references Gral.[tbMunicipios](Mun_Id))
GO
alter table [Acce].[tbUsuarios]
add constraint FK_tbUsuarios_tbRoles_Rol_Id foreign key(Rol_Id) references Acce.[tbRoles](Rol_Id)
go
alter table [Acce].[tbUsuarios]
add [Usu_Nombre] [varchar](30) NOT NULL
go
alter table [Acce].[tbUsuarios]
add	[Usu_Apellido] [varchar](30) NOT NULL
go
alter table [Acce].[tbUsuarios]
add	[Usu_FechaNacimiento] [date] NOT NULL
go
alter table [Acce].[tbUsuarios]
add	[Usu_Sexo] [char](1) NOT NULL
go
alter table [Acce].[tbUsuarios]
add	[Est_Id] [int] NOT NULL
go
alter table [Acce].[tbUsuarios]
add	[Usu_Direccion] [varchar](max) NOT NULL
go
alter table [Acce].[tbUsuarios]
add	[Mun_Id] [char](4) NOT NULL
go
alter table [Acce].[tbUsuarios]
add	[Usu_Telefono] [varchar](15) NOT NULL
go
alter table [Acce].[tbUsuarios]
add	[Usu_CorreoElectronico] [varchar](max) NOT NULL
go
alter table [Acce].[tbUsuarios]
add constraint FK_tbUsuarios_tbInstructores_Ins_Id foreign key(Ins_Id) references [Curs].[tbInstructores](Ins_Id)
go


