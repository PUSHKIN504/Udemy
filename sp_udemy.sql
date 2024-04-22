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
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_buscar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_eliminar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_insertar]    Script Date: 4/9/2024 10:28:25 PM ******/
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

        INSERT INTO Gral.tbDepartamentos(Dep_Id, Dep_Descripcion, Dep_UsuarioCreacion, Dep_FechaCreacion)
        VALUES (@Dep_Id, @Dep_Descripcion, @Dep_UsuarioCreacion, @Dep_FechaCreacion);

        SELECT 1; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0;
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_Departamentos_listar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
go
-- ESTADOS CIVILES
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
        SET Est_Descripcion = @EsC_Descripcion,
            Est_UsuarioModificacion = @EsC_UsuarioModificacion,
            Est_FechaModificacion = @EsC_FechaModificacion
        WHERE Est_Id = @EsC_Id;

        SELECT 1; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0;
        ROLLBACK;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_buscar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Gral].[sp_EstadosCiviles_buscar]
    @EsC_Id INT
AS
BEGIN
    SELECT 
        [Est_Id],
        [Est_Descripcion],
        Est_UsuarioCreacion,
        [Est_FechaCreacion],
        Est_UsuarioModificacion,
        [Est_FechaModificacion],
        [Est_Estado]
    FROM 
        Gral.tbEstadosCiviles
    WHERE
        [Est_Id] = @EsC_Id AND [Est_Estado] = 1;
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_eliminar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
        WHERE Est_Id = @EsC_Id;

            SELECT 1 AS Resultado; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado; 
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_insertar]    Script Date: 4/9/2024 10:28:25 PM ******/
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

        INSERT INTO Gral.tbEstadosCiviles (Est_Descripcion, Est_UsuarioCreacion, Est_FechaCreacion)
        VALUES (@EsC_Descripcion, @EsC_UsuarioCreacion, @EsC_FechaCreacion);


        SELECT 1; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0; 
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Gral].[sp_EstadosCiviles_listar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Gral].[sp_EstadosCiviles_listar]
AS
BEGIN
    SELECT Est_Id, Est_Descripcion
    FROM Gral.tbEstadosCiviles
    WHERE Est_Estado = 1;
END;

GO
/****** Object:  StoredProcedure [Gral].[sp_Municipios_actualizar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--MUNICIPIOOOS

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
/****** Object:  StoredProcedure [Gral].[sp_Municipios_buscar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
/****** Object:  StoredProcedure [Gral].[sp_Municipios_eliminar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
/****** Object:  StoredProcedure [Gral].[sp_Municipios_insertar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
/****** Object:  StoredProcedure [Gral].[sp_Municipios_listar]    Script Date: 4/9/2024 10:28:25 PM ******/
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


--- rol rolesPPAntallla y pantallas
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
        SET Pan_Descripcion = @Panta_Descripcion,
            Pan_Esquema = @Panta_Esquema,
            Pan_UsuarioModificacion = @Panta_UsuarioModificacion,
            Pan_FechaModificacion = @Panta_FechaModificacion
        WHERE Pan_Id = @Panta_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_buscar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acce].[sp_Pantallas_buscar]
    @Panta_Id INT
AS
BEGIN
    SELECT Pan_Id, Pan_Descripcion, Pan_Esquema, Pan_UsuarioCreacion, Pan_FechaCreacion, Pan_UsuarioModificacion, Pan_FechaModificacion, Pan_Estado AS Resultado
    FROM [Acce].[tbPantallas]
    WHERE Pan_Id = @Panta_Id;
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_eliminar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
        SET Pan_Estado = 0
        WHERE Pan_Id = @Panta_Id;

        COMMIT;
        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_insertar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
        INSERT INTO [Acce].[tbPantallas] (Pan_Descripcion, Pan_Esquema, Pan_UsuarioCreacion, Pan_FechaCreacion)
        VALUES (@Panta_Descripcion, @Panta_Esquema, @Panta_UsuarioCreacion, @Panta_FechaCreacion);

        SELECT 1 AS Resultado;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Pantallas_listar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acce].[sp_Pantallas_listar]
