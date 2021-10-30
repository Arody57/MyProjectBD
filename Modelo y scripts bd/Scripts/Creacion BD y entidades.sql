
CREATE TABLE interprete_autor_instrumentalista (
		id_artista VARCHAR(36) PRIMARY KEY NOT NULL,
		primer_nombre VARCHAR(20)  NOT NULL,
		segundo_nombre VARCHAR(20)  NULL,
		apellido_paterno VARCHAR(40) NULL,
		apellido_materno VARCHAR(40) NULL,
		nombre_artistico VARCHAR(50) NOT NULL,
		fecha_nacimiento DATE NOT NULL,
		pais_origen VARCHAR(60) NOT NULL,
		fecha_inicio_carrera DATE NOT NULL,
		fotografia varbinary(MAX) NULL,
		autor TINYINT DEFAULT 0,
		interprete TINYINT DEFAULT 0,
		instrumentalista TINYINT DEFAULT 0
);			

CREATE TABLE casa_discografica(
	id_discografica INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE disco(
	id_disco  VARCHAR(36) NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	anio_produccion DATE NOT NULL,
	id_casa_discografica INT NULL,
	numero_total_canciones INT NULL,
	duracion_disco VARCHAR(15) null,
	fotografia_disco varbinary(MAX) NULL,
	artista_individual TINYINT DEFAULT 0,
	id_interprete VARCHAR(36) NOT NULL,
	PRIMARY KEY(id_disco),
	CONSTRAINT FK_discografica FOREIGN KEY(id_casa_discografica)
	REFERENCES dbo.casa_discografica(id_discografica)
);

CREATE TABLE genero(
	id_genero  INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL
);

-- SE MODIFICA ID TRACK A NO SER AUTOINCREMENTABLE POR SER RELACIONADA A GENERO DISCO
CREATE TABLE cancion_pieza_musical(
	id_track INT IDENTITY(1,1),
	id_disco VARCHAR(36) NULL,
	numero_pieza INT NOT NULL,
	letra VARCHAR(MAX) null,
	fecha_lanzamiento DATE NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	pieza_independiente TINYINT DEFAULT 0,
	PRIMARY KEY(id_track)
);


--VALIDAR FUNCIONAMIENTO CON CANCION INDIVIDUAL
-- GENERO DISCO RELACIONADA A
-- genero (id genero)
-- disco (id_disco)
-- cancion_pieza_musical (id_cancion pieza)
CREATE TABLE genero_disco(
	id_disco VARCHAR(36) NULL,
	id_genero INT NOT NULL,
	id_cancion INT NOT NULL,
	CONSTRAINT FK_genero_disk FOREIGN KEY (id_genero)
	REFERENCES dbo.genero(id_genero),
	CONSTRAINT FK_disco_genero FOREIGN KEY (id_disco)
	REFERENCES dbo.disco(id_disco),
	CONSTRAINT FK_track FOREIGN KEY (id_cancion)
	REFERENCES dbo.cancion_pieza_musical(id_track)
);

-- GENERO_ARTISTA RELACIONADA A
-- genero id_genero
-- interprete id artista
CREATE TABLE genero_artista(
	id_genero INT NOT NULL,
	id_artista VARCHAR(36) NOT NULL,
	CONSTRAINT FK_genero_gn FOREIGN KEY (id_genero)
	REFERENCES dbo.genero(id_genero),
	CONSTRAINT FK_artist FOREIGN KEY (id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista)
);
--SE CAMBIA AÑO FUNDACION A AÑO FUNDACION Y VIGENCIA DEL GRUPO
CREATE TABLE grupo_musical(
	id_grupo VARCHAR(36)PRIMARY KEY NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	año_vigencia VARCHAR(20) NOT NULL
);


--TABLA RELACIONADA A 
-- DISCO
-- GRUPO MUSICAL (interprete)
-- INTERPRETE (id_artista)
CREATE TABLE cancion_artista(
	id_disco VARCHAR(36) NOT NULL,
	id_artista VARCHAR(36) NULL,
	id_grupo  VARCHAR(36) NULL,
	CONSTRAINT FK_disco FOREIGN KEY (id_disco)
	REFERENCES dbo.disco(id_disco),
	CONSTRAINT FK_interprete FOREIGN KEY (id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista),
	CONSTRAINT FK_grupo_musical FOREIGN KEY (id_grupo)
	REFERENCES dbo.grupo_musical(id_grupo)
);


--TABLA RELACIONADA A
-- GRUPO MUSICAL (ID GRUPO)
-- INTERPRETE (id artista)
CREATE TABLE miembro_grupo_musical(
	id_grupo_musical VARCHAR(36) NOT NULL,
	id_miembro VARCHAR(36) NOT NULL,
	CONSTRAINT FK_grupo_musical_miembro FOREIGN KEY (id_grupo_musical)
	REFERENCES dbo.grupo_musical(id_grupo),
	CONSTRAINT FK_id_artista FOREIGN KEY (id_miembro)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista)
);


