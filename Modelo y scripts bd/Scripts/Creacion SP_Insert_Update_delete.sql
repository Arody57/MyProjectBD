
USE track_my_record
-- -----------------------------------------------------
-- CREACIONES DE STORE PROCEDURES INSERTS
-- -----------------------------------------------------


--SP interprete_autor_instrumentalista
CREATE PROCEDURE sp_insert_interpretes(
	@primer_nombre AS VARCHAR(20),
	@segundo_nombre AS VARCHAR(20),
	@apellido_paterno AS VARCHAR(40),
	@apellido_materno AS VARCHAR(40),
	@nombre_artistico AS VARCHAR(50),
	@fecha_nacimiento AS DATE,
	@pais_origen AS VARCHAR(60),
	@fecha_inicio_carrera AS DATE,
	@fotografia AS VARBINARY(MAX),
	@autor as TINYINT,
	@interprete as TINYINT,
	@instrumentalista as TINYINT
)
AS
BEGIN
	INSERT INTO dbo.interprete_autor_instrumentalista (id_artista, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, nombre_artistico, fecha_nacimiento, pais_origen,fecha_inicio_carrera, fotografia, autor, interprete, instrumentalista)
	VALUES (NEWID(), @primer_nombre, @segundo_nombre, @apellido_paterno, @apellido_materno, @nombre_artistico, @fecha_nacimiento, @pais_origen, @fecha_inicio_carrera, @fotografia, @autor,@interprete, @instrumentalista)
	PRINT 'INSERTANDO ARTISTA';
END

-- Disco

CREATE PROCEDURE sp_insert_disco(
	@nombre AS VARCHAR(60),
	@anio_produccion AS DATE,
	@id_casa_discografica AS INT,
	@numero_total_cancion AS INT,
	@duracion_disco AS VARCHAR(15),
	@fotografia AS VARBINARY(MAX),
	@artista_ind AS TINYINT,
	@interprete AS VARCHAR(36)
)
AS
BEGIN 
	INSERT INTO dbo.disco(id_disco, nombre, anio_produccion, id_casa_discografica,numero_total_canciones, duracion_disco, fotografia_disco, artista_individual, id_interprete)
	VALUES(NEWID(),@nombre,@anio_produccion, @id_casa_discografica,@numero_total_cancion, @duracion_disco, @fotografia,@artista_ind, @interprete )
	PRINT 'DISCO INSERTADO CORRECTAMENTE';
END

-- GRUPO MUSICAL

CREATE PROCEDURE sp_insert_grupo(
	@id_grup as varchar(36),
	@nombre AS VARCHAR(60),
	@anio AS DATE
)
AS
	BEGIN
		INSERT INTO dbo.grupo_musical(id_grupo,nombre,año_fundacion)
		VALUES (@id_grup, @nombre, @anio)
		PRINT 'GRUPO MUSICAL INSERTADO';
END

-- -----------------------------------------------------
-- CREACIONES DE STORE PROCEDURES DELETE
-- -----------------------------------------------------
--ELIMINAR interprete 
CREATE PROCEDURE sp_delete_interpretes(
	@nombre AS VARCHAR(60)
)
AS
	BEGIN 
		DELETE FROM dbo.interprete_autor_instrumentalista
		WHERE nombre_artistico = @nombre
		PRINT 'Artista eliminado'
END

--Eliminacion de disco
CREATE PROCEDURE sp_delete_disco(
	@nombre_disco AS VARCHAR(60)
)
AS
	BEGIN 
		DELETE FROM dbo.disco
		WHERE nombre = @nombre_disco
		PRINT 'disco eliminado'
END

--Eliminacion de grupo musical

CREATE PROCEDURE sp_delete_grupo(
	@nombre_g as varchar(60)
)
AS
	BEGIN
		DELETE FROM dob.grupo_musical
		where nombre = @nombre_g
		PRINT 'GRUPO ELIMINADO'
END

-- -----------------------------------------------------
-- CREACIONES DE TRIGGERS 
-- -----------------------------------------------------
--TABLA LOG interprete_autor_instrumentalista
CREATE TRIGGER sp_bitacora_artista
ON dbo.interprete_autor_instrumentalista
AFTER INSERT, DELETE
AS 
BEGIN
	SET NOCOUNT ON 
		INSERT INTO dbo.artista_log(
		id_artista, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, nombre_artistico, fecha_nacimiento, pais_origen,fecha_inicio_carrera, fotografia, autor, interprete, instrumentalista,  updated_at, operacion)
		SELECT
			i.id_artista, i.primer_nombre, i.segundo_nombre, i.apellido_paterno, i.apellido_materno, i.nombre_artistico, i.fecha_nacimiento, i.pais_origen, i.fecha_inicio_carrera, i.fotografia, i.autor, i.interprete, i.instrumentalista, GETDATE(), 'INS'
		FROM inserted as i
		UNION ALL
		SELECT
			d.id_artista, d.primer_nombre, d.segundo_nombre, d.apellido_paterno, d.apellido_materno, d.nombre_artistico, d.fecha_nacimiento, d.pais_origen, d.fecha_inicio_carrera, d.fotografia, d.autor, d.interprete, d.instrumentalista, GETDATE(), 'DEL'
		from deleted as d