AS
BEGIN
    SELECT Pan_Id, Pan_Descripcion, Pan_Esquema, Pan_UsuarioCreacion, Pan_FechaCreacion, Pan_UsuarioModificacion, Pan_FechaModificacion
    FROM [Acce].[tbPantallas]
    WHERE Pan_Estado = 1;
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_PantallasPorRol_buscar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Acce].[sp_PantallasPorRol_buscar]
    @Roles_Id INT
AS
BEGIN
    SELECT 
        Ppr_Id,
        [Pan_Id],
        paro.[Rol_Id],
        [Ppr_UsuarioCreacion],
        [Ppr_FechaCreacion],
        [Ppr_UsuarioModificacion],
        [Ppr_FechaModificacion],
        [Ppr_Estado],
        Rol_Descripcion
    FROM 
       [Acce].[tbPantallasPorRoles] AS paro
        JOIN Acce.tbRoles AS r on paro.Rol_Id = r.Rol_Id
    WHERE
        paro.[Rol_Id] = @Roles_Id AND [Ppr_Estado] = 1;
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_PantallasPorRol_eliminar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
        WHERE Rol_Id = @PaRo_Id;
        SELECT 1 AS Resultado; 

        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT -1 AS Resultado;
        ROLLBACK;
    END CATCH