CREATE TABLE casa_productora(
	id_casa INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(80) NOT NULL
);

CREATE TABLE grupo_casa_productora(
	id_grupo varchar(36) NOT NULL,
	id_casa INT NOT NULL,
	CONSTRAINT FK_casa_produc_grupo FOREIGN KEY(id_grupo)
	REFERENCES dbo.grupo_musical(id_grupo),
	CONSTRAINT FK_casa FOREIGN KEY(id_casa)
	REFERENCES dbo.casa_productora(id_casa)
);



CREATE TABLE ocupacion(
	id_ocupacion INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL
);

-- SE RELACIONA A
--interprete id_artista
-- ocupacion id_ocupacion
CREATE TABLE ocupacion_artista(
	id_ocupacion INT NOT NULL,
	id_artista VARCHAR(36) NOT NULL
	CONSTRAINT FK_ocupacion_artistss FOREIGN KEY(id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista),
	CONSTRAINT FK_ocupacion_artist FOREIGN KEY(id_ocupacion)
	REFERENCES dbo.ocupacion(id_ocupacion)
);


CREATE TABLE instrumento(
	id_instrumento INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL
);

--SE RELACIONA A
-- INTERPRETE ID_ARTISTA
-- INSTRUMENTO ID_INSTRUMENTO
CREATE TABLE instrumento_artista(
	id_instrumento INT NOT NULL,
	id_artista VARCHAR(36) NOT NULL,
	CONSTRAINT FK_instrumento FOREIGN KEY(id_instrumento)
	REFERENCES dbo.instrumento(id_instrumento),
	CONSTRAINT FK_instrumento_artistas FOREIGN KEY(id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista)
);

--TABLA PARA VALIDAR SOLAMENTE EL INSTRUMENTALISTA DE LA CANCION
--RELACIONADA A
--disco (id_disco)
-- cancion_pieza_musical(id_track),
-- interprete (id_artista)
CREATE TABLE instrumentalista_cancion(
	id_disco VARCHAR(36) NULL,
	id_track INT NOT NULL,
	id_artista VARCHAR(36) NOT NULL,
	CONSTRAINT FK_disco_instrumentos FOREIGN KEY(id_disco)
	REFERENCES dbo.disco(id_disco),
	CONSTRAINT FK_track_list FOREIGN KEY(id_track)
	REFERENCES dbo.cancion_pieza_musical(id_track),
	CONSTRAINT FK_artista_insrumentalista FOREIGN KEY(id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista)
);

CREATE TABLE tipo_voz(
	id_voz INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(25) NOT NULL
);

-- RELACIONADO A
-- INTERPRETE (id_artista)
-- TIPO VOZ (id_voz)
CREATE TABLE tipo_voz_artista(
	id_artista VARCHAR(36) NOT NULL,
	id_voz INT NOT NULL,
	CONSTRAINT FK_tipo_voz_artista FOREIGN KEY(id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista),
	CONSTRAINT FK_voz FOREIGN KEY(id_voz)
	REFERENCES dbo.tipo_voz(id_voz)
);


--RELACIONADO A
-- interprete (id_artista),
-- cancion_pieza_musical (id_track) --VALIDAR FUNCIONAMIENTO
CREATE TABLE pieza_independiente_artista(
	id_track INT NOT NULL,
	id_artista VARCHAR(36) NOT NULL,
	CONSTRAINT FK_artista_solitario  FOREIGN KEY(id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista),
	CONSTRAINT FK_track_lists FOREIGN KEY(id_track)
	REFERENCES dbo.cancion_pieza_musical(id_track)
);


