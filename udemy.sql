USE [udemydb]
GO
/****** Object:  Schema [Acce]    Script Date: 15/04/2024 23:50:26 ******/
CREATE SCHEMA [Acce]
GO
/****** Object:  Schema [Curs]    Script Date: 15/04/2024 23:50:26 ******/
CREATE SCHEMA [Curs]
GO
/****** Object:  Schema [Gral]    Script Date: 15/04/2024 23:50:26 ******/
CREATE SCHEMA [Gral]
GO
/****** Object:  Table [Acce].[tbUsuarios]    Script Date: 15/04/2024 23:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acce].[tbUsuarios](
	[Usu_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usu_Usuario] [varchar](50) NULL,
	[Usu_Contrasena] [varchar](max) NULL,
	[Usu_UltimaSesion] [datetime] NULL,
	[Ins_Id] [int] NULL,
	[Rol_Id] [int] NULL,
	[Usu_Admin] [bit] NULL,
	[Usu_UsuarioCreacion] [int] NULL,
	[Usu_FechaCreacion] [datetime] NULL,
	[Usu_UsuarioModificacion] [int] NULL,
	[Usu_FechaModificacion] [datetime] NULL,
	[Usu_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Usu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [Acce].[tbUsuarios] ON 

INSERT [Acce].[tbUsuarios] ([Usu_Id], [Usu_Usuario], [Usu_Contrasena], [Usu_UltimaSesion], [Ins_Id], [Rol_Id], [Usu_Admin], [Usu_UsuarioCreacion], [Usu_FechaCreacion], [Usu_UsuarioModificacion], [Usu_FechaModificacion], [Usu_Estado]) VALUES (1, N'admin', N'123', NULL, NULL, NULL, 1, 1, CAST(N'2004-04-15T14:24:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acce].[tbUsuarios] OFF
GO
ALTER TABLE [Acce].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_Usu_Id] FOREIGN KEY([Usu_UsuarioCreacion])
REFERENCES [Acce].[tbUsuarios] ([Usu_Id])
GO
ALTER TABLE [Acce].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_Usu_Id]
GO
ALTER TABLE [Acce].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_Usu_UsuarioModificacion] FOREIGN KEY([Usu_UsuarioModificacion])
REFERENCES [Acce].[tbUsuarios] ([Usu_Id])
GO
ALTER TABLE [Acce].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_Usu_UsuarioModificacion]
GO
