USE [COnsejoNacionalElectoralc]
GO
/****** Object:  Schema [Acce]    Script Date: 15/04/2024 19:15:45 ******/
CREATE SCHEMA [Acce]
GO
/****** Object:  Schema [Gral]    Script Date: 15/04/2024 19:15:45 ******/
CREATE SCHEMA [Gral]
GO
/****** Object:  Schema [Vota]    Script Date: 15/04/2024 19:15:45 ******/
CREATE SCHEMA [Vota]
GO
/****** Object:  Table [Acce].[tbPantallas]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acce].[tbPantallas](
	[Panta_Id] [int] IDENTITY(1,1) NOT NULL,
	[Panta_Descripcion] [nvarchar](30) NOT NULL,
	[Panta_Esquema] [nvarchar](5) NOT NULL,
	[Panta_UsuarioCreacion] [int] NOT NULL,
	[Panta_FechaCreacion] [datetime] NOT NULL,
	[Panta_UsuarioModificacion] [int] NULL,
	[Panta_FechaModificacion] [datetime] NULL,
	[Panta_Estado] [bit] NULL,
 CONSTRAINT [PK_tbPantallas_Panta_Id] PRIMARY KEY CLUSTERED 
(
	[Panta_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acce].[tbPantallasPorRoles]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acce].[tbPantallasPorRoles](
	[Papro_Id] [int] IDENTITY(1,1) NOT NULL,
	[Panta_Id] [int] NOT NULL,
	[Roles_Id] [int] NOT NULL,
	[Papro_UsuarioCreacion] [int] NOT NULL,
	[Papro_FechaCreacion] [datetime] NOT NULL,
	[Papro_UsuarioModificacion] [int] NULL,
	[Papro_FechaModificacion] [datetime] NULL,
	[Papro_Estado] [bit] NULL,
 CONSTRAINT [PK_tbPantallasPorRoles_Paxro_Id] PRIMARY KEY CLUSTERED 
(
	[Papro_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acce].[tbRoles]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acce].[tbRoles](
	[Roles_Id] [int] IDENTITY(1,1) NOT NULL,
	[Roles_Descripcion] [nvarchar](30) NOT NULL,
	[Roles_UsuarioCreacion] [int] NOT NULL,
	[Roles_FechaCreacion] [datetime] NOT NULL,
	[Roles_UsuarioModificacion] [int] NULL,
	[Roles_FechaModificacion] [datetime] NULL,
	[Roles_Estado] [bit] NULL,
 CONSTRAINT [PK_tbRoles_Roles_Id] PRIMARY KEY CLUSTERED 
(
	[Roles_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acce].[tbUsuarios]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acce].[tbUsuarios](
	[Usuar_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuar_Usuario] [nvarchar](50) NOT NULL,
	[Usuar_Contrasena] [nvarchar](max) NOT NULL,
	[Per_Id] [int] NOT NULL,
	[Roles_Id] [int] NOT NULL,
	[Usuar_UltimaSesion] [datetime] NULL,
	[Usuar_Admin] [bit] NULL,
	[Usuar_UsuarioCreacion] [int] NULL,
	[Usuar_FechaCreacion] [datetime] NOT NULL,
	[Usuar_UsuarioModificacion] [int] NULL,
	[Usuar_FechaModificacion] [datetime] NULL,
	[Usuar_Estado] [bit] NULL,
 CONSTRAINT [PK_tbUsuarios_Usuar_Id] PRIMARY KEY CLUSTERED 
(
	[Usuar_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Gral].[tbDepartamentos]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbDepartamentos](
	[Dep_Id] [char](2) NOT NULL,
	[Dep_Descripcion] [nvarchar](50) NOT NULL,
	[Dep_UsuarioCreacion] [int] NOT NULL,
	[Dep_FechaCreacion] [datetime] NOT NULL,
	[Dep_UsuarioModificacion] [int] NULL,
	[Dep_FechaModificacion] [datetime] NULL,
	[Dep_Estado] [bit] NULL,
 CONSTRAINT [PK_tbDepartamentos_Depar_Id] PRIMARY KEY CLUSTERED 
(
	[Dep_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gral].[tbEstadosCiviles]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbEstadosCiviles](
	[EsC_Id] [int] IDENTITY(1,1) NOT NULL,
	[EsC_Descripcion] [nvarchar](30) NOT NULL,
	[EsC_UsuarioCreacion] [int] NOT NULL,
	[EsC_FechaCreacion] [datetime] NOT NULL,
	[EsC_UsuarioModificacion] [int] NULL,
	[EsC_FechaModificacion] [datetime] NULL,
	[EsC_Estado] [bit] NULL,
 CONSTRAINT [PK_tbEstadosCiviles_EsC_Id] PRIMARY KEY CLUSTERED 
(
	[EsC_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gral].[tbMunicipios]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbMunicipios](
	[Mun_Id] [char](4) NOT NULL,
	[Mun_Descripcion] [nvarchar](50) NOT NULL,
	[Dep_Id] [char](2) NOT NULL,
	[Mun_UsuarioCreacion] [int] NOT NULL,
	[Mun_FechaCreacion] [datetime] NOT NULL,
	[Mun_UsuarioModificacion] [int] NULL,
	[Mun_FechaModificacion] [datetime] NULL,
	[Mun_Estado] [bit] NULL,
 CONSTRAINT [PK_tbMunicipios_Munic_Id] PRIMARY KEY CLUSTERED 
(
	[Mun_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Gral].[tbPersonas]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Gral].[tbPersonas](
	[Per_Id] [int] IDENTITY(1,1) NOT NULL,
	[Per_Nombre] [nvarchar](50) NOT NULL,
	[Per_Apellido] [nvarchar](50) NOT NULL,
	[Per_FechaNacimiento] [date] NOT NULL,
	[Per_Sexo] [char](1) NOT NULL,
	[Per_CedulaIdentidad] [nvarchar](13) NULL,
	[Per_Direccion] [nvarchar](max) NOT NULL,
	[Mun_Id] [char](4) NOT NULL,
	[Per_Telefono] [nvarchar](30) NOT NULL,
	[Per_UsuarioCreacion] [int] NOT NULL,
	[Per_FechaCreacion] [datetime] NOT NULL,
	[Per_UsuarioModificacion] [int] NULL,
	[Per_FechaModificacion] [datetime] NULL,
	[EsC_Id] [int] NULL,
	[Per_Estado] [bit] NULL,
	[Mes_Mesa] [int] NOT NULL,
	[Mes_Id] [int] NULL,
	[Per_Voto] [bit] NULL,
 CONSTRAINT [PK_tbPersonas_Perso_Id] PRIMARY KEY CLUSTERED 
(
	[Per_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbAlcaldes]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbAlcaldes](
	[Alc_Id] [int] NOT NULL,
	[Alc_Votos] [int] NULL,
	[Alc_ImgUrl] [varchar](100) NULL,
	[Alc_UsuarioCreacion] [int] NOT NULL,
	[Alc_FechaCreacion] [datetime] NOT NULL,
	[Alc_UsuarioModificacion] [int] NULL,
	[Alc_FechaModificacion] [datetime] NULL,
	[Alc_Estado] [bit] NULL,
	[Par_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Alc_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbCentrosVotaciones]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbCentrosVotaciones](
	[CeV_Id] [int] IDENTITY(1,1) NOT NULL,
	[Mun_Id] [char](4) NULL,
	[CeV_UsuarioCreacion] [int] NOT NULL,
	[CeV_FechaCreacion] [datetime] NOT NULL,
	[CeV_UsuarioModificacion] [int] NULL,
	[CeV_FechaModificacion] [datetime] NULL,
	[CeV_Estado] [bit] NULL,
	[CeV_Nombre] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CeV_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbDiputados]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbDiputados](
	[Dip_Id] [int] NOT NULL,
	[Dip_Votos] [int] NULL,
	[Dip_ImgUrl] [varchar](100) NULL,
	[Dip_UsuarioCreacion] [int] NOT NULL,
	[Dip_FechaCreacion] [datetime] NOT NULL,
	[Dip_UsuarioModificacion] [int] NULL,
	[Dip_FechaModificacion] [datetime] NULL,
	[Dip_Estado] [bit] NULL,
	[Par_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dip_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbEmpleados]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbEmpleados](
	[Per_Id] [int] NOT NULL,
	[Emp_UsuarioCreacion] [int] NOT NULL,
	[Emp_FechaCreacion] [datetime] NOT NULL,
	[Emp_UsuarioModificacion] [int] NULL,
	[Emp_FechaModificacion] [datetime] NULL,
	[Emp_Estado] [bit] NULL,
 CONSTRAINT [PK_tbEmpleados_Per_Id] PRIMARY KEY CLUSTERED 
(
	[Per_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbMesas]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbMesas](
	[Mes_Id] [int] IDENTITY(1,1) NOT NULL,
	[Mes_Jurado] [int] NULL,
	[Mes_Custodio1] [int] NULL,
	[Mes_Custodio2] [int] NULL,
	[Mes_UsuarioCreacion] [int] NOT NULL,
	[Mes_FechaCreacion] [datetime] NOT NULL,
	[Mes_UsuarioModificacion] [int] NULL,
	[Mes_FechaModificacion] [datetime] NULL,
	[Mes_Estado] [bit] NULL,
	[CeV_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mes_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbPartidos]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbPartidos](
	[Par_id] [int] IDENTITY(1,1) NOT NULL,
	[Par_Nombre] [varchar](100) NULL,
	[Par_ImgUrl] [varchar](max) NULL,
	[Par_UsuarioCreacion] [int] NOT NULL,
	[Par_FechaCreacion] [datetime] NOT NULL,
	[Par_UsuarioModificacion] [int] NULL,
	[Par_FechaModificacion] [datetime] NULL,
	[Par_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Par_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbPresidentes]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbPresidentes](
	[Pre_Id] [int] NOT NULL,
	[Pre_Votos] [int] NULL,
	[Pre_ImgUrl] [varchar](100) NULL,
	[Pre_UsuarioCreacion] [int] NOT NULL,
	[Pre_FechaCreacion] [datetime] NOT NULL,
	[Pre_UsuarioModificacion] [int] NULL,
	[Pre_FechaModificacion] [datetime] NULL,
	[Pre_Estado] [bit] NULL,
	[Par_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pre_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbVotos]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbVotos](
	[Vot_Id] [int] IDENTITY(1,1) NOT NULL,
	[Mes_Id] [int] NOT NULL,
	[Pre_Id] [int] NULL,
	[Alc_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Vot_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vota].[tbVotosPorDiputados]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vota].[tbVotosPorDiputados](
	[VpD_Id] [int] IDENTITY(1,1) NOT NULL,
	[Vot_Id] [int] NOT NULL,
	[Dip_Id] [int] NULL,
 CONSTRAINT [pk_tbVotosPorDiputados_VpD_Id] PRIMARY KEY CLUSTERED 
(
	[VpD_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Acce].[tbPantallas] ON 

INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (1, N'Roles', N'Acce', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (2, N'Usuarios', N'Acce', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (3, N'Departamentos', N'Gral', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (4, N'EstadosCiviles', N'Gral', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (5, N'Municipios', N'Gral', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (6, N'Personas', N'Gral', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (7, N'Alcaldes', N'Vota', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (8, N'CentrosVotaciones', N'Vota', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (9, N'Diputados', N'Vota', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (10, N'Empleados', N'Vota', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (11, N'Mesas', N'Vota', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (12, N'Partidos', N'Vota', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (13, N'Presidentes', N'Vota', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallas] ([Panta_Id], [Panta_Descripcion], [Panta_Esquema], [Panta_UsuarioCreacion], [Panta_FechaCreacion], [Panta_UsuarioModificacion], [Panta_FechaModificacion], [Panta_Estado]) VALUES (14, N'Votos', N'Vota', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acce].[tbPantallas] OFF
GO
SET IDENTITY_INSERT [Acce].[tbPantallasPorRoles] ON 

INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (16, 1, 7, 1, CAST(N'2024-04-08T01:50:43.477' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (17, 1, 8, 1, CAST(N'2024-04-08T10:04:42.990' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (18, 7, 8, 1, CAST(N'2024-04-08T10:04:43.050' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (20, 1, 10, 1, CAST(N'2024-04-08T11:42:19.237' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (21, 4, 10, 1, CAST(N'2024-04-08T11:42:19.307' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (22, 1, 11, 1, CAST(N'2024-04-08T11:44:31.760' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (23, 1, 12, 1, CAST(N'2024-04-08T12:21:18.053' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (24, 4, 12, 1, CAST(N'2024-04-08T12:21:18.110' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (25, 1, 13, 1, CAST(N'2024-04-08T15:32:04.550' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (26, 1, 1, 1, CAST(N'2024-04-09T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (27, 2, 1, 1, CAST(N'2024-09-04T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbPantallasPorRoles] ([Papro_Id], [Panta_Id], [Roles_Id], [Papro_UsuarioCreacion], [Papro_FechaCreacion], [Papro_UsuarioModificacion], [Papro_FechaModificacion], [Papro_Estado]) VALUES (28, 10, 14, 1, CAST(N'2024-04-09T14:07:46.757' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acce].[tbPantallasPorRoles] OFF
GO
SET IDENTITY_INSERT [Acce].[tbRoles] ON 

INSERT [Acce].[tbRoles] ([Roles_Id], [Roles_Descripcion], [Roles_UsuarioCreacion], [Roles_FechaCreacion], [Roles_UsuarioModificacion], [Roles_FechaModificacion], [Roles_Estado]) VALUES (1, N'Administrador', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbRoles] ([Roles_Id], [Roles_Descripcion], [Roles_UsuarioCreacion], [Roles_FechaCreacion], [Roles_UsuarioModificacion], [Roles_FechaModificacion], [Roles_Estado]) VALUES (7, N'MindyC', 1, CAST(N'2024-04-08T01:49:44.720' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbRoles] ([Roles_Id], [Roles_Descripcion], [Roles_UsuarioCreacion], [Roles_FechaCreacion], [Roles_UsuarioModificacion], [Roles_FechaModificacion], [Roles_Estado]) VALUES (8, N'Eduardo', 1, CAST(N'2024-04-08T10:04:42.870' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbRoles] ([Roles_Id], [Roles_Descripcion], [Roles_UsuarioCreacion], [Roles_FechaCreacion], [Roles_UsuarioModificacion], [Roles_FechaModificacion], [Roles_Estado]) VALUES (10, N'Kevin', 1, CAST(N'2024-04-08T11:42:19.157' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbRoles] ([Roles_Id], [Roles_Descripcion], [Roles_UsuarioCreacion], [Roles_FechaCreacion], [Roles_UsuarioModificacion], [Roles_FechaModificacion], [Roles_Estado]) VALUES (11, N'Jayson', 1, CAST(N'2024-04-08T11:44:31.703' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbRoles] ([Roles_Id], [Roles_Descripcion], [Roles_UsuarioCreacion], [Roles_FechaCreacion], [Roles_UsuarioModificacion], [Roles_FechaModificacion], [Roles_Estado]) VALUES (12, N'Aleee', 1, CAST(N'2024-04-08T12:21:17.907' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbRoles] ([Roles_Id], [Roles_Descripcion], [Roles_UsuarioCreacion], [Roles_FechaCreacion], [Roles_UsuarioModificacion], [Roles_FechaModificacion], [Roles_Estado]) VALUES (13, N'DANY', 1, CAST(N'2024-04-08T15:32:04.390' AS DateTime), NULL, NULL, 1)
INSERT [Acce].[tbRoles] ([Roles_Id], [Roles_Descripcion], [Roles_UsuarioCreacion], [Roles_FechaCreacion], [Roles_UsuarioModificacion], [Roles_FechaModificacion], [Roles_Estado]) VALUES (14, N'probandot', 1, CAST(N'2024-04-09T14:07:46.667' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acce].[tbRoles] OFF
GO
SET IDENTITY_INSERT [Acce].[tbUsuarios] ON 

INSERT [Acce].[tbUsuarios] ([Usuar_Id], [Usuar_Usuario], [Usuar_Contrasena], [Per_Id], [Roles_Id], [Usuar_UltimaSesion], [Usuar_Admin], [Usuar_UsuarioCreacion], [Usuar_FechaCreacion], [Usuar_UsuarioModificacion], [Usuar_FechaModificacion], [Usuar_Estado]) VALUES (1, N'admin', N'123', 1, 1, NULL, 1, 1, CAST(N'1900-01-02T00:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acce].[tbUsuarios] OFF
GO
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'01', N'Atlántida', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'02', N'Colón', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'03', N'Comayagua', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'04', N'Copán', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'05', N'Cortés', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'06', N'Choluteca', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'07', N'El Paraíso', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'08', N'Francisco Morazán', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'09', N'Gracias a Dios', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'10', N'Intibucá', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'11', N'Islas de la Bahía', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'12', N'La Paz', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'13', N'Lempira', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'14', N'Ocotepeque', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'15', N'Olancho', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'16', N'Santa Bárbara', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'17', N'Valle', 1, CAST(N'2024-02-19T06:35:00.810' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'18', N'Yoro', 1, CAST(N'2024-02-11T12:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'24', N'll', 1, CAST(N'2024-04-03T05:14:15.550' AS DateTime), NULL, NULL, NULL)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'25', N'kk', 1, CAST(N'2024-03-04T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'34', N'Pruebaaa', 1, CAST(N'2024-04-05T13:15:55.230' AS DateTime), 1, CAST(N'2024-04-05T13:16:03.280' AS DateTime), 1)
INSERT [Gral].[tbDepartamentos] ([Dep_Id], [Dep_Descripcion], [Dep_UsuarioCreacion], [Dep_FechaCreacion], [Dep_UsuarioModificacion], [Dep_FechaModificacion], [Dep_Estado]) VALUES (N'89', N'ddd', 1, CAST(N'2024-04-03T05:20:14.893' AS DateTime), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [Gral].[tbEstadosCiviles] ON 

INSERT [Gral].[tbEstadosCiviles] ([EsC_Id], [EsC_Descripcion], [EsC_UsuarioCreacion], [EsC_FechaCreacion], [EsC_UsuarioModificacion], [EsC_FechaModificacion], [EsC_Estado]) VALUES (1, N'Soltero', 1, CAST(N'2024-02-26T21:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbEstadosCiviles] ([EsC_Id], [EsC_Descripcion], [EsC_UsuarioCreacion], [EsC_FechaCreacion], [EsC_UsuarioModificacion], [EsC_FechaModificacion], [EsC_Estado]) VALUES (2, N'Casado ', 1, CAST(N'2024-02-26T21:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbEstadosCiviles] ([EsC_Id], [EsC_Descripcion], [EsC_UsuarioCreacion], [EsC_FechaCreacion], [EsC_UsuarioModificacion], [EsC_FechaModificacion], [EsC_Estado]) VALUES (3, N'Union Libre', 1, CAST(N'2024-02-26T21:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbEstadosCiviles] ([EsC_Id], [EsC_Descripcion], [EsC_UsuarioCreacion], [EsC_FechaCreacion], [EsC_UsuarioModificacion], [EsC_FechaModificacion], [EsC_Estado]) VALUES (4, N'Viudo', 1, CAST(N'2024-02-26T21:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbEstadosCiviles] ([EsC_Id], [EsC_Descripcion], [EsC_UsuarioCreacion], [EsC_FechaCreacion], [EsC_UsuarioModificacion], [EsC_FechaModificacion], [EsC_Estado]) VALUES (5, N'Divorciado', 1, CAST(N'2024-02-26T21:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Gral].[tbEstadosCiviles] OFF
GO
INSERT [Gral].[tbMunicipios] ([Mun_Id], [Mun_Descripcion], [Dep_Id], [Mun_UsuarioCreacion], [Mun_FechaCreacion], [Mun_UsuarioModificacion], [Mun_FechaModificacion], [Mun_Estado]) VALUES (N'0320', N'Las Lajas', N'03', 1, CAST(N'2024-04-07T09:40:41.440' AS DateTime), NULL, NULL, 1)
INSERT [Gral].[tbMunicipios] ([Mun_Id], [Mun_Descripcion], [Dep_Id], [Mun_UsuarioCreacion], [Mun_FechaCreacion], [Mun_UsuarioModificacion], [Mun_FechaModificacion], [Mun_Estado]) VALUES (N'0501', N'San Pedro Sula', N'05', 1, CAST(N'2024-03-11T00:00:00.000' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Gral].[tbPersonas] ON 

INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (1, N'Jason', N'Villanueva', CAST(N'2004-02-12' AS Date), N'M', N'0501200403104', N'Col. La Pradera, Bloque F, Casa 124, San Pedro Sula', N'0501', N'50495252496', 1, CAST(N'2024-03-11T00:00:00.000' AS DateTime), NULL, NULL, 2, 1, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (2, N'Mindy', N'Campos', CAST(N'2024-12-07' AS Date), N'F', N'0320200100293', N'AlgunLugar', N'0501', N'33065252', 1, CAST(N'2024-04-07T01:54:03.267' AS DateTime), NULL, NULL, 1, 1, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (3, N'Mindy', N'Campos', CAST(N'2024-12-07' AS Date), N'F', N'0320200100293', N'AlgunLugar', N'0501', N'33065252', 1, CAST(N'2024-04-07T01:54:03.267' AS DateTime), NULL, NULL, 1, 0, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (5, N'Nombre1', N'Apellido1', CAST(N'1990-01-01' AS Date), N'M', N'1234567890123', N'Direccion1', N'0501', N'123456789', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (6, N'Nombre2', N'Apellido2', CAST(N'1991-02-02' AS Date), N'F', N'1234567890124', N'Direccion2', N'0501', N'123456780', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (7, N'Nombre3', N'Apellido3', CAST(N'1992-03-03' AS Date), N'M', N'1234567890125', N'Direccion3', N'0501', N'123456781', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (8, N'Nombre4', N'Apellido4', CAST(N'1993-04-04' AS Date), N'F', N'1234567890126', N'Direccion4', N'0501', N'123456782', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (9, N'Nombre5', N'Apellido5', CAST(N'1994-05-05' AS Date), N'M', N'1234567890127', N'Direccion5', N'0501', N'123456783', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (10, N'Nombre6', N'Apellido6', CAST(N'1995-06-06' AS Date), N'F', N'1234567890128', N'Direccion6', N'0501', N'123456784', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (11, N'Nombre7', N'Apellido7', CAST(N'1996-07-07' AS Date), N'M', N'1234567890129', N'Direccion7', N'0501', N'123456785', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (12, N'Nombre8', N'Apellido8', CAST(N'1997-08-08' AS Date), N'F', N'1234567890130', N'Direccion8', N'0501', N'123456786', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 0)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (13, N'Nombre9', N'Apellido9', CAST(N'1998-09-09' AS Date), N'M', N'1234567890131', N'Direccion9', N'0501', N'123456787', 1, CAST(N'2024-04-06T21:08:47.323' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, 1)
INSERT [Gral].[tbPersonas] ([Per_Id], [Per_Nombre], [Per_Apellido], [Per_FechaNacimiento], [Per_Sexo], [Per_CedulaIdentidad], [Per_Direccion], [Mun_Id], [Per_Telefono], [Per_UsuarioCreacion], [Per_FechaCreacion], [Per_UsuarioModificacion], [Per_FechaModificacion], [EsC_Id], [Per_Estado], [Mes_Mesa], [Mes_Id], [Per_Voto]) VALUES (15, N'Mindy', N'Campos', CAST(N'2024-12-07' AS Date), N'F', N'0320200100293', N'AlgunLugar', N'0501', N'33065252', 1, CAST(N'2024-04-07T01:54:03.267' AS DateTime), NULL, NULL, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [Gral].[tbPersonas] OFF
GO
INSERT [Vota].[tbAlcaldes] ([Alc_Id], [Alc_Votos], [Alc_ImgUrl], [Alc_UsuarioCreacion], [Alc_FechaCreacion], [Alc_UsuarioModificacion], [Alc_FechaModificacion], [Alc_Estado], [Par_id]) VALUES (1, 0, N'calidonio.png', 1, CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, NULL, 0, 1)
INSERT [Vota].[tbAlcaldes] ([Alc_Id], [Alc_Votos], [Alc_ImgUrl], [Alc_UsuarioCreacion], [Alc_FechaCreacion], [Alc_UsuarioModificacion], [Alc_FechaModificacion], [Alc_Estado], [Par_id]) VALUES (2, 40, N'calidonio.jpeg', 1, CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [Vota].[tbCentrosVotaciones] ON 

INSERT [Vota].[tbCentrosVotaciones] ([CeV_Id], [Mun_Id], [CeV_UsuarioCreacion], [CeV_FechaCreacion], [CeV_UsuarioModificacion], [CeV_FechaModificacion], [CeV_Estado], [CeV_Nombre]) VALUES (1, N'0501', 1, CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [Vota].[tbCentrosVotaciones] ([CeV_Id], [Mun_Id], [CeV_UsuarioCreacion], [CeV_FechaCreacion], [CeV_UsuarioModificacion], [CeV_FechaModificacion], [CeV_Estado], [CeV_Nombre]) VALUES (9, N'0501', 1, CAST(N'2024-04-07T22:04:35.727' AS DateTime), NULL, NULL, 0, N'Probandoo                                         ')
INSERT [Vota].[tbCentrosVotaciones] ([CeV_Id], [Mun_Id], [CeV_UsuarioCreacion], [CeV_FechaCreacion], [CeV_UsuarioModificacion], [CeV_FechaModificacion], [CeV_Estado], [CeV_Nombre]) VALUES (10, N'0320', 1, CAST(N'2024-04-07T16:10:42.413' AS DateTime), NULL, NULL, 0, N'Prueba                                            ')
SET IDENTITY_INSERT [Vota].[tbCentrosVotaciones] OFF
GO
INSERT [Vota].[tbDiputados] ([Dip_Id], [Dip_Votos], [Dip_ImgUrl], [Dip_UsuarioCreacion], [Dip_FechaCreacion], [Dip_UsuarioModificacion], [Dip_FechaModificacion], [Dip_Estado], [Par_id]) VALUES (3, 0, N'chavez.jpg', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1, 1)
INSERT [Vota].[tbDiputados] ([Dip_Id], [Dip_Votos], [Dip_ImgUrl], [Dip_UsuarioCreacion], [Dip_FechaCreacion], [Dip_UsuarioModificacion], [Dip_FechaModificacion], [Dip_Estado], [Par_id]) VALUES (5, 0, N'Yuri.png', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL, 1, 2)
GO
INSERT [Vota].[tbEmpleados] ([Per_Id], [Emp_UsuarioCreacion], [Emp_FechaCreacion], [Emp_UsuarioModificacion], [Emp_FechaModificacion], [Emp_Estado]) VALUES (1, 1, CAST(N'2024-02-04T00:00:00.000' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Vota].[tbMesas] ON 

INSERT [Vota].[tbMesas] ([Mes_Id], [Mes_Jurado], [Mes_Custodio1], [Mes_Custodio2], [Mes_UsuarioCreacion], [Mes_FechaCreacion], [Mes_UsuarioModificacion], [Mes_FechaModificacion], [Mes_Estado], [CeV_Id]) VALUES (1, 1, 1, 1, 1, CAST(N'2024-03-05T00:00:00.000' AS DateTime), NULL, NULL, 1, 1)
INSERT [Vota].[tbMesas] ([Mes_Id], [Mes_Jurado], [Mes_Custodio1], [Mes_Custodio2], [Mes_UsuarioCreacion], [Mes_FechaCreacion], [Mes_UsuarioModificacion], [Mes_FechaModificacion], [Mes_Estado], [CeV_Id]) VALUES (2, 1, 1, 1, 1, CAST(N'2024-04-07T01:13:51.363' AS DateTime), 1, CAST(N'2024-04-06T19:28:04.833' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [Vota].[tbMesas] OFF
GO
SET IDENTITY_INSERT [Vota].[tbPartidos] ON 

INSERT [Vota].[tbPartidos] ([Par_id], [Par_Nombre], [Par_ImgUrl], [Par_UsuarioCreacion], [Par_FechaCreacion], [Par_UsuarioModificacion], [Par_FechaModificacion], [Par_Estado]) VALUES (1, N'Partido Nacional De Honduras', N'PartidoNacional.png', 1, CAST(N'2024-03-04T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Vota].[tbPartidos] ([Par_id], [Par_Nombre], [Par_ImgUrl], [Par_UsuarioCreacion], [Par_FechaCreacion], [Par_UsuarioModificacion], [Par_FechaModificacion], [Par_Estado]) VALUES (2, N'Partido Liberal', N'Liberal.png', 1, CAST(N'2024-07-04T00:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Vota].[tbPartidos] OFF
GO
INSERT [Vota].[tbPresidentes] ([Pre_Id], [Pre_Votos], [Pre_ImgUrl], [Pre_UsuarioCreacion], [Pre_FechaCreacion], [Pre_UsuarioModificacion], [Pre_FechaModificacion], [Pre_Estado], [Par_id]) VALUES (1, 60, N'JOH.jpeg', 1, CAST(N'2024-03-04T00:00:00.000' AS DateTime), NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [Vota].[tbVotos] ON 

INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (1, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (2, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (3, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (4, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (5, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (6, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (7, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (8, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (9, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (10, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (11, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (12, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (13, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (14, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (15, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (16, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (17, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (18, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (19, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (20, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (21, 1, 1, 1)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (22, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (23, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (24, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (25, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (26, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (27, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (28, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (29, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (30, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (31, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (32, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (33, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (34, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (35, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (36, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (37, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (38, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (39, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (40, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (41, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (42, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (43, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (44, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (45, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (46, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (47, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (48, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (53, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (54, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (55, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (56, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (57, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (58, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (59, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (60, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (61, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (62, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (63, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (64, 1, 1, 2)
INSERT [Vota].[tbVotos] ([Vot_Id], [Mes_Id], [Pre_Id], [Alc_Id]) VALUES (65, 1, 1, 2)
SET IDENTITY_INSERT [Vota].[tbVotos] OFF
GO
SET IDENTITY_INSERT [Vota].[tbVotosPorDiputados] ON 

INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (1, 21, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (2, 22, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (3, 22, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (4, 29, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (5, 29, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (6, 29, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (7, 30, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (8, 30, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (9, 31, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (16, 42, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (17, 53, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (18, 53, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (19, 54, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (20, 54, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (21, 55, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (22, 55, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (23, 56, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (24, 56, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (25, 57, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (26, 57, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (27, 58, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (28, 58, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (29, 59, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (30, 59, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (31, 60, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (32, 60, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (33, 61, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (34, 61, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (35, 62, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (36, 62, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (37, 63, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (38, 63, 5)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (39, 64, 3)
INSERT [Vota].[tbVotosPorDiputados] ([VpD_Id], [Vot_Id], [Dip_Id]) VALUES (40, 64, 5)
SET IDENTITY_INSERT [Vota].[tbVotosPorDiputados] OFF
GO
ALTER TABLE [Acce].[tbPantallas] ADD  CONSTRAINT [DF_tbPantallas_Panta_Estado]  DEFAULT ((1)) FOR [Panta_Estado]
GO
ALTER TABLE [Acce].[tbPantallasPorRoles] ADD  CONSTRAINT [DF_tbPantallasPorRoles_Papro_Estado]  DEFAULT ((1)) FOR [Papro_Estado]
GO
ALTER TABLE [Acce].[tbRoles] ADD  CONSTRAINT [DF_tbRoles_Roles_Estado]  DEFAULT ((1)) FOR [Roles_Estado]
GO
ALTER TABLE [Acce].[tbUsuarios] ADD  CONSTRAINT [DF_tbUsuarios_Usuar_Admin]  DEFAULT ((0)) FOR [Usuar_Admin]
GO
ALTER TABLE [Acce].[tbUsuarios] ADD  CONSTRAINT [DF_tbUsuarios_tbUsuarios_Usuar_Estado]  DEFAULT ((1)) FOR [Usuar_Estado]
GO
ALTER TABLE [Gral].[tbMunicipios] ADD  CONSTRAINT [DF_tbMunicipios_Mun_Estado]  DEFAULT ((1)) FOR [Mun_Estado]
GO
ALTER TABLE [Gral].[tbPersonas] ADD  CONSTRAINT [DF_tbPersonas_Per_Estado]  DEFAULT ((1)) FOR [Per_Estado]
GO
ALTER TABLE [Gral].[tbPersonas] ADD  DEFAULT ((0)) FOR [Per_Voto]
GO
ALTER TABLE [Vota].[tbAlcaldes] ADD  DEFAULT ((0)) FOR [Alc_Votos]
GO
ALTER TABLE [Vota].[tbDiputados] ADD  DEFAULT ((0)) FOR [Dip_Votos]
GO
ALTER TABLE [Vota].[tbMesas] ADD  CONSTRAINT [DF_tbMesas_Mes_Estado]  DEFAULT ((1)) FOR [Mes_Estado]
GO
ALTER TABLE [Vota].[tbPresidentes] ADD  DEFAULT ((0)) FOR [Pre_Votos]
GO
ALTER TABLE [Acce].[tbPantallas]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallas_tbUsuarios_Panta_UsuarioCreacion] FOREIGN KEY([Panta_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Acce].[tbPantallas] CHECK CONSTRAINT [FK_tbPantallas_tbUsuarios_Panta_UsuarioCreacion]
GO
ALTER TABLE [Acce].[tbPantallas]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallas_tbUsuarios_Panta_UsuarioModificacion] FOREIGN KEY([Panta_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Acce].[tbPantallas] CHECK CONSTRAINT [FK_tbPantallas_tbUsuarios_Panta_UsuarioModificacion]
GO
ALTER TABLE [Acce].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbPantallas_Panta_Id] FOREIGN KEY([Panta_Id])
REFERENCES [Acce].[tbPantallas] ([Panta_Id])
GO
ALTER TABLE [Acce].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbPantallas_Panta_Id]
GO
ALTER TABLE [Acce].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbRoles_Roles_Id] FOREIGN KEY([Roles_Id])
REFERENCES [Acce].[tbRoles] ([Roles_Id])
GO
ALTER TABLE [Acce].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbRoles_Roles_Id]
GO
ALTER TABLE [Acce].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_Papro_UsuarioCreacion] FOREIGN KEY([Papro_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Acce].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_Papro_UsuarioCreacion]
GO
ALTER TABLE [Acce].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_Papro_UsuarioModificacion] FOREIGN KEY([Papro_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Acce].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_Papro_UsuarioModificacion]
GO
ALTER TABLE [Acce].[tbRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbRoles_tbUsuarios_Roles_UsuarioCreacion] FOREIGN KEY([Roles_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Acce].[tbRoles] CHECK CONSTRAINT [FK_tbRoles_tbUsuarios_Roles_UsuarioCreacion]
GO
ALTER TABLE [Acce].[tbRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbRoles_tbUsuarios_Roles_UsuarioModificacion] FOREIGN KEY([Roles_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Acce].[tbRoles] CHECK CONSTRAINT [FK_tbRoles_tbUsuarios_Roles_UsuarioModificacion]
GO
ALTER TABLE [Acce].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbEmpleados_Per_Id] FOREIGN KEY([Per_Id])
REFERENCES [Vota].[tbEmpleados] ([Per_Id])
GO
ALTER TABLE [Acce].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbEmpleados_Per_Id]
GO
ALTER TABLE [Acce].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbUsuarios_Usuar_UsuarioCreacion] FOREIGN KEY([Usuar_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Acce].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbUsuarios_Usuar_UsuarioCreacion]
GO
ALTER TABLE [Acce].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbUsuarios_Usuar_UsuarioModificacion] FOREIGN KEY([Usuar_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Acce].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbUsuarios_Usuar_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbDepartamentos]  WITH CHECK ADD  CONSTRAINT [FK_tbDepartamentos_tbUsuarios_Depar_UsuarioCreacion] FOREIGN KEY([Dep_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Gral].[tbDepartamentos] CHECK CONSTRAINT [FK_tbDepartamentos_tbUsuarios_Depar_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbDepartamentos]  WITH CHECK ADD  CONSTRAINT [FK_tbDepartamentos_tbUsuarios_Depar_UsuarioModificacion] FOREIGN KEY([Dep_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Gral].[tbDepartamentos] CHECK CONSTRAINT [FK_tbDepartamentos_tbUsuarios_Depar_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_Estad_UsuarioCreacion] FOREIGN KEY([EsC_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Gral].[tbEstadosCiviles] CHECK CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_Estad_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_Estad_UsuarioModificacion] FOREIGN KEY([EsC_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Gral].[tbEstadosCiviles] CHECK CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_Estad_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbMunicipios]  WITH CHECK ADD  CONSTRAINT [FK_tbMunicipios_tbDepartamentos_Depar_Id] FOREIGN KEY([Dep_Id])
REFERENCES [Gral].[tbDepartamentos] ([Dep_Id])
GO
ALTER TABLE [Gral].[tbMunicipios] CHECK CONSTRAINT [FK_tbMunicipios_tbDepartamentos_Depar_Id]
GO
ALTER TABLE [Gral].[tbMunicipios]  WITH CHECK ADD  CONSTRAINT [FK_tbMunicipios_tbUsuarios_Munic_UsuarioCreacion] FOREIGN KEY([Mun_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Gral].[tbMunicipios] CHECK CONSTRAINT [FK_tbMunicipios_tbUsuarios_Munic_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbMunicipios]  WITH CHECK ADD  CONSTRAINT [FK_tbMunicipios_tbUsuarios_Munic_UsuarioModificacion] FOREIGN KEY([Mun_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Gral].[tbMunicipios] CHECK CONSTRAINT [FK_tbMunicipios_tbUsuarios_Munic_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbMesas_Mes_Id] FOREIGN KEY([Mes_Id])
REFERENCES [Vota].[tbMesas] ([Mes_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbMesas_Mes_Id]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbUsuarios_Perso_UsuarioCreacion] FOREIGN KEY([Per_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbUsuarios_Perso_UsuarioCreacion]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbUsuarios_Perso_UsuarioModificacion] FOREIGN KEY([Per_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbUsuarios_Perso_UsuarioModificacion]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [fk_tbVotante_tbEstadosCiviles_EsC_Id] FOREIGN KEY([EsC_Id])
REFERENCES [Gral].[tbEstadosCiviles] ([EsC_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [fk_tbVotante_tbEstadosCiviles_EsC_Id]
GO
ALTER TABLE [Gral].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [fk_tbVotante_tbMunicipios_Munic_Id] FOREIGN KEY([Mun_Id])
REFERENCES [Gral].[tbMunicipios] ([Mun_Id])
GO
ALTER TABLE [Gral].[tbPersonas] CHECK CONSTRAINT [fk_tbVotante_tbMunicipios_Munic_Id]
GO
ALTER TABLE [Vota].[tbAlcaldes]  WITH CHECK ADD  CONSTRAINT [FK_tbAlcaldes_tbPartidos_Par_id] FOREIGN KEY([Par_id])
REFERENCES [Vota].[tbPartidos] ([Par_id])
GO
ALTER TABLE [Vota].[tbAlcaldes] CHECK CONSTRAINT [FK_tbAlcaldes_tbPartidos_Par_id]
GO
ALTER TABLE [Vota].[tbAlcaldes]  WITH CHECK ADD  CONSTRAINT [fk_tbAlcaldes_tbPersonas_Alc_Id] FOREIGN KEY([Alc_Id])
REFERENCES [Gral].[tbPersonas] ([Per_Id])
GO
ALTER TABLE [Vota].[tbAlcaldes] CHECK CONSTRAINT [fk_tbAlcaldes_tbPersonas_Alc_Id]
GO
ALTER TABLE [Vota].[tbAlcaldes]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_Alc_UsuarioCreacion] FOREIGN KEY([Alc_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbAlcaldes] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_Alc_UsuarioCreacion]
GO
ALTER TABLE [Vota].[tbAlcaldes]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_Alc_UsuarioModificacion] FOREIGN KEY([Alc_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbAlcaldes] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_Alc_UsuarioModificacion]
GO
ALTER TABLE [Vota].[tbCentrosVotaciones]  WITH CHECK ADD  CONSTRAINT [FK_tbCentrosVotaciones_tbMunicipios_Mun_Id] FOREIGN KEY([Mun_Id])
REFERENCES [Gral].[tbMunicipios] ([Mun_Id])
GO
ALTER TABLE [Vota].[tbCentrosVotaciones] CHECK CONSTRAINT [FK_tbCentrosVotaciones_tbMunicipios_Mun_Id]
GO
ALTER TABLE [Vota].[tbCentrosVotaciones]  WITH CHECK ADD  CONSTRAINT [FK_tbCentrosVotaciones_tbUsuarios_CeV_UsuarioCreacion] FOREIGN KEY([CeV_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbCentrosVotaciones] CHECK CONSTRAINT [FK_tbCentrosVotaciones_tbUsuarios_CeV_UsuarioCreacion]
GO
ALTER TABLE [Vota].[tbCentrosVotaciones]  WITH CHECK ADD  CONSTRAINT [FK_tbCentrosVotaciones_tbUsuarios_UsuarioModificacion] FOREIGN KEY([CeV_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbCentrosVotaciones] CHECK CONSTRAINT [FK_tbCentrosVotaciones_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Vota].[tbDiputados]  WITH CHECK ADD  CONSTRAINT [FK_tbDiputados_tbPartidos_Par_id] FOREIGN KEY([Par_id])
REFERENCES [Vota].[tbPartidos] ([Par_id])
GO
ALTER TABLE [Vota].[tbDiputados] CHECK CONSTRAINT [FK_tbDiputados_tbPartidos_Par_id]
GO
ALTER TABLE [Vota].[tbDiputados]  WITH CHECK ADD  CONSTRAINT [fk_tbDiputados_tbPersonas_Dip_Id] FOREIGN KEY([Dip_Id])
REFERENCES [Gral].[tbPersonas] ([Per_Id])
GO
ALTER TABLE [Vota].[tbDiputados] CHECK CONSTRAINT [fk_tbDiputados_tbPersonas_Dip_Id]
GO
ALTER TABLE [Vota].[tbDiputados]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_Dip_UsuarioCreacion] FOREIGN KEY([Dip_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbDiputados] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_Dip_UsuarioCreacion]
GO
ALTER TABLE [Vota].[tbDiputados]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_Dip_UsuarioModificacion] FOREIGN KEY([Dip_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbDiputados] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_Dip_UsuarioModificacion]
GO
ALTER TABLE [Vota].[tbEmpleados]  WITH CHECK ADD  CONSTRAINT [fk_tbEmpleados_tbPersonas_Per_Id] FOREIGN KEY([Per_Id])
REFERENCES [Gral].[tbPersonas] ([Per_Id])
GO
ALTER TABLE [Vota].[tbEmpleados] CHECK CONSTRAINT [fk_tbEmpleados_tbPersonas_Per_Id]
GO
ALTER TABLE [Vota].[tbEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tbEmpleados_tbUsuarios_Emp_UsuarioCreacion] FOREIGN KEY([Emp_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbEmpleados] CHECK CONSTRAINT [FK_tbEmpleados_tbUsuarios_Emp_UsuarioCreacion]
GO
ALTER TABLE [Vota].[tbEmpleados]  WITH CHECK ADD  CONSTRAINT [FK_tbEmpleados_tbUsuarios_Emp_UsuarioModificacion] FOREIGN KEY([Emp_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbEmpleados] CHECK CONSTRAINT [FK_tbEmpleados_tbUsuarios_Emp_UsuarioModificacion]
GO
ALTER TABLE [Vota].[tbMesas]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbCentrosVotaciones_Par_id] FOREIGN KEY([CeV_Id])
REFERENCES [Vota].[tbCentrosVotaciones] ([CeV_Id])
GO
ALTER TABLE [Vota].[tbMesas] CHECK CONSTRAINT [FK_tbMesas_tbCentrosVotaciones_Par_id]
GO
ALTER TABLE [Vota].[tbMesas]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbPersonas_Mes_Custodio1] FOREIGN KEY([Mes_Custodio1])
REFERENCES [Vota].[tbEmpleados] ([Per_Id])
GO
ALTER TABLE [Vota].[tbMesas] CHECK CONSTRAINT [FK_tbMesas_tbPersonas_Mes_Custodio1]
GO
ALTER TABLE [Vota].[tbMesas]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbPersonas_Mes_Custodio2] FOREIGN KEY([Mes_Custodio2])
REFERENCES [Vota].[tbEmpleados] ([Per_Id])
GO
ALTER TABLE [Vota].[tbMesas] CHECK CONSTRAINT [FK_tbMesas_tbPersonas_Mes_Custodio2]
GO
ALTER TABLE [Vota].[tbMesas]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbPersonas_Mes_Jurado] FOREIGN KEY([Mes_Jurado])
REFERENCES [Vota].[tbEmpleados] ([Per_Id])
GO
ALTER TABLE [Vota].[tbMesas] CHECK CONSTRAINT [FK_tbMesas_tbPersonas_Mes_Jurado]
GO
ALTER TABLE [Vota].[tbMesas]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_CeV_UsuarioCreacion] FOREIGN KEY([Mes_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbMesas] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_CeV_UsuarioCreacion]
GO
ALTER TABLE [Vota].[tbMesas]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Mes_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbMesas] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Vota].[tbPartidos]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_Par_UsuarioCreacion] FOREIGN KEY([Par_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbPartidos] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_Par_UsuarioCreacion]
GO
ALTER TABLE [Vota].[tbPartidos]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_Par_UsuarioModificacion] FOREIGN KEY([Par_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbPartidos] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_Par_UsuarioModificacion]
GO
ALTER TABLE [Vota].[tbPresidentes]  WITH CHECK ADD  CONSTRAINT [FK_tbAlcaldes_tbPresidentes_Par_id] FOREIGN KEY([Par_id])
REFERENCES [Vota].[tbPartidos] ([Par_id])
GO
ALTER TABLE [Vota].[tbPresidentes] CHECK CONSTRAINT [FK_tbAlcaldes_tbPresidentes_Par_id]
GO
ALTER TABLE [Vota].[tbPresidentes]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_Pre_UsuarioCreacion] FOREIGN KEY([Pre_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbPresidentes] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_Pre_UsuarioCreacion]
GO
ALTER TABLE [Vota].[tbPresidentes]  WITH CHECK ADD  CONSTRAINT [FK_tbMesas_tbUsuarios_Pre_UsuarioModificacion] FOREIGN KEY([Pre_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usuar_Id])
GO
ALTER TABLE [Vota].[tbPresidentes] CHECK CONSTRAINT [FK_tbMesas_tbUsuarios_Pre_UsuarioModificacion]
GO
ALTER TABLE [Vota].[tbPresidentes]  WITH CHECK ADD  CONSTRAINT [fk_tbPresidentes_tbPersonas_Pre_Id] FOREIGN KEY([Pre_Id])
REFERENCES [Gral].[tbPersonas] ([Per_Id])
GO
ALTER TABLE [Vota].[tbPresidentes] CHECK CONSTRAINT [fk_tbPresidentes_tbPersonas_Pre_Id]
GO
ALTER TABLE [Vota].[tbVotos]  WITH CHECK ADD  CONSTRAINT [FK_tbVotos_tbAlcaldes_Alc_Id] FOREIGN KEY([Alc_Id])
REFERENCES [Vota].[tbAlcaldes] ([Alc_Id])
GO
ALTER TABLE [Vota].[tbVotos] CHECK CONSTRAINT [FK_tbVotos_tbAlcaldes_Alc_Id]
GO
ALTER TABLE [Vota].[tbVotos]  WITH CHECK ADD  CONSTRAINT [fk_tbVotos_tbMesas_Mes_Mesa] FOREIGN KEY([Mes_Id])
REFERENCES [Vota].[tbMesas] ([Mes_Id])
GO
ALTER TABLE [Vota].[tbVotos] CHECK CONSTRAINT [fk_tbVotos_tbMesas_Mes_Mesa]
GO
ALTER TABLE [Vota].[tbVotos]  WITH CHECK ADD  CONSTRAINT [FK_tbVotos_tbPresidentes_Pre_Id] FOREIGN KEY([Pre_Id])
REFERENCES [Vota].[tbPresidentes] ([Pre_Id])
GO
ALTER TABLE [Vota].[tbVotos] CHECK CONSTRAINT [FK_tbVotos_tbPresidentes_Pre_Id]
GO
ALTER TABLE [Vota].[tbVotosPorDiputados]  WITH CHECK ADD  CONSTRAINT [FK_tbVotosPorDiputados_tbDiputados_Dip_Id] FOREIGN KEY([Dip_Id])
REFERENCES [Vota].[tbDiputados] ([Dip_Id])
GO
ALTER TABLE [Vota].[tbVotosPorDiputados] CHECK CONSTRAINT [FK_tbVotosPorDiputados_tbDiputados_Dip_Id]
GO
ALTER TABLE [Vota].[tbVotosPorDiputados]  WITH CHECK ADD  CONSTRAINT [fk_tbVotosPorDiputados_tbVotos_Mes_Mesa] FOREIGN KEY([Vot_Id])
REFERENCES [Vota].[tbVotos] ([Vot_Id])
GO
ALTER TABLE [Vota].[tbVotosPorDiputados] CHECK CONSTRAINT [fk_tbVotosPorDiputados_tbVotos_Mes_Mesa]
GO
/****** Object:  StoredProcedure [Acce].[sp_inicio_sesion2]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acce].[sp_inicio_sesion2]
  @Usua_Usuario VARCHAR(20),
  @Usua_Clave VARCHAR(20)
AS 
BEGIN
    SELECT  
        U.Usuar_Id AS Id,
        CONCAT(P.Per_Nombre, ' ', P.Per_Apellido) AS Nombre,
        R.Roles_Descripcion AS Rol_Descripcion,
        U.Roles_Id AS Id_Rol,
	
			CASE U.Usuar_Admin WHEN '1' THEN 'Si' ELSE 'No' END AS Usua_Administrador, PA.Panta_Descripcion

    FROM
        [Acce].[tbUsuarios] AS U  
        INNER JOIN [Gral].[tbPersonas] AS P ON U.Per_Id = P.Per_Id
        INNER JOIN [Acce].[tbRoles] AS R ON U.Roles_Id = R.Roles_Id INNER JOIN tbPantallasPorRoles PR ON R.Roles_Id= PR.Roles_Id INNER JOIN tbPantallas
		PA ON PA.Panta_Id= PR.Panta_Id
    WHERE  
        U.Usuar_Usuario= @Usua_Usuario
        AND U.Usuar_Contrasena =  HASHBYTES('SHA2_512', @Usua_Clave)
        AND U.Usuar_Estado = 1
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acce].[sp_Pantallas_actualizar]
    @Panta_Id INT,
    @Panta_Descripcion NVARCHAR(30),
    @Panta_Esquema NVARCHAR(5),
    @Panta_UsuarioModificacion INT,
    @Panta_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Acce].[tbPantallas]
        SET Panta_Descripcion = @Panta_Descripcion,
            Panta_Esquema = @Panta_Esquema,
            Panta_UsuarioModificacion = @Panta_UsuarioModificacion,
            Panta_FechaModificacion = @Panta_FechaModificacion
        WHERE Panta_Id = @Panta_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acce].[sp_Pantallas_buscar]
    @Panta_Id INT
AS
BEGIN
    SELECT Panta_Id, Panta_Descripcion, Panta_Esquema, Panta_UsuarioCreacion, Panta_FechaCreacion, Panta_UsuarioModificacion, Panta_FechaModificacion, Panta_Estado AS Resultado
    FROM [Acce].[tbPantallas]
    WHERE Panta_Id = @Panta_Id;
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acce].[sp_Pantallas_eliminar]
    @Panta_Id INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Acce].[tbPantallas]
        SET Panta_Estado = 0
        WHERE Panta_Id = @Panta_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acce].[sp_Pantallas_insertar]
    @Panta_Descripcion NVARCHAR(30),
    @Panta_Esquema NVARCHAR(5),
    @Panta_UsuarioCreacion INT,
    @Panta_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO [Acce].[tbPantallas] (Panta_Descripcion, Panta_Esquema, Panta_UsuarioCreacion, Panta_FechaCreacion, Panta_Estado)
        VALUES (@Panta_Descripcion, @Panta_Esquema, @Panta_UsuarioCreacion, @Panta_FechaCreacion, 1);

        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acce].[sp_Pantallas_listar]
AS
BEGIN
    SELECT Panta_Id, Panta_Descripcion, Panta_Esquema, Panta_UsuarioCreacion, Panta_FechaCreacion, Panta_UsuarioModificacion, Panta_FechaModificacion
    FROM [Acce].[tbPantallas]
    WHERE Panta_Estado = 1;
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_PantallasPorRol_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Acce].[sp_PantallasPorRol_buscar]
    @Roles_Id INT
AS
BEGIN
    SELECT 
        Papro_Id,
        [Panta_Id],
        paro.[Roles_Id],
        [Papro_UsuarioCreacion],
        [Papro_FechaCreacion],
        [Papro_UsuarioModificacion],
        [Papro_FechaModificacion],
        [Papro_Estado],
        Roles_Descripcion
    FROM 
       [Acce].[tbPantallasPorRoles] AS paro
        JOIN Acce.tbRoles AS r on paro.Roles_Id = r.Roles_Id
    WHERE
        paro.[Roles_Id] = @Roles_Id AND [Papro_Estado] = 1;
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_PantallasPorRol_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [Acce].[sp_PantallasPorRol_eliminar] 
    @PaRo_Id int
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM [Acce].[tbPantallasPorRoles]
        WHERE Roles_Id = @PaRo_Id;
        SELECT 1 AS Resultado; 

        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT -1 AS Resultado;
        ROLLBACK;
    END CATCH
END
GO
/****** Object:  StoredProcedure [Acce].[sp_PantallasPorRol_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [Acce].[sp_PantallasPorRol_listar]
AS
BEGIN
select paro.Roles_Id AS Roles_Id, Roles_Descripcion, paro.Panta_Id AS Panta_Id , Panta_Descripcion
from [Acce].[tbPantallasPorRoles] paro
JOIN Acce.tbPantallas pant ON pant.Panta_Id = paro.Panta_Id
JOIN Acce.tbRoles rol ON rol.Roles_Id = paro.Roles_Id
WHERE pant.Panta_Estado = 1 and rol.Roles_Estado = 1 and paro.Papro_Estado = 1
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_PantallasRoles_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [Acce].[sp_PantallasRoles_insertar]
    @Panta_Id INT,
    @Roles_Id INT,
    @Papro_UsuarioCreacion INT,
    @Papro_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Acce].[tbPantallasPorRoles](Panta_Id, Roles_Id, Papro_UsuarioCreacion, Papro_FechaCreacion)
        VALUES (@Panta_Id, @Roles_Id, @Papro_UsuarioCreacion, @Papro_FechaCreacion);

        SELECT 1 AS resultado
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT -1 AS resultado
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [Acce].[sp_Roles_actualizar]
    @Roles_Id INT,
    @Roles_Descripcion VARCHAR(50),
    @Roles_UsuarioModificacion INT,
    @Roles_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Acce].[tbRoles]
        SET Roles_Descripcion = @Roles_Descripcion,
            Roles_UsuarioModificacion = @Roles_UsuarioModificacion,
            Roles_FechaModificacion = @Roles_FechaModificacion
        WHERE Roles_Id = @Roles_Id;
        SELECT 1 AS Resultado;  

        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT -1 AS Resultado;
        ROLLBACK;
    END CATCH
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acce].[sp_Roles_eliminar]
    @Roles_Id INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM [Acce].[tbRoles]
        WHERE [Roles_Id] = @Roles_Id;
            SELECT 1 AS Resultado; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado; 
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Acce].[sp_Roles_insertar]
    @Roles_Descripcion NVARCHAR(50),
    @Roles_UsuarioCreacion INT,
    @Roles_FechaCreacion DATETIME,
    @ID INT OUTPUT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Acce].[tbRoles] (Roles_Descripcion, Roles_UsuarioCreacion, Roles_FechaCreacion)
        VALUES (@Roles_Descripcion, @Roles_UsuarioCreacion, @Roles_FechaCreacion);

        SET @ID = SCOPE_IDENTITY();
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT @ID = -1;
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   CREATE PROCEDURE [Acce].[sp_Roles_listar]
AS
BEGIN
    SELECT Roles_Id, Roles_Descripcion
	FROM [Acce].[tbRoles]
	WHERE Roles_Estado= 1
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_obtener]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [Acce].[sp_Roles_obtener]
    @Roles_Id INT
AS
BEGIN
    SELECT Roles_Id, Roles_Descripcion, Roles_UsuarioCreacion, Roles_FechaCreacion, Roles_UsuarioModificacion, Roles_FechaModificacion
    FROM [Acce].[tbRoles]
    WHERE Roles_Id = @Roles_Id AND Roles_Estado = 1;
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_obtenerid]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [Acce].[sp_Roles_obtenerid] 
@usuario_creacion int, 
@fecha_creacion datetime
AS
BEGIN
SELECT Roles_Id 
FROM Acce.tbRoles where  Roles_UsuarioCreacion = @usuario_creacion or Roles_UsuarioModificacion = @usuario_creacion and Roles_FechaCreacion = @fecha_creacion or Roles_FechaModificacion = @fecha_creacion
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Usuarios_iniciosesion1]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acce].[sp_Usuarios_iniciosesion1]  
	@Usuario NVARCHAR (100), 
	@Contra	NVARCHAR (100)
AS
BEGIN
	SELECT DISTINCT  usu.Usuar_Id ,
			usu.Usuar_Usuario AS Usua_Nombre,
			usu.Usuar_Contrasena AS Usua_Contrasenia,
			p.Panta_Descripcion AS  Pant_Descripcion, 
			usu.Roles_Id ,
	CASE usu.Usuar_Admin WHEN '1' THEN 'Si' ELSE 'No' END AS Usua_Administrador
	FROM Acce.tbUsuarios AS usu  full JOIN Acce.tbPantallasPorRoles AS R 
	ON r.Roles_Id = usu.Roles_Id full JOIN Acce.tbPantallas AS p ON p.Panta_Id = R.Panta_Id
	WHERE usu.Usuar_Usuario = @Usuario AND usu.Usuar_Contrasena = @Contra;
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Usuarios_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acce].[sp_Usuarios_listar]
AS
BEGIN
    SELECT Usuar_Id, Usuar_Usuario, Usuar_Contrasena, Per_Id, Roles_Id, Usuar_UltimaSesion, Usuar_Admin, Usuar_UsuarioCreacion, Usuar_FechaCreacion, Usuar_UsuarioModificacion, Usuar_FechaModificacion, Usuar_Estado
    FROM [Acce].[tbUsuarios]
	WHERE Usuar_Estado= 1;
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Usuarios_validarclave]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [Acce].[sp_Usuarios_validarclave]
@Contra nvarchar (max)
AS
BEGIN 
   SELECT * FROM Acce.tbUsuarios WHERE Usuar_Contrasena = CONVERT(varbinary(MAX), HASHBYTES('SHA2_512', @Contra))
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Usuarios_validarusuario]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [Acce].[sp_Usuarios_validarusuario]
@Usuario Nvarchar (max)
AS
BEGIN 
   SELECT * FROM Acce.tbUsuarios WHERE Usuar_Usuario = @Usuario
END
GO
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_Departamentos_actualizar]
    @Dep_Id CHAR(2),
    @Dep_Descripcion NVARCHAR(50),
    @Dep_UsuarioModificacion INT,
    @Dep_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
       
        UPDATE Gral.tbDepartamentos
        SET Dep_Descripcion = @Dep_Descripcion,
            Dep_UsuarioModificacion = @Dep_UsuarioModificacion,
            Dep_FechaModificacion = @Dep_FechaModificacion
        WHERE Dep_Id = @Dep_Id;

        SELECT 1 AS Resultado; 
        
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado; 
       
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_Departamentos_buscar]
    @Dep_Id CHAR(2)
AS
BEGIN
    SELECT 
        [Dep_Id],
        [Dep_Descripcion],
        Dep_UsuarioCreacion,
        [Dep_FechaCreacion],
        Dep_UsuarioModificacion,
        [Dep_FechaModificacion],
        [Dep_Estado]
    FROM 
        Gral.tbDepartamentos
    WHERE
        [Dep_Id] = @Dep_Id AND [Dep_Estado] = 1;
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_Departamentos_eliminar]
    @Dep_Id CHAR(2)
AS
BEGIN
    BEGIN TRY
        DELETE FROM Gral.tbDepartamentos
        WHERE Dep_Id = @Dep_Id;
            SELECT 1 AS Resultado;
        
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
       
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_Departamentos_insertar]
    @Dep_Id NVARCHAR(2),
    @Dep_Descripcion NVARCHAR(50),
    @Dep_UsuarioCreacion INT,
    @Dep_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Gral.tbDepartamentos(Dep_Id, Dep_Descripcion, Dep_UsuarioCreacion, Dep_FechaCreacion, Dep_Estado)
        VALUES (@Dep_Id, @Dep_Descripcion, @Dep_UsuarioCreacion, @Dep_FechaCreacion,1);

        SELECT 1; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0;
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_Departamentos_listar]
AS
BEGIN
    SELECT *
    FROM Gral.tbDepartamentos
    WHERE Dep_Estado = 1;
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Gral].[sp_EstadosCiviles_actualizar]
    @EsC_Id INT,
    @EsC_Descripcion NVARCHAR(30),
    @EsC_UsuarioModificacion INT,
    @EsC_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE Gral.tbEstadosCiviles
        SET EsC_Descripcion = @EsC_Descripcion,
            EsC_UsuarioModificacion = @EsC_UsuarioModificacion,
            EsC_FechaModificacion = @EsC_FechaModificacion
        WHERE EsC_Id = @EsC_Id;

        SELECT 1; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0;
        ROLLBACK;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_EstadosCiviles_buscar]
    @EsC_Id INT
AS
BEGIN
    SELECT 
        [EsC_Id],
        [EsC_Descripcion],
        EsC_UsuarioCreacion,
        [EsC_FechaCreacion],
        EsC_UsuarioModificacion,
        [EsC_FechaModificacion],
        [EsC_Estado]
    FROM 
        Gral.tbEstadosCiviles
    WHERE
        [EsC_Id] = @EsC_Id AND [EsC_Estado] = 1;
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_EstadosCiviles_eliminar]
    @EsC_Id INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM Gral.tbEstadosCiviles
        WHERE EsC_Id = @EsC_Id;

            SELECT 1 AS Resultado; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado; 
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_EstadosCiviles_insertar]
    @EsC_Descripcion NVARCHAR(30),
    @EsC_UsuarioCreacion INT,
    @EsC_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Gral.tbEstadosCiviles (EsC_Descripcion, EsC_UsuarioCreacion, EsC_FechaCreacion,EsC_Estado)
        VALUES (@EsC_Descripcion, @EsC_UsuarioCreacion, @EsC_FechaCreacion,1);


        SELECT 1; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0; 
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[sp_EstadosCiviles_listar]
AS
BEGIN
    SELECT EsC_Id, EsC_Descripcion
    FROM Gral.tbEstadosCiviles
    WHERE EsC_Estado = 1;
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Municipios_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Gral].[sp_Municipios_actualizar]
    @Mun_Id CHAR(4),
    @Mun_Descripcion NVARCHAR(50),
    @Dep_Id CHAR(2),
    @Mun_UsuarioModificacion INT,
    @Mun_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE Gral.tbMunicipios
        SET Mun_Descripcion = @Mun_Descripcion,
            Dep_Id = @Dep_Id,
            Mun_UsuarioModificacion = @Mun_UsuarioModificacion,
            Mun_FechaModificacion = @Mun_FechaModificacion
        WHERE Mun_Id = @Mun_Id;

        SELECT 1 as Resultado; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado; 
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Municipios_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_Municipios_buscar]
    @Mun_Id CHAR(4)
AS
BEGIN
    SELECT 
        [Mun_Id],
        [Mun_Descripcion],
        [Dep_Id],
        Mun_UsuarioCreacion,
	[Mun_FechaCreacion],
       Mun_UsuarioModificacion
        [Mun_FechaModificacion],
        [Mun_Estado]
    FROM 
        Gral.tbMunicipios 
    WHERE
        [Mun_Id] = @Mun_Id AND [Mun_Estado] = 1;
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Municipios_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_Municipios_eliminar]
    @Mun_Id CHAR(4)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE FROM Gral.tbMunicipios
        WHERE Mun_Id = @Mun_Id;

     
            SELECT 1 AS Resultado;
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Municipios_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[sp_Municipios_insertar]
    @Mun_Id CHAR(4),
    @Mun_Descripcion NVARCHAR(50),
    @Dep_Id CHAR(2),
    @Mun_UsuarioCreacion INT,
    @Mun_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Gral].[tbMunicipios] (Mun_Id, Mun_Descripcion, Dep_Id, Mun_UsuarioCreacion, Mun_FechaCreacion)
        VALUES (@Mun_Id, @Mun_Descripcion, @Dep_Id, @Mun_UsuarioCreacion, @Mun_FechaCreacion);

        SELECT 1;
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0; 
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Municipios_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[sp_Municipios_listar]
AS
BEGIN
    SELECT Mun_Id, Mun_Descripcion, D.Dep_Descripcion
    FROM [Gral].[tbMunicipios]  M INNER JOIN Gral.tbDepartamentos D ON M.Dep_Id=D.Dep_Id
    WHERE Mun_Estado = 1;
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Personas_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [Gral].[sp_Personas_actualizar]
    @Per_Id INT,
    @Per_Nombre NVARCHAR(50),
    @Per_Apellido NVARCHAR(50),
    @Per_FechaNacimiento DATE,
    @Per_Sexo CHAR(1),
    @Per_CedulaIdentidad NVARCHAR(13),
    @Per_Direccion NVARCHAR(MAX),
    @Mun_Id CHAR(4),
    @Per_Telefono NVARCHAR(30),
    @Per_UsuarioModificacion INT,
    @Per_FechaModificacion DATETIME,
    @Mes_Mesa INT,
    @Mes_Id INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Gral].[tbPersonas]
        SET Per_Nombre = @Per_Nombre,
            Per_Apellido = @Per_Apellido,
            Per_FechaNacimiento = @Per_FechaNacimiento,
            Per_Sexo = @Per_Sexo,
            Per_CedulaIdentidad = @Per_CedulaIdentidad,
            Per_Direccion = @Per_Direccion,
            Mun_Id = @Mun_Id,
            Per_Telefono = @Per_Telefono,
            Per_UsuarioModificacion = @Per_UsuarioModificacion,
            Per_FechaModificacion = @Per_FechaModificacion,
          
            Mes_Mesa = @Mes_Mesa,
            Mes_Id = @Mes_Id
        WHERE Per_Id = @Per_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Personas_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [Gral].[sp_Personas_buscar]
    @Per_Id INT
AS
BEGIN
    SELECT Per_Id, Per_Nombre, Per_Apellido, Per_FechaNacimiento, Per_Sexo, Per_CedulaIdentidad,
           Per_Direccion, Mun_Id, Per_Telefono, Per_UsuarioCreacion, Per_FechaCreacion,
           Per_UsuarioModificacion, Per_FechaModificacion, Per_Estado, Mes_Mesa, Mes_Id, Per_Voto
    FROM [Gral].[tbPersonas]
    WHERE Per_Id = @Per_Id
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Personas_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [Gral].[sp_Personas_eliminar]
    @Per_Id INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Gral].[tbPersonas]
        SET Per_Estado = 0
        WHERE Per_Id = @Per_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Personas_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [Gral].[sp_Personas_insertar]
    @Per_Nombre NVARCHAR(50),
    @Per_Apellido NVARCHAR(50),
    @Per_FechaNacimiento DATE,
    @Per_Sexo CHAR(1),
    @Per_CedulaIdentidad NVARCHAR(13),
    @Per_Direccion NVARCHAR(MAX),
    @Mun_Id CHAR(4),
    @Per_Telefono NVARCHAR(30),
    @Per_UsuarioCreacion INT,
    @Per_FechaCreacion DATETIME,
 
    @Mes_Mesa INT,
    @Mes_Id bit,
	@EsC_Id int
AS
BEGIN
    BEGIN TRY
        INSERT INTO [Gral].[tbPersonas] (
            Per_Nombre, Per_Apellido, Per_FechaNacimiento, Per_Sexo, Per_CedulaIdentidad, 
            Per_Direccion, Mun_Id, Per_Telefono, Per_UsuarioCreacion, Per_FechaCreacion, 
             Mes_Mesa, Mes_Id, EsC_Id
        )
        VALUES (
            @Per_Nombre, @Per_Apellido, @Per_FechaNacimiento, @Per_Sexo, @Per_CedulaIdentidad, 
            @Per_Direccion, @Mun_Id, @Per_Telefono, @Per_UsuarioCreacion, @Per_FechaCreacion, 
             @Mes_Mesa, @Mes_Id,@EsC_Id
        );

        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Personas_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_Personas_listar]
AS
BEGIN
    SELECT Per_Id, Per_Nombre, Per_Apellido, 
           DATEDIFF(YEAR, Per_FechaNacimiento, GETDATE()) AS 'Edad', 
           Per_Sexo, Per_CedulaIdentidad, Per_Direccion, Mun_Id, 
           Per_Telefono, Per_UsuarioCreacion, Per_FechaCreacion, 
           Per_UsuarioModificacion, Per_FechaModificacion, Per_Estado, 
           Mes_Mesa, Mes_Id, Per_Voto, EsC_Id
    FROM [Gral].[tbPersonas]
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Alcalde_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [Vota].[sp_Alcalde_listar] 
@DNI varchar(13)
as
begin 
select * from [Vota].[tbAlcaldes] alc inner join [Gral].[tbPersonas] p
on alc.Alc_Id = p.[Per_Id]  inner join [Vota].[tbPartidos] par
	on alc.Par_id= par.Par_id
where p.Mun_Id = (select Mun_Id from [Gral].[tbPersonas] where Per_CedulaIdentidad = @DNI ) and alc.[Alc_Estado] = 1

end 

GO
/****** Object:  StoredProcedure [Vota].[sp_Alcaldes_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Vota].[sp_Alcaldes_listar]
AS
BEGIN
    SELECT Alc_Id, Alc_Votos, Alc_ImgUrl, Par_Nombre As Partido
    FROM [Vota].[tbAlcaldes] al inner join [Vota].[tbPartidos] par
	on al.Par_id= par.Par_id
	WHERE Alc_Estado= 1;
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_CentrosVotaciones_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [Vota].[sp_CentrosVotaciones_actualizar]
    @CeV_Id INT,
    @Mun_Id CHAR(4),
    @CeV_UsuarioModificacion INT,
    @CeV_FechaModificacion DATETIME,
	@CeV_Nombre Nvarchar (50)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Vota].[tbCentrosVotaciones]
        SET Mun_Id = @Mun_Id,
            CeV_UsuarioModificacion = @CeV_UsuarioModificacion,
            CeV_FechaModificacion = @CeV_FechaModificacion, CeV_Nombre=@CeV_Nombre
        WHERE CeV_Id = @CeV_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_CentrosVotaciones_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [Vota].[sp_CentrosVotaciones_buscar]
    @CeV_Id INT
AS
BEGIN
    SELECT CeV_Id, CeV_Nombre, Mun_Id, CeV_UsuarioCreacion, CeV_FechaCreacion, CeV_UsuarioModificacion, CeV_FechaModificacion, CeV_Estado
    FROM [Vota].[tbCentrosVotaciones]
    WHERE CeV_Id = @CeV_Id;
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_CentrosVotaciones_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Vota].[sp_CentrosVotaciones_eliminar]
    @CeV_Id INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Vota].[tbCentrosVotaciones]
        SET CeV_Estado = 0
        WHERE CeV_Id = @CeV_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_CentrosVotaciones_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [Vota].[sp_CentrosVotaciones_insertar]
    @Mun_Id CHAR(4),
    @CeV_UsuarioCreacion INT,
    @CeV_FechaCreacion DATETIME,
	@CeV_Nombre Nvarchar (50)
AS
BEGIN
    BEGIN TRY
        INSERT INTO [Vota].[tbCentrosVotaciones] (Mun_Id, CeV_UsuarioCreacion, CeV_FechaCreacion,CeV_Nombre, CeV_Estado)
        VALUES (@Mun_Id, @CeV_UsuarioCreacion, @CeV_FechaCreacion,@CeV_Nombre, 1);

        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_CentrosVotaciones_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Vota].[sp_CentrosVotaciones_listar]
AS
BEGIN
    SELECT CeV_Id,CeV_Nombre, Mun_Id, CeV_UsuarioCreacion, CeV_FechaCreacion, CeV_UsuarioModificacion, CeV_FechaModificacion, CeV_Estado
    FROM [Vota].[tbCentrosVotaciones]
	WHERE CeV_Estado=1
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Diputados_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Vota].[sp_Diputados_listar]
AS
BEGIN
    SELECT *
    FROM [Vota].[tbDiputados] d inner join [Gral].[tbPersonas]
	on d.Dip_Id= Per_Id inner join [Vota].[tbPartidos] par
	on d.Par_id= par.Par_id
	WHERE Dip_Estado=1
	 
	order by d.Par_id
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Diputados_listarMindy]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [Vota].[sp_Diputados_listarMindy]
AS
BEGIN
    SELECT Dip_Id, Dip_Votos, Dip_ImgUrl, Par_Nombre As Partido
    FROM [Vota].[tbDiputados] di inner join [Vota].[tbPartidos] par
	on di.Par_id= par.Par_id
	WHERE Dip_Estado=1
	 
	
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Empleados_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Vota].[sp_Empleados_actualizar]
    @Per_Id INT,
    @Emp_UsuarioModificacion INT,
    @Emp_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Vota].[tbEmpleados]
        SET Emp_UsuarioModificacion = @Emp_UsuarioModificacion,
            Emp_FechaModificacion = @Emp_FechaModificacion
        WHERE Per_Id = @Per_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Empleados_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Vota].[sp_Empleados_buscar]
    @Per_Id INT
AS
BEGIN
    SELECT Per_Id, Emp_UsuarioCreacion, Emp_FechaCreacion, Emp_UsuarioModificacion, Emp_FechaModificacion, Emp_Estado
    FROM [Vota].[tbEmpleados]
    WHERE Per_Id = @Per_Id;
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Empleados_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Vota].[sp_Empleados_eliminar]
    @Per_Id INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Vota].[tbEmpleados]
        SET Emp_Estado = 0
        WHERE Per_Id = @Per_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Empleados_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Vota].[sp_Empleados_insertar]
    @Per_Id INT,
    @Emp_UsuarioCreacion INT,
    @Emp_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO [Vota].[tbEmpleados] (Per_Id, Emp_UsuarioCreacion, Emp_FechaCreacion, Emp_Estado)
        VALUES (@Per_Id, @Emp_UsuarioCreacion, @Emp_FechaCreacion, 1);

        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Empleados_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Vota].[sp_Empleados_listar]
AS
BEGIN
    SELECT Per_Id, Emp_UsuarioCreacion, Emp_FechaCreacion, Emp_UsuarioModificacion, Emp_FechaModificacion
    FROM [Vota].[tbEmpleados]
    WHERE Emp_Estado = 1;
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Mesas_actualizar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Vota].[sp_Mesas_actualizar]
    @Mes_Id INT,
    @Mes_Jurado INT,
    @Mes_Custodio1 INT,
    @Mes_Custodio2 INT,
    @Mes_UsuarioModificacion INT,
    @Mes_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Vota].[tbMesas]
        SET Mes_Jurado = @Mes_Jurado,
            Mes_Custodio1 = @Mes_Custodio1,
            Mes_Custodio2 = @Mes_Custodio2,
            Mes_UsuarioModificacion = @Mes_UsuarioModificacion,
            Mes_FechaModificacion = @Mes_FechaModificacion
        WHERE Mes_Id = @Mes_Id;
					SELECT 1 as Resultado

        COMMIT;
    END TRY
    BEGIN CATCH
				SELECT 0  as Resultado

        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Mesas_buscar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Vota].[sp_Mesas_buscar]
    @Mes_Id INT
AS
BEGIN
    SELECT 
        [Mes_Id],
        [Mes_Jurado],
        [Mes_Custodio1],
        [Mes_Custodio2],
        [Mes_UsuarioCreacion],
        [Mes_FechaCreacion], 
		[Mes_Estado]
    FROM 
        Vota.tbMesas
    WHERE
        [Mes_Id] = @Mes_Id and [Mes_Estado] = 1;
END;

GO
/****** Object:  StoredProcedure [Vota].[sp_Mesas_eliminar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Vota].[sp_Mesas_eliminar]
    @Mes_Id INT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [Vota].[tbMesas]
        SET Mes_Estado = 0 
        WHERE Mes_Id = @Mes_Id;

      
            SELECT 1 as Resultado

        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT  0 as Resultado
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Mesas_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Vota].[sp_Mesas_insertar]
    @Mes_Jurado INT,
    @Mes_Custodio1 INT,
    @Mes_Custodio2 INT,
    @Mes_UsuarioCreacion INT,
    @Mes_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
  

        INSERT INTO [Vota].[tbMesas] (Mes_Jurado, Mes_Custodio1, Mes_Custodio2, Mes_UsuarioCreacion, Mes_FechaCreacion)
        VALUES (@Mes_Jurado, @Mes_Custodio1, @Mes_Custodio2, @Mes_UsuarioCreacion, @Mes_FechaCreacion);
			

    END TRY
    BEGIN CATCH
		
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Mesas_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Vota].[sp_Mesas_listar]
AS
BEGIN
    SELECT Mes_Id, Mes_Jurado, Mes_Custodio1, Mes_Custodio2
    FROM [Vota].[tbMesas]
	WHERE Mes_Estado =1
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Partidos_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Vota].[sp_Partidos_listar]
AS
BEGIN
    SELECT Par_Id, Par_Nombre, Par_ImgUrl
	FROM [Vota].[tbPartidos]
	WHERE  Par_Estado= 1
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_Personas_ObtenerSiVoto]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [Vota].[sp_Personas_ObtenerSiVoto] 
@Per_CedulaIdentidad varchar(13)
as
begin
select Per_Voto, Per_CedulaIdentidad from [Gral].[tbPersonas]
where Per_CedulaIdentidad= @Per_CedulaIdentidad ;
end
GO
/****** Object:  StoredProcedure [Vota].[sp_Presidentes_listar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Vota].[sp_Presidentes_listar]
AS
BEGIN
    SELECT [Pre_Id], [Pre_ImgUrl], par.Par_ImgUrl,[Per_Nombre], [Per_Apellido]  
    FROM [Vota].[tbPresidentes] pre inner join [Gral].[tbPersonas]
	on Per_Id = Pre_Id inner join [Vota].[tbPartidos] par
	on par.Par_id= pre.Par_id
	WHERE Pre_Estado=1;
END;
GO
/****** Object:  StoredProcedure [Vota].[sp_PreVotosInf]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [Vota].[sp_PreVotosInf]
  As
  begin 
  select concat(pe.Per_Nombre,' ', pe.Per_Apellido)as nombre ,p.Pre_Votos from [Vota].[tbPresidentes] p inner join  [Gral].[tbPersonas] pe
  on p.Pre_Id = pe.Per_Id
  end
GO
/****** Object:  StoredProcedure [Vota].[sp_Voto_insertar]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [Vota].[sp_Voto_insertar]
@Mes_Id int,
@Pre_Id int,
@Alc_Id int,
@DNI varchar(13)

as
begin
BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO [Vota].[tbVotos](Mes_Id, Pre_Id, Alc_Id)
        VALUES ((select Mes_id from [Gral].[tbPersonas] where Per_CedulaIdentidad = @DNI), @Pre_Id, @Alc_Id);

		update [Vota].[tbPresidentes]
		set Pre_Votos= Pre_Votos + 1

		update [Vota].[tbAlcaldes]
		set Alc_Votos= Alc_Votos + 1
		where Alc_Id=@Alc_Id;
        SELECT 1; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0;
        ROLLBACK;
    END CATCH
end
GO
/****** Object:  StoredProcedure [Vota].[sp_votopordiputado_insert]    Script Date: 15/04/2024 19:15:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [Vota].[sp_votopordiputado_insert] 
@Dip_Id int 
as
begin
insert into [Vota].[tbVotosPorDiputados]
values ((SELECT max( [Vot_Id]  ) as [Vot_Id] FROM [Vota].[tbVotos]), @Dip_Id)

--añadir update
end
GO