END
	
--TRIGGER disco

CREATE TRIGGER sp_bitacora_disco
ON dbo.disco
AFTER INSERT, DELETE
AS
BEGIN
	SET NOCOUNT ON
		INSERT INTO dbo.disco_log(
			id_disco, nombre, anio_produccion, id_casa_discografica,numero_total_canciones, duracion_disco, fotografia_disco, artista_individual, id_interprete, updated_at, operacion
		)
		SELECT
			i.id_disco, i.nombre, i.anio_produccion, i.id_casa_discografica, i.numero_total_canciones, i.duracion_disco, i.fotografia_disco, i.artista_individual, i.id_interprete, GETDATE(), 'INS'
		FROM inserted as i
		UNION ALL
		SELECT
			d.id_disco, d.nombre, d.anio_produccion, d.id_casa_discografica, d.numero_total_canciones, d.duracion_disco, d.fotografia_disco, d.artista_individual, d.id_interprete, GETDATE(), 'DEL'
		FROM deleted as d
END

-- TRIGGER grupo_musical
CREATE TRIGGER sp_grupo_musical
ON dbo.grupo_musical
AFTER INSERT, DELETE
AS
BEGIN
	SET NOCOUNT ON
		INSERT INTO dbo.grupo_musical_log(
			id_grupo, nombre, año_fundacion, updated_at, operacion
		)
		SELECT
			i.id_grupo, i.nombre, i.año_fundacion, GETDATE(), 'INS'
		FROM inserted as i
		UNION ALL
		SELECT
			d.id_grupo, d.nombre, d.año_fundacion, GETDATE(), 'DEL'
		FROM deleted as d
END

-- SP INICIAL

CREATE PROCEDURE sp_select_init(
	@nombre AS VARCHAR(60)
)
as
	BEGIN
		SELECT cm.nombre, cm.fecha_lanzamiento, iai.nombre_artistico as interprete, d.nombre as album, 1 AS  isInterprete
		FROM cancion_pieza_musical cm
		INNER JOIN disco d on cm.id_disco = d.id_disco
		INNER JOIN interprete_autor_instrumentalista iai on d.id_interprete = iai.id_artista
		WHERE  cm.nombre like '%'+ @nombre +'%' 
		union all
		SELECT cm.nombre, cm.fecha_lanzamiento, iai.nombre as interprete, d.nombre as album, 0 AS  isInterprete
		FROM cancion_pieza_musical cm
		INNER JOIN disco d on cm.id_disco = d.id_disco
		INNER JOIN grupo_musical iai on d.id_interprete = iai.id_grupo
		WHERE cm.nombre like '%'+ @nombre +'%' 
END


CREATE PROCEDURE sp_select_ver_detalle(
	@interprete AS VARCHAR(60)
)
AS
BEGIN
		SELECT iai.id_artista, cm.nombre, cm.fecha_lanzamiento, iai.nombre_artistico as interprete, d.nombre as album, cd.nombre Discografica, d.duracion_disco, cm.numero_pieza as numero_cancion,cm.letra, 1 AS  isInterprete
		FROM cancion_pieza_musical cm
		INNER JOIN disco d on cm.id_disco = d.id_disco
		INNER JOIN casa_discografica cd on d.id_casa_discografica = cd.id_discografica
		INNER JOIN interprete_autor_instrumentalista iai on d.id_interprete = iai.id_artista
		WHERE  iai.nombre_artistico = @interprete
		union all
		SELECT iai.id_grupo,cm.nombre, cm.fecha_lanzamiento, iai.nombre as interprete, d.nombre as album,cd.nombre Discografica, d.duracion_disco, cm.numero_pieza as numero_cancion,cm.letra, 0 AS  isInterprete
		FROM cancion_pieza_musical cm
		INNER JOIN disco d on cm.id_disco = d.id_disco
		INNER JOIN casa_discografica cd on d.id_casa_discografica = cd.id_discografica
		INNER JOIN grupo_musical iai on d.id_interprete = iai.id_grupo
		WHERE iai.nombre = @interprete
END