CREATE TABLE clasificacion_autor(
	id_clasificacion INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50)
);
--Relacionado a
-- INTERPRETE_AUTOR ID_ARTISTA
-- CLASIFICACION AUTOR  ID_CLASIFICACION
CREATE TABLE tipo_autor(
	id_artista VARCHAR(36) NOT NULL,
	id_clasificacion INT NOT NULL,
	CONSTRAINT FK_id_artista_tipo FOREIGN KEY(id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista),
	CONSTRAINT FK_id_clasificacion FOREIGN KEY(id_clasificacion)
	REFERENCES dbo.clasificacion_autor(id_clasificacion)
);


CREATE TABLE formato_original(
	id_formato INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL
);

--RELACIONADO A
-- DISCO (ID DISCO)
-- FORMATO ORIGINAL (ID FORMATO)
CREATE TABLE disco_formato_original(
	id_disco VARCHAR(36) NOT NULL,
	id_formato INT NOT NULL,
	CONSTRAINT FK_formato_disco FOREIGN KEY (id_disco)
	REFERENCES dbo.disco(id_disco),
	CONSTRAINT FK_original_format FOREIGN KEY (id_formato)
	REFERENCES dbo.formato_original(id_formato)
);

--RELACIONADO A
-- DISCO (ID_DISCO)
-- INTERPRETE (ID_ARTISTA)
CREATE TABLE productor_disco(
	id_disco VARCHAR(36) NOT NULL,
	id_artista VARCHAR(36) NOT NULL
	CONSTRAINT FK_id_disk FOREIGN KEY (id_disco)
	REFERENCES dbo.disco(id_disco),
	CONSTRAINT FK_id_artist FOREIGN KEY (id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista)
);


CREATE TABLE premio(
	id_premio VARCHAR(36) PRIMARY KEY NOT NULL,
	nombre VARCHAR(60) NOT NULL
);

--Se relaciona a
-- INTERPRETE (ID ARTISTA),
-- PREMIO (ID PREMIO)
CREATE TABLE premio_artista(
	id_artista VARCHAR(36) NOT NULL,
	id_premio VARCHAR(36) NOT NULL,
	CONSTRAINT FK_artista_prem FOREIGN KEY (id_artista)
	REFERENCES dbo.interprete_autor_instrumentalista(id_artista),
	CONSTRAINT FK_premio_artista FOREIGN KEY (id_premio)
	REFERENCES dbo.premio(id_premio)
);

--CREACIONES DE TABLAS PARA LOGS

CREATE TABLE dbo.artista_log(
		id_log INT IDENTITY(1,1),
		id_artista VARCHAR(36) NOT NULL,
		primer_nombre VARCHAR(20)  NOT NULL,
		segundo_nombre VARCHAR(20)  NULL,
		apellido_paterno VARCHAR(40) NULL,
		apellido_materno VARCHAR(40) NULL,
		nombre_artistico VARCHAR(50) NOT NULL,
		fecha_nacimiento DATE NOT NULL,
		pais_origen VARCHAR(60) NOT NULL,
		fecha_inicio_carrera DATE NOT NULL,
		fotografia varbinary(MAX) NULL,
		autor TINYINT,
		interprete TINYINT,
		instrumentalista TINYINT,
		updated_at DATETIME NOT NULL,
		operacion CHAR(3) NOT NULL,
		CHECK(operacion = 'INS' or operacion = 'DEL')
);


CREATE TABLE dbo.grupo_musical_log(
	id_log INT IDENTITY (1,1),
	id_grupo VARCHAR(36) NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	año_fundacion DATE NOT NULL,
	updated_at DATETIME NOT NULL,
	operacion CHAR(3) NOT NULL,
	CHECK(operacion = 'INS' or operacion = 'DEL')
);


CREATE TABLE dbo.disco_log(
	id_log INT IDENTITY(1,1),
	id_disco VARCHAR(36) NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	anio_produccion DATE NOT NULL,
	id_casa_discografica INT NULL,
	numero_total_canciones INT NULL,
	duracion_disco VARCHAR(15) null,
	fotografia_disco varbinary(MAX) NULL,
	artista_individual TINYINT DEFAULT 0,
	id_interprete VARCHAR(36) NOT NULL,
	updated_at DATETIME NOT NULL,
	operacion CHAR(3) NOT NULL,
	CHECK(operacion = 'INS' or operacion = 'DEL')
);