END
GO
/****** Object:  StoredProcedure [Acce].[sp_PantallasPorRol_listar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [Acce].[sp_PantallasPorRol_listar]
AS
BEGIN
select paro.Rol_Id AS Roles_Id, Rol_Descripcion, paro.Pan_Id AS Panta_Id , Pan_Descripcion
from [Acce].[tbPantallasPorRoles] paro
JOIN Acce.tbPantallas pant ON pant.Pan_Id = paro.Pan_Id
JOIN Acce.tbRoles rol ON rol.Rol_Id = paro.Rol_Id
WHERE pant.Pan_Estado = 1 and rol.Rol_Estado = 1 and paro.Ppr_Estado = 1
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_PantallasRoles_insertar]    Script Date: 4/9/2024 10:28:25 PM ******/
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

        INSERT INTO [Acce].[tbPantallasPorRoles](Pan_Id, Rol_Id, Ppr_UsuarioCreacion, Ppr_FechaCreacion)
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
/****** Object:  StoredProcedure [Acce].[sp_Roles_actualizar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
        SET Rol_Descripcion = @Roles_Descripcion,
            Rol_UsuarioModificacion = @Roles_UsuarioModificacion,
            Rol_FechaModificacion = @Roles_FechaModificacion
        WHERE Rol_Id = @Roles_Id;
        SELECT 1 AS Resultado;  

        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT -1 AS Resultado;
        ROLLBACK;
    END CATCH
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_eliminar]    Script Date: 4/9/2024 10:28:25 PM ******/
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
        WHERE [Rol_Id] = @Roles_Id;
            SELECT 1 AS Resultado; 
        COMMIT;
    END TRY
    BEGIN CATCH
        SELECT 0 AS Resultado; 
        ROLLBACK;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_insertar]    Script Date: 4/9/2024 10:28:25 PM ******/
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

        INSERT INTO [Acce].[tbRoles] (Rol_Descripcion, Rol_UsuarioCreacion, Rol_FechaCreacion)
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
/****** Object:  StoredProcedure [Acce].[sp_Roles_listar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   CREATE PROCEDURE [Acce].[sp_Roles_listar]
AS
BEGIN
    SELECT Rol_Id, Rol_Descripcion
	FROM [Acce].[tbRoles]
	WHERE Rol_Estado= 1
END;
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_obtener]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [Acce].[sp_Roles_obtener]
    @Roles_Id INT
AS
BEGIN
    SELECT Rol_Id, Rol_Descripcion, Rol_UsuarioCreacion, Rol_FechaCreacion, Rol_UsuarioModificacion, Rol_FechaModificacion
    FROM [Acce].[tbRoles]
    WHERE Rol_Id = @Roles_Id AND Rol_Estado = 1;
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Roles_obtenerid]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [Acce].[sp_Roles_obtenerid] 
@usuario_creacion int, 
@fecha_creacion datetime
AS
BEGIN
SELECT Rol_Id 
FROM Acce.tbRoles where  Rol_UsuarioCreacion = @usuario_creacion or Rol_UsuarioModificacion = @usuario_creacion and Rol_FechaCreacion = @fecha_creacion or Rol_FechaModificacion = @fecha_creacion
END
GO
-- LOGIN
CREATE PROCEDURE [Acce].[sp_inicio_sesion2]
  @Usua_Usuario VARCHAR(20),
  @Usua_Clave VARCHAR(20)
AS 
BEGIN
    SELECT  
        U.Usu_Id AS Id,
        CONCAT(U.Usu_Nombre, ' ', U.Usu_Apellido) AS Nombre,
        R.Rol_Descripcion AS Rol_Descripcion,
        U.Rol_Id AS Id_Rol,
	
			CASE U.Usu_Admin WHEN '1' THEN 'Si' ELSE 'No' END AS Usua_Administrador, PA.Pan_Descripcion

    FROM
        [Acce].[tbUsuarios] AS U  
        INNER JOIN [Acce].[tbRoles] AS R ON U.Rol_Id = R.Rol_Id INNER JOIN tbPantallasPorRoles PR ON R.Rol_Id= PR.Rol_Id INNER JOIN tbPantallas
		PA ON PA.Pan_Id= PR.Pan_Id
    WHERE  
        U.Usu_Usuario= @Usua_Usuario
        AND U.Usu_Contrasena =  HASHBYTES('SHA2_512', @Usua_Clave)
        AND U.Usu_Estado = 1
END
go
CREATE PROCEDURE [Acce].[sp_Usuarios_iniciosesion1]  
	@Usuario NVARCHAR (100), 
	@Contra	NVARCHAR (100)
AS
BEGIN
	SELECT DISTINCT  usu.Usu_Id ,
			usu.Usu_Usuario AS Usua_Nombre,
			usu.Usu_Contrasena AS Usua_Contrasenia,
			p.Pan_Descripcion AS  Pant_Descripcion, 
			usu.Rol_Id ,
	CASE usu.Usu_Admin WHEN '1' THEN 'Si' ELSE 'No' END AS Usua_Administrador
	FROM Acce.tbUsuarios AS usu  full JOIN Acce.tbPantallasPorRoles AS R 
	ON r.Rol_Id = usu.Rol_Id full JOIN Acce.tbPantallas AS p ON p.Pan_Id = R.Pan_Id
	WHERE usu.Usu_Usuario = @Usuario AND usu.Usu_Contrasena = @Contra;
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Usuarios_listar]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON

GO
/****** Object:  StoredProcedure [Acce].[sp_Usuarios_validarclave]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [Acce].[sp_Usuarios_validarclave]
@Contra nvarchar (max)
AS
BEGIN 
   SELECT * FROM Acce.tbUsuarios WHERE Usu_Contrasena = CONVERT(varbinary(MAX), HASHBYTES('SHA2_512', @Contra))
END
GO
/****** Object:  StoredProcedure [Acce].[sp_Usuarios_validarusuario]    Script Date: 4/9/2024 10:28:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [Acce].[sp_Usuarios_validarusuario]
@Usuario Nvarchar (max)
AS
BEGIN 
   SELECT * FROM Acce.tbUsuarios WHERE Usu_Usuario = @Usuario
END
GO
--continuar

CREATE PROCEDURE [Acce].[SP_Usuarios_Eliminar] (
	@Usuar_Id INT,
	@Usuar_UsuarioModificacion INT,
	@Usuar_FechaModificacion DATETIME
)
AS
BEGIN

	UPDATE [Acce].[tbUsuarios]
	SET
		[Usu_Estado] = 0,
		[Usu_UsuarioModificacion] = @Usuar_UsuarioModificacion,
		[Usu_FechaModificacion] = @Usuar_FechaModificacion
	WHERE
		[Usu_Id] = @Usuar_Id

END

GO
/****** Object:  StoredProcedure [Acces].[SP_Usuarios_Insertar]    Script Date: 3/7/2024 10:04:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acce].[SP_Usuarios_Insertar] (
	@Usuar_Usuario VARCHAR(50),
	@Usuar_Contrasena NVARCHAR(MAX), -- Use NVARCHAR for better password storage
	@Instr_Id INT,
	@Roles_Id INT,
	@Usuar_Admin BIT ,
	@Usuar_UsuarioCreacion INT ,
	@Usuar_FechaCreacion DATETIME
)
AS
BEGIN
	-- Hash the password before storing it in the database
	DECLARE @HashedPassword NVARCHAR(MAX);
	SET @HashedPassword = CONVERT(NVARCHAR(MAX), HASHBYTES('SHA2_512', @Usuar_Contrasena),2);

	INSERT INTO [Acces].[tbUsuarios] (
		[Usuar_Usuario],
		[Usuar_Contrasena], -- Store the hashed password
		[Instr_Id],
		[Roles_Id],
		[Usuar_Admin],
		[Usuar_UsuarioCreacion],
		[Usuar_FechaCreacion],
		[Usuar_Estado]
	)
	VALUES (
		@Usuar_Usuario,
		@HashedPassword,
		@Instr_Id,
		@Roles_Id,
		@Usuar_Admin,
		@Usuar_UsuarioCreacion,
		@Usuar_FechaCreacion,
		1 -- Default value for Usuar_Estado
	)

END
go

CREATE PROCEDURE [Acces].[SP_Usuarios_Modificar] (
	@Usuar_Id INT,
	@Usuar_Usuario VARCHAR(50),
	@New_Usuar_Contrasena NVARCHAR(MAX), -- Use NVARCHAR for password
	@Instr_Id INT,
	@Roles_Id INT,
	@Usuar_Admin BIT,
	@Usuar_UsuarioModificacion INT,
	@Usuar_FechaModificacion DATETIME
)
AS
BEGIN
	BEGIN TRY
		DECLARE @HashedPassword NVARCHAR(MAX);

		-- If a new password is provided, hash it before updating
		IF @New_Usuar_Contrasena IS NOT NULL 
		BEGIN
			SET @HashedPassword = HASHBYTES('SHA2_512', @New_Usuar_Contrasena);
		END
		ELSE
		BEGIN
			-- If no new password is provided, avoid unnecessary updates
			SELECT @HashedPassword = Usuar_Contrasena FROM [Acces].[tbUsuarios] WHERE Usuar_Id = @Usuar_Id;
		END

		UPDATE [Acces].[tbUsuarios]
		SET
			[Usuar_Usuario] = @Usuar_Usuario,
			[Usuar_Contrasena] = @HashedPassword, -- Update with hashed password
			[Instr_Id] = @Instr_Id,
			[Roles_Id] = @Roles_Id,
			[Usuar_Admin] = @Usuar_Admin,
			[Usuar_UsuarioModificacion] = @Usuar_UsuarioModificacion,
			[Usuar_FechaModificacion] = @Usuar_FechaModificacion
		WHERE
			[Usuar_Id] = @Usuar_Id
		SELECT 1
	END TRY
	BEGIN CATCH
		SELECT 0
	END CATCH
END

GO
