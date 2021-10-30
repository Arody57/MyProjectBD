USE [master]
GO
/****** Object:  Database [track_my_record]    Script Date: 30/10/2021 11:50:12 ******/
CREATE DATABASE [track_my_record]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'track_my_record', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\track_my_record.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'track_my_record_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\track_my_record_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [track_my_record] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [track_my_record].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [track_my_record] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [track_my_record] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [track_my_record] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [track_my_record] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [track_my_record] SET ARITHABORT OFF 
GO
ALTER DATABASE [track_my_record] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [track_my_record] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [track_my_record] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [track_my_record] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [track_my_record] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [track_my_record] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [track_my_record] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [track_my_record] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [track_my_record] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [track_my_record] SET  ENABLE_BROKER 
GO
ALTER DATABASE [track_my_record] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [track_my_record] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [track_my_record] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [track_my_record] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [track_my_record] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [track_my_record] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [track_my_record] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [track_my_record] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [track_my_record] SET  MULTI_USER 
GO
ALTER DATABASE [track_my_record] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [track_my_record] SET DB_CHAINING OFF 
GO
ALTER DATABASE [track_my_record] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [track_my_record] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [track_my_record] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [track_my_record] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [track_my_record] SET QUERY_STORE = OFF
GO
USE [track_my_record]
GO
/****** Object:  Table [dbo].[artista_log]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[artista_log](
	[id_log] [int] IDENTITY(1,1) NOT NULL,
	[id_artista] [varchar](36) NOT NULL,
	[primer_nombre] [varchar](20) NOT NULL,
	[segundo_nombre] [varchar](20) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[nombre_artistico] [varchar](50) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[pais_origen] [varchar](60) NOT NULL,
	[fecha_inicio_carrera] [date] NOT NULL,
	[fotografia] [varbinary](max) NULL,
	[autor] [tinyint] NULL,
	[interprete] [tinyint] NULL,
	[instrumentalista] [tinyint] NULL,
	[updated_at] [datetime] NOT NULL,
	[operacion] [char](3) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cancion_artista]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cancion_artista](
	[id_disco] [varchar](36) NOT NULL,
	[id_artista] [varchar](36) NULL,
	[id_grupo] [varchar](36) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cancion_pieza_musical]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cancion_pieza_musical](
	[id_track] [int] IDENTITY(1,1) NOT NULL,
	[id_disco] [varchar](36) NULL,
	[letra] [varchar](max) NULL,
	[fecha_lanzamiento] [date] NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[pieza_independiente] [tinyint] NULL,
	[numero_pieza] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_track] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[casa_discografica]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[casa_discografica](
	[id_discografica] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_discografica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[casa_productora]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[casa_productora](
	[id_casa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_casa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clasificacion_autor]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clasificacion_autor](
	[id_clasificacion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[disco]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disco](
	[id_disco] [varchar](36) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[anio_produccion] [date] NOT NULL,
	[id_casa_discografica] [int] NULL,
	[numero_total_canciones] [int] NULL,
	[duracion_disco] [varchar](15) NULL,
	[fotografia_disco] [varbinary](max) NULL,
	[artista_individual] [tinyint] NULL,
	[id_interprete] [varchar](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_disco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[disco_formato_original]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disco_formato_original](
	[id_disco] [varchar](36) NOT NULL,
	[id_formato] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[disco_log]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[disco_log](
	[id_log] [int] IDENTITY(1,1) NOT NULL,
	[id_disco] [varchar](36) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[anio_produccion] [date] NOT NULL,
	[id_casa_discografica] [int] NULL,
	[numero_total_canciones] [int] NULL,
	[duracion_disco] [varchar](15) NULL,
	[fotografia_disco] [varbinary](max) NULL,
	[artista_individual] [tinyint] NULL,
	[id_interprete] [varchar](36) NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[operacion] [char](3) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[formato_original]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formato_original](
	[id_formato] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_formato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genero]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genero](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genero_artista]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genero_artista](
	[id_genero] [int] NOT NULL,
	[id_artista] [varchar](36) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genero_disco]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genero_disco](
	[id_disco] [varchar](36) NULL,
	[id_genero] [int] NOT NULL,
	[id_cancion] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo_casa_productora]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo_casa_productora](
	[id_grupo] [varchar](36) NOT NULL,
	[id_casa] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo_musical]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo_musical](
	[id_grupo] [varchar](36) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[año_fundacion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo_musical_log]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo_musical_log](
	[id_log] [int] IDENTITY(1,1) NOT NULL,
	[id_grupo] [varchar](36) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[año_fundacion] [date] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[operacion] [char](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instrumentalista_cancion]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instrumentalista_cancion](
	[id_disco] [varchar](36) NULL,
	[id_track] [int] NOT NULL,
	[id_artista] [varchar](36) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instrumento]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instrumento](
	[id_instrumento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_instrumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instrumento_artista]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instrumento_artista](
	[id_instrumento] [int] NOT NULL,
	[id_artista] [varchar](36) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[interprete_autor_instrumentalista]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interprete_autor_instrumentalista](
	[id_artista] [varchar](36) NOT NULL,
	[primer_nombre] [varchar](20) NOT NULL,
	[segundo_nombre] [varchar](20) NULL,
	[apellido_paterno] [varchar](40) NULL,
	[apellido_materno] [varchar](40) NULL,
	[nombre_artistico] [varchar](50) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[pais_origen] [varchar](60) NOT NULL,
	[fecha_inicio_carrera] [date] NOT NULL,
	[fotografia] [varbinary](max) NULL,
	[autor] [tinyint] NULL,
	[interprete] [tinyint] NULL,
	[instrumentalista] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_artista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[miembro_grupo_musical]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[miembro_grupo_musical](
	[id_grupo_musical] [varchar](36) NOT NULL,
	[id_miembro] [varchar](36) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ocupacion]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ocupacion](
	[id_ocupacion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ocupacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ocupacion_artista]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ocupacion_artista](
	[id_ocupacion] [int] NOT NULL,
	[id_artista] [varchar](36) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pieza_independiente_artista]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pieza_independiente_artista](
	[id_track] [int] NOT NULL,
	[id_artista] [varchar](36) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[premio]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[premio](
	[id_premio] [varchar](36) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_premio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[premio_artista]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[premio_artista](
	[id_artista] [varchar](36) NOT NULL,
	[id_premio] [varchar](36) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productor_disco]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productor_disco](
	[id_disco] [varchar](36) NOT NULL,
	[id_artista] [varchar](36) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_autor]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_autor](
	[id_artista] [varchar](36) NOT NULL,
	[id_clasificacion] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_voz]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_voz](
	[id_voz] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_voz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_voz_artista]    Script Date: 30/10/2021 11:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_voz_artista](
	[id_artista] [varchar](36) NOT NULL,
	[id_voz] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[artista_log] ON 

INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (1, N'B3B871D6-8E0B-460D-B94C-027EB42EE2BA', N'Fryderyk', N'Franciszek', N'Chopin', NULL, N'Frederic Chopin', CAST(N'1810-03-01' AS Date), N'Francia', CAST(N'1829-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (2, N'2F02D2E0-8D27-4BAE-9A1C-A003403091DE', N'Giochino', NULL, N'Rossini', NULL, N'Giochino Rossini', CAST(N'1792-02-29' AS Date), N'Italia', CAST(N'1855-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (3, N'294576E5-FE90-44FC-A002-8D46A4F4CFD2', N'Johannes', N'Chrysostomus ', N'Theophilus', N'Mozart', N'Wolfgang Amadeus Mozart', CAST(N'1756-01-27' AS Date), N'Alemania', CAST(N'1761-01-01' AS Date), NULL, 0, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (4, N'753193E1-E19E-4B3D-92B2-F64D99A6E0B2', N'Ludwing', N'Van', N'Bethoveen', NULL, N'Ludwing Van Bethoveen', CAST(N'1827-12-16' AS Date), N'Alemania', CAST(N'1782-01-01' AS Date), NULL, 0, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (5, N'CB22849F-4B47-470C-8773-A11E5D22C030', N'Andres', N'Cepeda', N'Cediel', NULL, N'Andres Cepeda', CAST(N'1973-07-07' AS Date), N'Colombia', CAST(N'1989-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (6, N'B20AC8D5-BDC2-4AEB-8BB1-540080E24112', N'Jose', N'Martin', N'Cuevas', N'Cobos', N'Pedro Fernandez', CAST(N'1969-09-28' AS Date), N'Mexico', CAST(N'1976-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (7, N'B2387F2A-6264-4FD7-9FA5-76272B0358D8', N'Ramon', N'Bautista', N'Ortega', N'Saavedra', N'Palito Ortega', CAST(N'1941-03-08' AS Date), N'Argentina', CAST(N'1941-03-08' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (8, N'5D3400B1-7F62-432E-8E0F-1B059A8B6916', N'Karina', N'Jesica', N'Tejeda', NULL, N'Karina', CAST(N'1986-01-30' AS Date), N'Argentina', CAST(N'2004-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (9, N'81D65B48-90C0-4101-876D-1A7CE69031C2', N'Hector', N'eduardo', N'Reglero', N'Montaner', N'Ricardo Montaner', CAST(N'1957-12-08' AS Date), N'Argentina', CAST(N'1973-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (10, N'850CC796-6BD7-4173-939F-96A30FFE3265', N'Ruben', N'Isaac', N'Albarran', N'Ortega', N'Ruben Albarran', CAST(N'1967-02-01' AS Date), N'Mexico', CAST(N'1986-01-01' AS Date), NULL, 0, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (11, N'4E1066C3-B7A5-416D-8BC4-A106DEA361F6', N'Vicente', NULL, N'Fernandez', N'Gomez', N'Vicente Fernandez', CAST(N'1940-02-17' AS Date), N'Mexico', CAST(N'1964-01-01' AS Date), NULL, 0, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (12, N'617295AD-2E24-4946-92B0-F26C8BDC2CF0', N'Jason', N'Curtis', N'Newsted', NULL, N'Jason Newsted', CAST(N'1963-03-04' AS Date), N'Estados unidos', CAST(N'1986-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (13, N'0F4BD219-3ACC-4C3D-BC26-16A24999245C', N'Jimmy', NULL, N'Colvard', NULL, N'Jimmy Colvad', CAST(N'1945-10-16' AS Date), N'Estados unidos', CAST(N'1690-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (14, N'7255370B-8CC4-428C-9B7B-77AD9A0DB8BB', N'Ralph', N'Gallant', NULL, NULL, N'Larrie Londin', CAST(N'1943-10-15' AS Date), N'Estados unidos', CAST(N'1690-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (15, N'66EB8DAB-BC08-44FB-B481-C858CC1B6134', N'Hargus', N'Melvin', N'Robbins', NULL, N'Harguns Robbins', CAST(N'1938-01-18' AS Date), N'Estados unidos', CAST(N'1957-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (16, N'F1A00FD6-43E3-478C-973F-8BE039C81E9F', N'Jerry', NULL, N'Hey', NULL, N'Jerry Hey', CAST(N'1905-05-03' AS Date), N'Estados unidos', CAST(N'1950-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (17, N'AD998D57-2143-4EC4-8792-A992EDD2AC10', N'Louis', NULL, N'Johnson', NULL, N'Louis Johnson', CAST(N'1955-04-13' AS Date), N'Estados unidos', CAST(N'1970-01-01' AS Date), NULL, 1, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (18, N'9B8E3249-6656-4F12-8507-9C41F33E4872', N'David', N'Edward', N'Wiliams', NULL, N'David Wiliams', CAST(N'1971-08-20' AS Date), N'Inglaterra', CAST(N'1992-01-01' AS Date), NULL, 1, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (19, N'C8ED703D-EE17-4DCC-BD34-56DE734D099B', N'Robert', N'Jens', N'Rock', NULL, N'Bob Rock', CAST(N'1954-04-19' AS Date), N'Canada', CAST(N'1978-01-01' AS Date), NULL, 1, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (20, N'DDA8B460-E197-48E7-B809-EAA238100B75', N'Robert', N'John', N'Lange', NULL, N'Robert Lange', CAST(N'1948-11-11' AS Date), N'Reino unido', CAST(N'1955-01-01' AS Date), NULL, 1, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (21, N'E50B6CA2-B173-42AD-9618-0DBD5252EE2D', N'Robert', N'Bruce', N'Ferguson', NULL, N'Bob Ferguson', CAST(N'1927-12-30' AS Date), N'Estados unidos', CAST(N'1955-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (22, N'15432F0B-060C-4177-A00B-847D7798C035', N'Quincy', N'Delight', N'Jones', N'Wells', N'Quincy Jones', CAST(N'1993-03-14' AS Date), N'Estados unidos', CAST(N'1951-01-01' AS Date), NULL, 1, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (23, N'913D4994-D842-468B-BC2A-852BC9E5A31D', N'Leopoldo', N'Dante', N'Tevez', NULL, N'Leo Dan', CAST(N'1942-03-22' AS Date), N'Argentina', CAST(N'1963-01-01' AS Date), NULL, 1, 1, 0, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (24, N'7D26C8BF-97A4-43C4-9B2F-7DAFAC834F53', N'Roberto', N'Agustin', N'Miguel', N'Santiago', N'Samuel Trujillo Bveracruz', CAST(N'1964-10-23' AS Date), N'Estados unidos', CAST(N'1978-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (25, N'2C6311AE-2CA0-48FD-AD7F-FB7D654D3F93', N'Kirk', N'Lee', N'Hammett', NULL, N'Kirk Hammett', CAST(N'1962-11-18' AS Date), N'Estados unidos', CAST(N'1979-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (26, N'00FBCB54-A8F2-4D09-8793-B984FA86C410', N'James', N'Alan', N'Hetfield', NULL, N'James Hetfield', CAST(N'1963-08-03' AS Date), N'Estados unidos', CAST(N'1978-01-01' AS Date), NULL, 0, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (27, N'6AD8971F-8D06-4E73-ACAA-6ADF400393A5', N'Lars', NULL, N'Ulrich', NULL, N'Lars Ulrich', CAST(N'1963-12-26' AS Date), N'Dinamarca', CAST(N'1981-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (28, N'236C0CB5-3D0C-4623-9530-23EF48C13A6F', N'Philip', NULL, N'Hugh', N'norman', N'Phil Rudd', CAST(N'1954-05-19' AS Date), N'Australia', CAST(N'1974-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (29, N'15DD6284-63B6-46D6-9789-E9B286CCC886', N'Clifford', NULL, N'Wiliams', NULL, N'Cliff Wiliams', CAST(N'1949-12-14' AS Date), N'Inglaterra', CAST(N'1972-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (30, N'46DF190E-455D-4E36-B5B1-85085F9BD00D', N'Stephen', NULL, N'Crawford', N'Young', N'Stevie young', CAST(N'1956-11-12' AS Date), N'Reino Unido', CAST(N'1979-01-01' AS Date), NULL, 0, 0, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (31, N'AFA9FB34-B545-425B-86F3-83D0C1EBCF56', N'Freddi', NULL, N'Mercury', NULL, N'Farrokh Bulsara', CAST(N'1991-11-05' AS Date), N'Zanzibar', CAST(N'1969-01-01' AS Date), NULL, 0, 1, 0, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (32, N'B2B2C8CB-72A7-41E8-B36D-7091434CE02A', N'Paul', NULL, N'McCartney', NULL, N'James Paul McCartney', CAST(N'1942-06-18' AS Date), N'Bretania', CAST(N'1956-01-01' AS Date), NULL, 0, 0, 0, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (33, N'D8CD13EF-AD58-4FC5-9460-7612340E8C16', N'Malcom', N'Mitchell ', NULL, N'Young', N'Malcom mitchell young', CAST(N'1953-01-06' AS Date), N'Reino Unido', CAST(N'1973-01-01' AS Date), NULL, 1, 1, 0, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (34, N'760AC9B7-C778-4F19-8D2F-2C32680345B3', N'Angus', NULL, N'McKinnon', N'Young', N'Angus McKinnon Young', CAST(N'1955-03-31' AS Date), N'Australia', CAST(N'1973-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (35, N'E5689059-D833-42ED-80F8-526EB5B52FA5', N'Brian', NULL, N'Johnson', NULL, N'Brian Francis Johnson', CAST(N'1947-10-05' AS Date), N'Autralia', CAST(N'1972-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (36, N'8E9AA77F-4E99-4400-8871-E5A47377984C', N'David', N'Eric', N'Grohl', NULL, N'David Eric Grohl', CAST(N'1969-01-14' AS Date), N'Estados unidos', CAST(N'1990-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (37, N'26ADDECD-3E14-47FA-9C44-2A5D33B6F330', N'Krist', N'Anthony', N'Novoselic', NULL, N'Krist Anthony Novoselic', CAST(N'1965-05-16' AS Date), N'Estados unidos', CAST(N'1991-01-01' AS Date), NULL, 1, 1, 0, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (38, N'5FC5E5A0-8169-4D7C-A47E-FCDF58A53C52', N'Kurt', N'Donald', N'Cobain', NULL, N'Kurt Donald Cobain', CAST(N'1967-02-20' AS Date), N'Estados unidos', CAST(N'1985-01-01' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (39, N'ADF6D0D6-477D-4516-8591-70ED4A6AAF7D', N'Dolly', N'Rebecca', N'Parton', NULL, N'Dolly Parton', CAST(N'1946-01-19' AS Date), N'Estados Unidos', CAST(N'1967-01-01' AS Date), NULL, 1, 1, 0, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (40, N'EBD10C31-6C19-4526-988E-FD0464B661C8', N'Michael', N'Joseph', N'Jackson', N'dev', N'Michael jackson', CAST(N'1958-08-29' AS Date), N'Estados unidos', CAST(N'1960-06-06' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.147' AS DateTime), N'INS')
INSERT [dbo].[artista_log] ([id_log], [id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista], [updated_at], [operacion]) VALUES (41, N'AAA1A5FA-1A5C-43DE-93B4-2EDF76AC7284', N'frb', N'MDeV', N'MDeV', N'dev', N'MDeV jackson', CAST(N'1958-08-29' AS Date), N'Estados MDeV', CAST(N'1960-06-06' AS Date), NULL, 1, 1, 1, CAST(N'2021-10-28T03:00:41.397' AS DateTime), N'INS')
SET IDENTITY_INSERT [dbo].[artista_log] OFF
GO
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'53D81196-1E09-425E-8815-0730416B2566', N'EBD10C31-6C19-4526-988E-FD0464B661C8', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'53D81196-1E09-425E-8815-0730416B2566', N'15432F0B-060C-4177-A00B-847D7798C035', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'0134B3A3-5B36-4AD2-87EE-2C0F27D16D9E', N'ADF6D0D6-477D-4516-8591-70ED4A6AAF7D', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'7F6F8D63-D984-443D-890A-487E7D3BAF65', NULL, N'BA7D1FE5-2483-4212-B5DC-12C929A4E248')
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'C6C55450-38A7-45FB-BF32-6EFA003D1940', NULL, N'C641E960-BA0A-444D-917E-7822FF4AE90E')
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'8C6342BD-C397-4ED7-A84B-7139B31C4E2C', NULL, N'1D94F442-A403-47CF-B5A0-F3091AAFB687')
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'913D4994-D842-468B-BC2A-852BC9E5A31D', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'4E1066C3-B7A5-416D-8BC4-A106DEA361F6', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'850CC796-6BD7-4173-939F-96A30FFE3265', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'81D65B48-90C0-4101-876D-1A7CE69031C2', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'5D3400B1-7F62-432E-8E0F-1B059A8B6916', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'B2387F2A-6264-4FD7-9FA5-76272B0358D8', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'B20AC8D5-BDC2-4AEB-8BB1-540080E24112', NULL)
INSERT [dbo].[cancion_artista] ([id_disco], [id_artista], [id_grupo]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'CB22849F-4B47-470C-8773-A11E5D22C030', NULL)
GO
SET IDENTITY_INSERT [dbo].[cancion_pieza_musical] ON 

INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (1, N'53D81196-1E09-425E-8815-0730416B2566', NULL, CAST(N'1983-05-08' AS Date), N'Wanna Be Startin Something', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (2, N'53D81196-1E09-425E-8815-0730416B2566', NULL, CAST(N'1982-06-04' AS Date), N'The Girl is Mine', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (3, N'53D81196-1E09-425E-8815-0730416B2566', NULL, CAST(N'1894-01-23' AS Date), N'Thriller', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (4, N'53D81196-1E09-425E-8815-0730416B2566', NULL, CAST(N'1983-05-08' AS Date), N'Billie Jean', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (5, N'53D81196-1E09-425E-8815-0730416B2566', NULL, CAST(N'1982-06-04' AS Date), N'Beat It', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (6, N'0134B3A3-5B36-4AD2-87EE-2C0F27D16D9E', NULL, CAST(N'1974-02-04' AS Date), N'When someone wants to leave', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (7, N'0134B3A3-5B36-4AD2-87EE-2C0F27D16D9E', NULL, CAST(N'1974-02-04' AS Date), N'River of happiness', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (8, N'7F6F8D63-D984-443D-890A-487E7D3BAF65', NULL, CAST(N'2021-10-31' AS Date), N'Hells Bells', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (9, N'7F6F8D63-D984-443D-890A-487E7D3BAF65', NULL, CAST(N'1980-07-25' AS Date), N'Shoot to Thrill', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (10, N'7F6F8D63-D984-443D-890A-487E7D3BAF65', NULL, CAST(N'1980-07-25' AS Date), N'Back in Black', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (11, N'7F6F8D63-D984-443D-890A-487E7D3BAF65', NULL, CAST(N'1980-07-25' AS Date), N'You Shook me all night long', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (12, N'C6C55450-38A7-45FB-BF32-6EFA003D1940', NULL, CAST(N'1996-01-19' AS Date), N'Drain you', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (13, N'C6C55450-38A7-45FB-BF32-6EFA003D1940', NULL, CAST(N'1992-01-18' AS Date), N'Grunge', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (14, N'C6C55450-38A7-45FB-BF32-6EFA003D1940', NULL, CAST(N'1996-10-08' AS Date), N'Aneurysm', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (15, N'8C6342BD-C397-4ED7-A84B-7139B31C4E2C', NULL, CAST(N'1991-07-29' AS Date), N'Enter Sandman', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (16, N'8C6342BD-C397-4ED7-A84B-7139B31C4E2C', NULL, CAST(N'1991-07-29' AS Date), N'Sad but True', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (17, N'8C6342BD-C397-4ED7-A84B-7139B31C4E2C', NULL, CAST(N'1991-07-29' AS Date), N'Holier Than Thou', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (18, N'8C6342BD-C397-4ED7-A84B-7139B31C4E2C', NULL, CAST(N'1992-04-20' AS Date), N'Nothing Else Matters', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (19, N'8C6342BD-C397-4ED7-A84B-7139B31C4E2C', NULL, CAST(N'1990-08-01' AS Date), N'The Struggle Within', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (20, N'66C57676-FC40-42B6-B5E8-B488683E2C7B', NULL, CAST(N'1976-02-09' AS Date), N'Esa pared', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (21, N'66C57676-FC40-42B6-B5E8-B488683E2C7B', NULL, CAST(N'1976-02-09' AS Date), N'Como te extraño mi amor', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (22, N'66C57676-FC40-42B6-B5E8-B488683E2C7B', NULL, CAST(N'1976-02-09' AS Date), N'Te he prometido', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (23, N'66C57676-FC40-42B6-B5E8-B488683E2C7B', NULL, CAST(N'1976-02-09' AS Date), N'Extraños', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (24, N'66C57676-FC40-42B6-B5E8-B488683E2C7B', NULL, CAST(N'1976-02-09' AS Date), N'Celia', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (25, N'66C57676-FC40-42B6-B5E8-B488683E2C7B', NULL, CAST(N'1976-02-09' AS Date), N'Toquen mariachis canten', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (26, N'66C57676-FC40-42B6-B5E8-B488683E2C7B', NULL, CAST(N'1976-02-09' AS Date), N'Mary es mi amor', 0, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (27, NULL, NULL, CAST(N'1802-01-01' AS Date), N'Claro de Luna', 1, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (28, NULL, NULL, CAST(N'1787-01-01' AS Date), N'Pequeña Serenata Nocturna', 1, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (29, NULL, NULL, CAST(N'1828-01-01' AS Date), N'Obertura', 1, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (30, NULL, NULL, CAST(N'1837-01-01' AS Date), N'Marcha Funebre', 1, NULL)
INSERT [dbo].[cancion_pieza_musical] ([id_track], [id_disco], [letra], [fecha_lanzamiento], [nombre], [pieza_independiente], [numero_pieza]) VALUES (32, N'53D81196-1E09-425E-8815-0730416B2566', N'bk', CAST(N'2021-10-30' AS Date), N'jk', 1, 3)
SET IDENTITY_INSERT [dbo].[cancion_pieza_musical] OFF
GO
SET IDENTITY_INSERT [dbo].[casa_discografica] ON 

INSERT [dbo].[casa_discografica] ([id_discografica], [nombre]) VALUES (1, N'Epic Records')
INSERT [dbo].[casa_discografica] ([id_discografica], [nombre]) VALUES (2, N'RCA')
INSERT [dbo].[casa_discografica] ([id_discografica], [nombre]) VALUES (3, N'Atco Records')
INSERT [dbo].[casa_discografica] ([id_discografica], [nombre]) VALUES (4, N'DGC Records')
INSERT [dbo].[casa_discografica] ([id_discografica], [nombre]) VALUES (5, N'Elektra Records')
INSERT [dbo].[casa_discografica] ([id_discografica], [nombre]) VALUES (6, N'Sony Music')
SET IDENTITY_INSERT [dbo].[casa_discografica] OFF
GO
SET IDENTITY_INSERT [dbo].[casa_productora] ON 

INSERT [dbo].[casa_productora] ([id_casa], [nombre]) VALUES (1, N'DGC Records')
INSERT [dbo].[casa_productora] ([id_casa], [nombre]) VALUES (2, N'Wolf & Crow ')
INSERT [dbo].[casa_productora] ([id_casa], [nombre]) VALUES (3, N'garzia group')
SET IDENTITY_INSERT [dbo].[casa_productora] OFF
GO
SET IDENTITY_INSERT [dbo].[clasificacion_autor] ON 

INSERT [dbo].[clasificacion_autor] ([id_clasificacion], [nombre]) VALUES (1, N'Arreglistas')
INSERT [dbo].[clasificacion_autor] ([id_clasificacion], [nombre]) VALUES (2, N'escritores')
INSERT [dbo].[clasificacion_autor] ([id_clasificacion], [nombre]) VALUES (3, N'instrumentalistas')
SET IDENTITY_INSERT [dbo].[clasificacion_autor] OFF
GO
INSERT [dbo].[disco] ([id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete]) VALUES (N'0134B3A3-5B36-4AD2-87EE-2C0F27D16D9E', N'Jolene', CAST(N'1974-01-01' AS Date), 2, 5, N'25:08:00', NULL, 1, N'ADF6D0D6-477D-4516-8591-70ED4A6AAF7D')
INSERT [dbo].[disco] ([id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete]) VALUES (N'423302BC-DA6D-41EB-BE58-B39B933073ED', N'Mil Anios', CAST(N'2021-01-01' AS Date), 1, 2, N'15:00.00', NULL, 1, N'1ACB398F-D5B5-469E-90B2-B71071D85BCE')
INSERT [dbo].[disco] ([id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete]) VALUES (N'53D81196-1E09-425E-8815-0730416B2566', N'Thriller', CAST(N'1982-01-01' AS Date), 1, 9, N'09:08:44', NULL, 1, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[disco] ([id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete]) VALUES (N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'Celebrando una leyenda', CAST(N'2018-03-23' AS Date), 6, 14, N'45:00:00', NULL, 1, N'913D4994-D842-468B-BC2A-852BC9E5A31D')
INSERT [dbo].[disco] ([id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete]) VALUES (N'7F6F8D63-D984-443D-890A-487E7D3BAF65', N'Back in Black', CAST(N'1980-01-01' AS Date), 3, 10, N'42:11:00', NULL, 0, N'BA7D1FE5-2483-4212-B5DC-12C929A4E248')
INSERT [dbo].[disco] ([id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete]) VALUES (N'8C6342BD-C397-4ED7-A84B-7139B31C4E2C', N'The Black Album', CAST(N'1991-01-01' AS Date), 5, 4, N'14:31:00', NULL, 0, N'1D94F442-A403-47CF-B5A0-F3091AAFB687')
INSERT [dbo].[disco] ([id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete]) VALUES (N'C6C55450-38A7-45FB-BF32-6EFA003D1940', N'Nevermind', CAST(N'1991-01-01' AS Date), 4, 12, N'5:01:00', NULL, 0, N'C641E960-BA0A-444D-917E-7822FF4AE90E')
GO
SET IDENTITY_INSERT [dbo].[disco_log] ON 

INSERT [dbo].[disco_log] ([id_log], [id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete], [updated_at], [operacion]) VALUES (1, N'66C57676-FC40-42B6-B5E8-B488683E2C7B', N'Celebrando una leyenda', CAST(N'2018-03-23' AS Date), 6, 14, N'45:00:00', NULL, 1, N'913D4994-D842-468B-BC2A-852BC9E5A31D', CAST(N'2021-10-28T03:00:41.187' AS DateTime), N'INS')
INSERT [dbo].[disco_log] ([id_log], [id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete], [updated_at], [operacion]) VALUES (2, N'8C6342BD-C397-4ED7-A84B-7139B31C4E2C', N'The Black Album', CAST(N'1991-01-01' AS Date), 5, 4, N'14:31:00', NULL, 0, N'1D94F442-A403-47CF-B5A0-F3091AAFB687', CAST(N'2021-10-28T03:00:41.187' AS DateTime), N'INS')
INSERT [dbo].[disco_log] ([id_log], [id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete], [updated_at], [operacion]) VALUES (3, N'C6C55450-38A7-45FB-BF32-6EFA003D1940', N'Nevermind', CAST(N'1991-01-01' AS Date), 4, 12, N'5:01:00', NULL, 0, N'C641E960-BA0A-444D-917E-7822FF4AE90E', CAST(N'2021-10-28T03:00:41.187' AS DateTime), N'INS')
INSERT [dbo].[disco_log] ([id_log], [id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete], [updated_at], [operacion]) VALUES (4, N'7F6F8D63-D984-443D-890A-487E7D3BAF65', N'Back in Black', CAST(N'1980-01-01' AS Date), 3, 10, N'42:11:00', NULL, 0, N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', CAST(N'2021-10-28T03:00:41.187' AS DateTime), N'INS')
INSERT [dbo].[disco_log] ([id_log], [id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete], [updated_at], [operacion]) VALUES (5, N'0134B3A3-5B36-4AD2-87EE-2C0F27D16D9E', N'Jolene', CAST(N'1974-01-01' AS Date), 2, 5, N'25:08:00', NULL, 1, N'ADF6D0D6-477D-4516-8591-70ED4A6AAF7D', CAST(N'2021-10-28T03:00:41.187' AS DateTime), N'INS')
INSERT [dbo].[disco_log] ([id_log], [id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete], [updated_at], [operacion]) VALUES (6, N'53D81196-1E09-425E-8815-0730416B2566', N'Thriller', CAST(N'1982-01-01' AS Date), 1, 9, N'09:08:44', NULL, 1, N'EBD10C31-6C19-4526-988E-FD0464B661C8', CAST(N'2021-10-28T03:00:41.187' AS DateTime), N'INS')
INSERT [dbo].[disco_log] ([id_log], [id_disco], [nombre], [anio_produccion], [id_casa_discografica], [numero_total_canciones], [duracion_disco], [fotografia_disco], [artista_individual], [id_interprete], [updated_at], [operacion]) VALUES (7, N'423302BC-DA6D-41EB-BE58-B39B933073ED', N'Mil Anios', CAST(N'2021-01-01' AS Date), 1, 2, N'15:00.00', NULL, 1, N'1ACB398F-D5B5-469E-90B2-B71071D85BCE', CAST(N'2021-10-28T03:00:41.390' AS DateTime), N'INS')
SET IDENTITY_INSERT [dbo].[disco_log] OFF
GO
SET IDENTITY_INSERT [dbo].[genero] ON 

INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (1, N'Rock')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (2, N'Jazz')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (3, N'Metal')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (4, N'Alternative & Punk')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (5, N'Rock And Roll')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (6, N'Blues')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (7, N'Latin')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (8, N'Reggae')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (9, N'Pop')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (10, N'Soundtrack')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (11, N'Bossa Nova')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (12, N'Easy Listening')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (13, N'Heavy Metal')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (14, N'R&B/Soul')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (15, N'Electronica/Dance')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (16, N'World')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (17, N'Hip Hop/Rap')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (18, N'Science Fiction')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (19, N'TV Shows')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (20, N'Sci Fi & Fantasy')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (21, N'Drama')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (22, N'Comedy')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (23, N'Alternative')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (24, N'Classical')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (25, N'Opera')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (26, N'Balada Romantica')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (27, N'cumbia')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (28, N'vallenato')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (29, N'Hard rock')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (30, N'Funebre')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (31, N'Paìs')
INSERT [dbo].[genero] ([id_genero], [nombre]) VALUES (32, N'clasica')
SET IDENTITY_INSERT [dbo].[genero] OFF
GO
INSERT [dbo].[genero_artista] ([id_genero], [id_artista]) VALUES (1, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[genero_artista] ([id_genero], [id_artista]) VALUES (5, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[genero_artista] ([id_genero], [id_artista]) VALUES (13, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[genero_artista] ([id_genero], [id_artista]) VALUES (17, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[genero_artista] ([id_genero], [id_artista]) VALUES (2, N'ADF6D0D6-477D-4516-8591-70ED4A6AAF7D')
INSERT [dbo].[genero_artista] ([id_genero], [id_artista]) VALUES (14, N'ADF6D0D6-477D-4516-8591-70ED4A6AAF7D')
INSERT [dbo].[genero_artista] ([id_genero], [id_artista]) VALUES (5, N'5FC5E5A0-8169-4D7C-A47E-FCDF58A53C52')
INSERT [dbo].[genero_artista] ([id_genero], [id_artista]) VALUES (13, N'5FC5E5A0-8169-4D7C-A47E-FCDF58A53C52')
GO
INSERT [dbo].[grupo_casa_productora] ([id_grupo], [id_casa]) VALUES (N'C641E960-BA0A-444D-917E-7822FF4AE90E', 1)
INSERT [dbo].[grupo_casa_productora] ([id_grupo], [id_casa]) VALUES (N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', 2)
INSERT [dbo].[grupo_casa_productora] ([id_grupo], [id_casa]) VALUES (N'BD77942E-45CB-4BD8-B717-866171CBBD56', 1)
INSERT [dbo].[grupo_casa_productora] ([id_grupo], [id_casa]) VALUES (N'1D94F442-A403-47CF-B5A0-F3091AAFB687', 3)
GO
INSERT [dbo].[grupo_musical] ([id_grupo], [nombre], [año_fundacion]) VALUES (N'1D94F442-A403-47CF-B5A0-F3091AAFB687', N'Metallica', CAST(N'1987-01-01' AS Date))
INSERT [dbo].[grupo_musical] ([id_grupo], [nombre], [año_fundacion]) VALUES (N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', N'AC/DC', CAST(N'1987-01-01' AS Date))
INSERT [dbo].[grupo_musical] ([id_grupo], [nombre], [año_fundacion]) VALUES (N'BD77942E-45CB-4BD8-B717-866171CBBD56', N'The Beatles', CAST(N'1987-01-01' AS Date))
INSERT [dbo].[grupo_musical] ([id_grupo], [nombre], [año_fundacion]) VALUES (N'C641E960-BA0A-444D-917E-7822FF4AE90E', N'Nirvana', CAST(N'1987-01-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[grupo_musical_log] ON 

INSERT [dbo].[grupo_musical_log] ([id_log], [id_grupo], [nombre], [año_fundacion], [updated_at], [operacion]) VALUES (1, N'1D94F442-A403-47CF-B5A0-F3091AAFB687', N'Metallica', CAST(N'1987-01-01' AS Date), CAST(N'2021-10-28T03:00:41.157' AS DateTime), N'INS')
INSERT [dbo].[grupo_musical_log] ([id_log], [id_grupo], [nombre], [año_fundacion], [updated_at], [operacion]) VALUES (2, N'BD77942E-45CB-4BD8-B717-866171CBBD56', N'The Beatles', CAST(N'1987-01-01' AS Date), CAST(N'2021-10-28T03:00:41.157' AS DateTime), N'INS')
INSERT [dbo].[grupo_musical_log] ([id_log], [id_grupo], [nombre], [año_fundacion], [updated_at], [operacion]) VALUES (3, N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', N'AC/DC', CAST(N'1987-01-01' AS Date), CAST(N'2021-10-28T03:00:41.157' AS DateTime), N'INS')
INSERT [dbo].[grupo_musical_log] ([id_log], [id_grupo], [nombre], [año_fundacion], [updated_at], [operacion]) VALUES (4, N'C641E960-BA0A-444D-917E-7822FF4AE90E', N'Nirvana', CAST(N'1987-01-01' AS Date), CAST(N'2021-10-28T03:00:41.157' AS DateTime), N'INS')
INSERT [dbo].[grupo_musical_log] ([id_log], [id_grupo], [nombre], [año_fundacion], [updated_at], [operacion]) VALUES (5, N'2DB15A29-D236-4780-87B1-A68ECED0F352', N'Estrellitas', CAST(N'2021-01-01' AS Date), CAST(N'2021-10-28T03:00:41.403' AS DateTime), N'INS')
INSERT [dbo].[grupo_musical_log] ([id_log], [id_grupo], [nombre], [año_fundacion], [updated_at], [operacion]) VALUES (6, N'2DB15A29-D236-4780-87B1-A68ECED0F352', N'Estrellitas', CAST(N'2021-01-01' AS Date), CAST(N'2021-10-28T03:00:41.403' AS DateTime), N'DEL')
SET IDENTITY_INSERT [dbo].[grupo_musical_log] OFF
GO
SET IDENTITY_INSERT [dbo].[instrumento] ON 

INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (1, N'voz')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (2, N'guitarra')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (3, N'piano')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (4, N'bajo')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (5, N'bateria')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (6, N'armonica')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (7, N'guitarra electrica')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (8, N'acordion')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (9, N'Arpa')
INSERT [dbo].[instrumento] ([id_instrumento], [nombre]) VALUES (10, N'violin')
SET IDENTITY_INSERT [dbo].[instrumento] OFF
GO
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'00FBCB54-A8F2-4D09-8793-B984FA86C410', N'James', N'Alan', N'Hetfield', NULL, N'James Hetfield', CAST(N'1963-08-03' AS Date), N'Estados unidos', CAST(N'1978-01-01' AS Date), NULL, 0, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'0F4BD219-3ACC-4C3D-BC26-16A24999245C', N'Jimmy', NULL, N'Colvard', NULL, N'Jimmy Colvad', CAST(N'1945-10-16' AS Date), N'Estados unidos', CAST(N'1690-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'15432F0B-060C-4177-A00B-847D7798C035', N'Quincy', N'Delight', N'Jones', N'Wells', N'Quincy Jones', CAST(N'1993-03-14' AS Date), N'Estados unidos', CAST(N'1951-01-01' AS Date), NULL, 1, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'15DD6284-63B6-46D6-9789-E9B286CCC886', N'Clifford', NULL, N'Wiliams', NULL, N'Cliff Wiliams', CAST(N'1949-12-14' AS Date), N'Inglaterra', CAST(N'1972-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'236C0CB5-3D0C-4623-9530-23EF48C13A6F', N'Philip', NULL, N'Hugh', N'norman', N'Phil Rudd', CAST(N'1954-05-19' AS Date), N'Australia', CAST(N'1974-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'26ADDECD-3E14-47FA-9C44-2A5D33B6F330', N'Krist', N'Anthony', N'Novoselic', NULL, N'Krist Anthony Novoselic', CAST(N'1965-05-16' AS Date), N'Estados unidos', CAST(N'1991-01-01' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'294576E5-FE90-44FC-A002-8D46A4F4CFD2', N'Johannes', N'Chrysostomus ', N'Theophilus', N'Mozart', N'Wolfgang Amadeus Mozart', CAST(N'1756-01-27' AS Date), N'Alemania', CAST(N'1761-01-01' AS Date), NULL, 0, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'2C6311AE-2CA0-48FD-AD7F-FB7D654D3F93', N'Kirk', N'Lee', N'Hammett', NULL, N'Kirk Hammett', CAST(N'1962-11-18' AS Date), N'Estados unidos', CAST(N'1979-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'2F02D2E0-8D27-4BAE-9A1C-A003403091DE', N'Giochino', NULL, N'Rossini', NULL, N'Giochino Rossini', CAST(N'1792-02-29' AS Date), N'Italia', CAST(N'1855-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'46DF190E-455D-4E36-B5B1-85085F9BD00D', N'Stephen', NULL, N'Crawford', N'Young', N'Stevie young', CAST(N'1956-11-12' AS Date), N'Reino Unido', CAST(N'1979-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'4E1066C3-B7A5-416D-8BC4-A106DEA361F6', N'Vicente', NULL, N'Fernandez', N'Gomez', N'Vicente Fernandez', CAST(N'1940-02-17' AS Date), N'Mexico', CAST(N'1964-01-01' AS Date), NULL, 0, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'5D3400B1-7F62-432E-8E0F-1B059A8B6916', N'Karina', N'Jesica', N'Tejeda', NULL, N'Karina', CAST(N'1986-01-30' AS Date), N'Argentina', CAST(N'2004-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'5FC5E5A0-8169-4D7C-A47E-FCDF58A53C52', N'Kurt', N'Donald', N'Cobain', NULL, N'Kurt Donald Cobain', CAST(N'1967-02-20' AS Date), N'Estados unidos', CAST(N'1985-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'617295AD-2E24-4946-92B0-F26C8BDC2CF0', N'Jason', N'Curtis', N'Newsted', NULL, N'Jason Newsted', CAST(N'1963-03-04' AS Date), N'Estados unidos', CAST(N'1986-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'66EB8DAB-BC08-44FB-B481-C858CC1B6134', N'Hargus', N'Melvin', N'Robbins', NULL, N'Harguns Robbins', CAST(N'1938-01-18' AS Date), N'Estados unidos', CAST(N'1957-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'6AD8971F-8D06-4E73-ACAA-6ADF400393A5', N'Lars', NULL, N'Ulrich', NULL, N'Lars Ulrich', CAST(N'1963-12-26' AS Date), N'Dinamarca', CAST(N'1981-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'7255370B-8CC4-428C-9B7B-77AD9A0DB8BB', N'Ralph', N'Gallant', NULL, NULL, N'Larrie Londin', CAST(N'1943-10-15' AS Date), N'Estados unidos', CAST(N'1690-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'753193E1-E19E-4B3D-92B2-F64D99A6E0B2', N'Ludwing', N'Van', N'Bethoveen', NULL, N'Ludwing Van Bethoveen', CAST(N'1827-12-16' AS Date), N'Alemania', CAST(N'1782-01-01' AS Date), NULL, 0, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'760AC9B7-C778-4F19-8D2F-2C32680345B3', N'Angus', NULL, N'McKinnon', N'Young', N'Angus McKinnon Young', CAST(N'1955-03-31' AS Date), N'Australia', CAST(N'1973-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'7D26C8BF-97A4-43C4-9B2F-7DAFAC834F53', N'Roberto', N'Agustin', N'Miguel', N'Santiago', N'Samuel Trujillo Bveracruz', CAST(N'1964-10-23' AS Date), N'Estados unidos', CAST(N'1978-01-01' AS Date), NULL, 0, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'81D65B48-90C0-4101-876D-1A7CE69031C2', N'Hector', N'eduardo', N'Reglero', N'Montaner', N'Ricardo Montaner', CAST(N'1957-12-08' AS Date), N'Argentina', CAST(N'1973-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'850CC796-6BD7-4173-939F-96A30FFE3265', N'Ruben', N'Isaac', N'Albarran', N'Ortega', N'Ruben Albarran', CAST(N'1967-02-01' AS Date), N'Mexico', CAST(N'1986-01-01' AS Date), NULL, 0, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'8E9AA77F-4E99-4400-8871-E5A47377984C', N'David', N'Eric', N'Grohl', NULL, N'David Eric Grohl', CAST(N'1969-01-14' AS Date), N'Estados unidos', CAST(N'1990-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'913D4994-D842-468B-BC2A-852BC9E5A31D', N'Leopoldo', N'Dante', N'Tevez', NULL, N'Leo Dan', CAST(N'1942-03-22' AS Date), N'Argentina', CAST(N'1963-01-01' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'9B8E3249-6656-4F12-8507-9C41F33E4872', N'David', N'Edward', N'Wiliams', NULL, N'David Wiliams', CAST(N'1971-08-20' AS Date), N'Inglaterra', CAST(N'1992-01-01' AS Date), NULL, 1, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'AAA1A5FA-1A5C-43DE-93B4-2EDF76AC7284', N'frb', N'MDeV', N'MDeV', N'dev', N'MDeV jackson', CAST(N'1958-08-29' AS Date), N'Estados MDeV', CAST(N'1960-06-06' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'AD998D57-2143-4EC4-8792-A992EDD2AC10', N'Louis', NULL, N'Johnson', NULL, N'Louis Johnson', CAST(N'1955-04-13' AS Date), N'Estados unidos', CAST(N'1970-01-01' AS Date), NULL, 1, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'ADF6D0D6-477D-4516-8591-70ED4A6AAF7D', N'Dolly', N'Rebecca', N'Parton', NULL, N'Dolly Parton', CAST(N'1946-01-19' AS Date), N'Estados Unidos', CAST(N'1967-01-01' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'AFA9FB34-B545-425B-86F3-83D0C1EBCF56', N'Freddi', NULL, N'Mercury', NULL, N'Farrokh Bulsara', CAST(N'1991-11-05' AS Date), N'Zanzibar', CAST(N'1969-01-01' AS Date), NULL, 0, 1, 0)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'B20AC8D5-BDC2-4AEB-8BB1-540080E24112', N'Jose', N'Martin', N'Cuevas', N'Cobos', N'Pedro Fernandez', CAST(N'1969-09-28' AS Date), N'Mexico', CAST(N'1976-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'B2387F2A-6264-4FD7-9FA5-76272B0358D8', N'Ramon', N'Bautista', N'Ortega', N'Saavedra', N'Palito Ortega', CAST(N'1941-03-08' AS Date), N'Argentina', CAST(N'1941-03-08' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'B2B2C8CB-72A7-41E8-B36D-7091434CE02A', N'Paul', NULL, N'McCartney', NULL, N'James Paul McCartney', CAST(N'1942-06-18' AS Date), N'Bretania', CAST(N'1956-01-01' AS Date), NULL, 0, 0, 0)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'B3B871D6-8E0B-460D-B94C-027EB42EE2BA', N'Fryderyk', N'Franciszek', N'Chopin', NULL, N'Frederic Chopin', CAST(N'1810-03-01' AS Date), N'Francia', CAST(N'1829-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'C8ED703D-EE17-4DCC-BD34-56DE734D099B', N'Robert', N'Jens', N'Rock', NULL, N'Bob Rock', CAST(N'1954-04-19' AS Date), N'Canada', CAST(N'1978-01-01' AS Date), NULL, 1, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'CB22849F-4B47-470C-8773-A11E5D22C030', N'Andres', N'Cepeda', N'Cediel', NULL, N'Andres Cepeda', CAST(N'1973-07-07' AS Date), N'Colombia', CAST(N'1989-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'D8CD13EF-AD58-4FC5-9460-7612340E8C16', N'Malcom', N'Mitchell ', NULL, N'Young', N'Malcom mitchell young', CAST(N'1953-01-06' AS Date), N'Reino Unido', CAST(N'1973-01-01' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'DDA8B460-E197-48E7-B809-EAA238100B75', N'Robert', N'John', N'Lange', NULL, N'Robert Lange', CAST(N'1948-11-11' AS Date), N'Reino unido', CAST(N'1955-01-01' AS Date), NULL, 1, 0, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'E50B6CA2-B173-42AD-9618-0DBD5252EE2D', N'Robert', N'Bruce', N'Ferguson', NULL, N'Bob Ferguson', CAST(N'1927-12-30' AS Date), N'Estados unidos', CAST(N'1955-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'E5689059-D833-42ED-80F8-526EB5B52FA5', N'Brian', NULL, N'Johnson', NULL, N'Brian Francis Johnson', CAST(N'1947-10-05' AS Date), N'Autralia', CAST(N'1972-01-01' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'EBD10C31-6C19-4526-988E-FD0464B661C8', N'Michael', N'Joseph', N'Jackson', N'dev', N'Michael jackson', CAST(N'1958-08-29' AS Date), N'Estados unidos', CAST(N'1960-06-06' AS Date), NULL, 1, 1, 1)
INSERT [dbo].[interprete_autor_instrumentalista] ([id_artista], [primer_nombre], [segundo_nombre], [apellido_paterno], [apellido_materno], [nombre_artistico], [fecha_nacimiento], [pais_origen], [fecha_inicio_carrera], [fotografia], [autor], [interprete], [instrumentalista]) VALUES (N'F1A00FD6-43E3-478C-973F-8BE039C81E9F', N'Jerry', NULL, N'Hey', NULL, N'Jerry Hey', CAST(N'1905-05-03' AS Date), N'Estados unidos', CAST(N'1950-01-01' AS Date), NULL, 0, 0, 1)
GO
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'C641E960-BA0A-444D-917E-7822FF4AE90E', N'5FC5E5A0-8169-4D7C-A47E-FCDF58A53C52')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'C641E960-BA0A-444D-917E-7822FF4AE90E', N'26ADDECD-3E14-47FA-9C44-2A5D33B6F330')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'C641E960-BA0A-444D-917E-7822FF4AE90E', N'8E9AA77F-4E99-4400-8871-E5A47377984C')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', N'E5689059-D833-42ED-80F8-526EB5B52FA5')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', N'760AC9B7-C778-4F19-8D2F-2C32680345B3')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', N'D8CD13EF-AD58-4FC5-9460-7612340E8C16')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', N'46DF190E-455D-4E36-B5B1-85085F9BD00D')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', N'15DD6284-63B6-46D6-9789-E9B286CCC886')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'BA7D1FE5-2483-4212-B5DC-12C929A4E248', N'236C0CB5-3D0C-4623-9530-23EF48C13A6F')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'BD77942E-45CB-4BD8-B717-866171CBBD56', N'B2B2C8CB-72A7-41E8-B36D-7091434CE02A')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'1D94F442-A403-47CF-B5A0-F3091AAFB687', N'AFA9FB34-B545-425B-86F3-83D0C1EBCF56')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'1D94F442-A403-47CF-B5A0-F3091AAFB687', N'6AD8971F-8D06-4E73-ACAA-6ADF400393A5')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'1D94F442-A403-47CF-B5A0-F3091AAFB687', N'00FBCB54-A8F2-4D09-8793-B984FA86C410')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'1D94F442-A403-47CF-B5A0-F3091AAFB687', N'2C6311AE-2CA0-48FD-AD7F-FB7D654D3F93')
INSERT [dbo].[miembro_grupo_musical] ([id_grupo_musical], [id_miembro]) VALUES (N'1D94F442-A403-47CF-B5A0-F3091AAFB687', N'7D26C8BF-97A4-43C4-9B2F-7DAFAC834F53')
GO
SET IDENTITY_INSERT [dbo].[ocupacion] ON 

INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (1, N'cantante')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (2, N'compositor')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (3, N'productor')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (4, N'bailarin')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (5, N'actor')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (6, N'empresario')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (7, N'filantropo')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (8, N'musico')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (9, N'escritor')
INSERT [dbo].[ocupacion] ([id_ocupacion], [nombre]) VALUES (10, N'cantautor')
SET IDENTITY_INSERT [dbo].[ocupacion] OFF
GO
INSERT [dbo].[ocupacion_artista] ([id_ocupacion], [id_artista]) VALUES (1, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[ocupacion_artista] ([id_ocupacion], [id_artista]) VALUES (2, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[ocupacion_artista] ([id_ocupacion], [id_artista]) VALUES (3, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[ocupacion_artista] ([id_ocupacion], [id_artista]) VALUES (4, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[ocupacion_artista] ([id_ocupacion], [id_artista]) VALUES (5, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[ocupacion_artista] ([id_ocupacion], [id_artista]) VALUES (6, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[ocupacion_artista] ([id_ocupacion], [id_artista]) VALUES (7, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
INSERT [dbo].[ocupacion_artista] ([id_ocupacion], [id_artista]) VALUES (8, N'EBD10C31-6C19-4526-988E-FD0464B661C8')
GO
INSERT [dbo].[pieza_independiente_artista] ([id_track], [id_artista]) VALUES (27, N'753193E1-E19E-4B3D-92B2-F64D99A6E0B2')
INSERT [dbo].[pieza_independiente_artista] ([id_track], [id_artista]) VALUES (28, N'294576E5-FE90-44FC-A002-8D46A4F4CFD2')
INSERT [dbo].[pieza_independiente_artista] ([id_track], [id_artista]) VALUES (29, N'2F02D2E0-8D27-4BAE-9A1C-A003403091DE')
INSERT [dbo].[pieza_independiente_artista] ([id_track], [id_artista]) VALUES (30, N'B3B871D6-8E0B-460D-B94C-027EB42EE2BA')
GO
INSERT [dbo].[premio] ([id_premio], [nombre]) VALUES (N'787D7BAE-B98A-4DE1-8A6B-E71AA95424BE', N'Billboard Music')
INSERT [dbo].[premio] ([id_premio], [nombre]) VALUES (N'7E6D16FC-3970-49FF-882A-695748290CEC', N'Premios Grammy latino')
INSERT [dbo].[premio] ([id_premio], [nombre]) VALUES (N'CC68A314-A504-4CF8-AECC-37902F1B11B6', N'American Music Awards')
INSERT [dbo].[premio] ([id_premio], [nombre]) VALUES (N'D5F018B7-778C-480B-BFBA-2D25ED26314D', N'NAACP Image Award')
INSERT [dbo].[premio] ([id_premio], [nombre]) VALUES (N'F1902402-365B-44A4-8B2E-A9382D09CD8E', N'Premios Brit')
GO
INSERT [dbo].[premio_artista] ([id_artista], [id_premio]) VALUES (N'EBD10C31-6C19-4526-988E-FD0464B661C8', N'7E6D16FC-3970-49FF-882A-695748290CEC')
INSERT [dbo].[premio_artista] ([id_artista], [id_premio]) VALUES (N'EBD10C31-6C19-4526-988E-FD0464B661C8', N'CC68A314-A504-4CF8-AECC-37902F1B11B6')
INSERT [dbo].[premio_artista] ([id_artista], [id_premio]) VALUES (N'EBD10C31-6C19-4526-988E-FD0464B661C8', N'787D7BAE-B98A-4DE1-8A6B-E71AA95424BE')
INSERT [dbo].[premio_artista] ([id_artista], [id_premio]) VALUES (N'EBD10C31-6C19-4526-988E-FD0464B661C8', N'D5F018B7-778C-480B-BFBA-2D25ED26314D')
INSERT [dbo].[premio_artista] ([id_artista], [id_premio]) VALUES (N'EBD10C31-6C19-4526-988E-FD0464B661C8', N'F1902402-365B-44A4-8B2E-A9382D09CD8E')
GO
INSERT [dbo].[tipo_autor] ([id_artista], [id_clasificacion]) VALUES (N'EBD10C31-6C19-4526-988E-FD0464B661C8', 1)
INSERT [dbo].[tipo_autor] ([id_artista], [id_clasificacion]) VALUES (N'EBD10C31-6C19-4526-988E-FD0464B661C8', 2)
INSERT [dbo].[tipo_autor] ([id_artista], [id_clasificacion]) VALUES (N'ADF6D0D6-477D-4516-8591-70ED4A6AAF7D', 2)
INSERT [dbo].[tipo_autor] ([id_artista], [id_clasificacion]) VALUES (N'5FC5E5A0-8169-4D7C-A47E-FCDF58A53C52', 2)
INSERT [dbo].[tipo_autor] ([id_artista], [id_clasificacion]) VALUES (N'5FC5E5A0-8169-4D7C-A47E-FCDF58A53C52', 3)
GO
ALTER TABLE [dbo].[cancion_pieza_musical] ADD  DEFAULT ((0)) FOR [pieza_independiente]
GO
ALTER TABLE [dbo].[disco] ADD  DEFAULT ((0)) FOR [artista_individual]
GO
ALTER TABLE [dbo].[disco_log] ADD  DEFAULT ((0)) FOR [artista_individual]
GO
ALTER TABLE [dbo].[interprete_autor_instrumentalista] ADD  DEFAULT ((0)) FOR [autor]
GO
ALTER TABLE [dbo].[interprete_autor_instrumentalista] ADD  DEFAULT ((0)) FOR [interprete]
GO
ALTER TABLE [dbo].[interprete_autor_instrumentalista] ADD  DEFAULT ((0)) FOR [instrumentalista]
GO
ALTER TABLE [dbo].[cancion_artista]  WITH CHECK ADD  CONSTRAINT [FK_disco] FOREIGN KEY([id_disco])
REFERENCES [dbo].[disco] ([id_disco])
GO
ALTER TABLE [dbo].[cancion_artista] CHECK CONSTRAINT [FK_disco]
GO
ALTER TABLE [dbo].[cancion_artista]  WITH CHECK ADD  CONSTRAINT [FK_grupo_musical] FOREIGN KEY([id_grupo])
REFERENCES [dbo].[grupo_musical] ([id_grupo])
GO
ALTER TABLE [dbo].[cancion_artista] CHECK CONSTRAINT [FK_grupo_musical]
GO
ALTER TABLE [dbo].[cancion_artista]  WITH CHECK ADD  CONSTRAINT [FK_interprete] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[cancion_artista] CHECK CONSTRAINT [FK_interprete]
GO
ALTER TABLE [dbo].[disco]  WITH CHECK ADD  CONSTRAINT [FK_discografica] FOREIGN KEY([id_casa_discografica])
REFERENCES [dbo].[casa_discografica] ([id_discografica])
GO
ALTER TABLE [dbo].[disco] CHECK CONSTRAINT [FK_discografica]
GO
ALTER TABLE [dbo].[disco_formato_original]  WITH CHECK ADD  CONSTRAINT [FK_formato_disco] FOREIGN KEY([id_disco])
REFERENCES [dbo].[disco] ([id_disco])
GO
ALTER TABLE [dbo].[disco_formato_original] CHECK CONSTRAINT [FK_formato_disco]
GO
ALTER TABLE [dbo].[disco_formato_original]  WITH CHECK ADD  CONSTRAINT [FK_original_format] FOREIGN KEY([id_formato])
REFERENCES [dbo].[formato_original] ([id_formato])
GO
ALTER TABLE [dbo].[disco_formato_original] CHECK CONSTRAINT [FK_original_format]
GO
ALTER TABLE [dbo].[genero_artista]  WITH CHECK ADD  CONSTRAINT [FK_artist] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[genero_artista] CHECK CONSTRAINT [FK_artist]
GO
ALTER TABLE [dbo].[genero_artista]  WITH CHECK ADD  CONSTRAINT [FK_genero_gn] FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id_genero])
GO
ALTER TABLE [dbo].[genero_artista] CHECK CONSTRAINT [FK_genero_gn]
GO
ALTER TABLE [dbo].[genero_disco]  WITH CHECK ADD  CONSTRAINT [FK_disco_genero] FOREIGN KEY([id_disco])
REFERENCES [dbo].[disco] ([id_disco])
GO
ALTER TABLE [dbo].[genero_disco] CHECK CONSTRAINT [FK_disco_genero]
GO
ALTER TABLE [dbo].[genero_disco]  WITH CHECK ADD  CONSTRAINT [FK_genero_disk] FOREIGN KEY([id_genero])
REFERENCES [dbo].[genero] ([id_genero])
GO
ALTER TABLE [dbo].[genero_disco] CHECK CONSTRAINT [FK_genero_disk]
GO
ALTER TABLE [dbo].[genero_disco]  WITH CHECK ADD  CONSTRAINT [FK_track] FOREIGN KEY([id_cancion])
REFERENCES [dbo].[cancion_pieza_musical] ([id_track])
GO
ALTER TABLE [dbo].[genero_disco] CHECK CONSTRAINT [FK_track]
GO
ALTER TABLE [dbo].[grupo_casa_productora]  WITH CHECK ADD  CONSTRAINT [FK_casa] FOREIGN KEY([id_casa])
REFERENCES [dbo].[casa_productora] ([id_casa])
GO
ALTER TABLE [dbo].[grupo_casa_productora] CHECK CONSTRAINT [FK_casa]
GO
ALTER TABLE [dbo].[grupo_casa_productora]  WITH CHECK ADD  CONSTRAINT [FK_casa_produc_grupo] FOREIGN KEY([id_grupo])
REFERENCES [dbo].[grupo_musical] ([id_grupo])
GO
ALTER TABLE [dbo].[grupo_casa_productora] CHECK CONSTRAINT [FK_casa_produc_grupo]
GO
ALTER TABLE [dbo].[instrumentalista_cancion]  WITH CHECK ADD  CONSTRAINT [FK_artista_insrumentalista] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[instrumentalista_cancion] CHECK CONSTRAINT [FK_artista_insrumentalista]
GO
ALTER TABLE [dbo].[instrumentalista_cancion]  WITH CHECK ADD  CONSTRAINT [FK_disco_instrumentos] FOREIGN KEY([id_disco])
REFERENCES [dbo].[disco] ([id_disco])
GO
ALTER TABLE [dbo].[instrumentalista_cancion] CHECK CONSTRAINT [FK_disco_instrumentos]
GO
ALTER TABLE [dbo].[instrumentalista_cancion]  WITH CHECK ADD  CONSTRAINT [FK_track_list] FOREIGN KEY([id_track])
REFERENCES [dbo].[cancion_pieza_musical] ([id_track])
GO
ALTER TABLE [dbo].[instrumentalista_cancion] CHECK CONSTRAINT [FK_track_list]
GO
ALTER TABLE [dbo].[instrumento_artista]  WITH CHECK ADD  CONSTRAINT [FK_instrumento] FOREIGN KEY([id_instrumento])
REFERENCES [dbo].[instrumento] ([id_instrumento])
GO
ALTER TABLE [dbo].[instrumento_artista] CHECK CONSTRAINT [FK_instrumento]
GO
ALTER TABLE [dbo].[instrumento_artista]  WITH CHECK ADD  CONSTRAINT [FK_instrumento_artistas] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[instrumento_artista] CHECK CONSTRAINT [FK_instrumento_artistas]
GO
ALTER TABLE [dbo].[miembro_grupo_musical]  WITH CHECK ADD  CONSTRAINT [FK_grupo_musical_miembro] FOREIGN KEY([id_grupo_musical])
REFERENCES [dbo].[grupo_musical] ([id_grupo])
GO
ALTER TABLE [dbo].[miembro_grupo_musical] CHECK CONSTRAINT [FK_grupo_musical_miembro]
GO
ALTER TABLE [dbo].[miembro_grupo_musical]  WITH CHECK ADD  CONSTRAINT [FK_id_artista] FOREIGN KEY([id_miembro])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[miembro_grupo_musical] CHECK CONSTRAINT [FK_id_artista]
GO
ALTER TABLE [dbo].[ocupacion_artista]  WITH CHECK ADD  CONSTRAINT [FK_ocupacion_artist] FOREIGN KEY([id_ocupacion])
REFERENCES [dbo].[ocupacion] ([id_ocupacion])
GO
ALTER TABLE [dbo].[ocupacion_artista] CHECK CONSTRAINT [FK_ocupacion_artist]
GO
ALTER TABLE [dbo].[ocupacion_artista]  WITH CHECK ADD  CONSTRAINT [FK_ocupacion_artistss] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[ocupacion_artista] CHECK CONSTRAINT [FK_ocupacion_artistss]
GO
ALTER TABLE [dbo].[pieza_independiente_artista]  WITH CHECK ADD  CONSTRAINT [FK_artista_solitario] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[pieza_independiente_artista] CHECK CONSTRAINT [FK_artista_solitario]
GO
ALTER TABLE [dbo].[pieza_independiente_artista]  WITH CHECK ADD  CONSTRAINT [FK_track_lists] FOREIGN KEY([id_track])
REFERENCES [dbo].[cancion_pieza_musical] ([id_track])
GO
ALTER TABLE [dbo].[pieza_independiente_artista] CHECK CONSTRAINT [FK_track_lists]
GO
ALTER TABLE [dbo].[premio_artista]  WITH CHECK ADD  CONSTRAINT [FK_artista_prem] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[premio_artista] CHECK CONSTRAINT [FK_artista_prem]
GO
ALTER TABLE [dbo].[premio_artista]  WITH CHECK ADD  CONSTRAINT [FK_premio_artista] FOREIGN KEY([id_premio])
REFERENCES [dbo].[premio] ([id_premio])
GO
ALTER TABLE [dbo].[premio_artista] CHECK CONSTRAINT [FK_premio_artista]
GO
ALTER TABLE [dbo].[productor_disco]  WITH CHECK ADD  CONSTRAINT [FK_id_artist] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[productor_disco] CHECK CONSTRAINT [FK_id_artist]
GO
ALTER TABLE [dbo].[productor_disco]  WITH CHECK ADD  CONSTRAINT [FK_id_disk] FOREIGN KEY([id_disco])
REFERENCES [dbo].[disco] ([id_disco])
GO
ALTER TABLE [dbo].[productor_disco] CHECK CONSTRAINT [FK_id_disk]
GO
ALTER TABLE [dbo].[tipo_autor]  WITH CHECK ADD  CONSTRAINT [FK_id_artista_tipo] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[tipo_autor] CHECK CONSTRAINT [FK_id_artista_tipo]
GO
ALTER TABLE [dbo].[tipo_autor]  WITH CHECK ADD  CONSTRAINT [FK_id_clasificacion] FOREIGN KEY([id_clasificacion])
REFERENCES [dbo].[clasificacion_autor] ([id_clasificacion])
GO
ALTER TABLE [dbo].[tipo_autor] CHECK CONSTRAINT [FK_id_clasificacion]
GO
ALTER TABLE [dbo].[tipo_voz_artista]  WITH CHECK ADD  CONSTRAINT [FK_tipo_voz_artista] FOREIGN KEY([id_artista])
REFERENCES [dbo].[interprete_autor_instrumentalista] ([id_artista])
GO
ALTER TABLE [dbo].[tipo_voz_artista] CHECK CONSTRAINT [FK_tipo_voz_artista]
GO
ALTER TABLE [dbo].[tipo_voz_artista]  WITH CHECK ADD  CONSTRAINT [FK_voz] FOREIGN KEY([id_voz])
REFERENCES [dbo].[tipo_voz] ([id_voz])
GO
ALTER TABLE [dbo].[tipo_voz_artista] CHECK CONSTRAINT [FK_voz]
GO
ALTER TABLE [dbo].[artista_log]  WITH CHECK ADD CHECK  (([operacion]='INS' OR [operacion]='DEL'))
GO
ALTER TABLE [dbo].[disco_log]  WITH CHECK ADD CHECK  (([operacion]='INS' OR [operacion]='DEL'))
GO
ALTER TABLE [dbo].[grupo_musical_log]  WITH CHECK ADD CHECK  (([operacion]='INS' OR [operacion]='DEL'))
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_disco]    Script Date: 30/10/2021 11:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_disco](
	@nombre_disco AS VARCHAR(60)
)
AS
	BEGIN 
		DELETE FROM dbo.disco
		WHERE nombre = @nombre_disco
		PRINT 'disco eliminado'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_grupo]    Script Date: 30/10/2021 11:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_grupo](
	@nombre_g as varchar(60)
)
AS
	BEGIN
		DELETE FROM dob.grupo_musical
		where nombre = @nombre_g
		PRINT 'GRUPO ELIMINADO'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_interpretes]    Script Date: 30/10/2021 11:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_interpretes](
	@nombre AS VARCHAR(60)
)
AS
	BEGIN 
		DELETE FROM dbo.interprete_autor_instrumentalista
		WHERE nombre_artistico = @nombre
		PRINT 'Artista eliminado'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_disco]    Script Date: 30/10/2021 11:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Disco

CREATE PROCEDURE [dbo].[sp_insert_disco](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_grupo]    Script Date: 30/10/2021 11:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_insert_grupo](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_interpretes]    Script Date: 30/10/2021 11:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--SP interprete_autor_instrumentalista
CREATE PROCEDURE [dbo].[sp_insert_interpretes](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_select_init]    Script Date: 30/10/2021 11:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_select_init](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_select_ver_detalle]    Script Date: 30/10/2021 11:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_select_ver_detalle](
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
GO
USE [master]
GO
ALTER DATABASE [track_my_record] SET  READ_WRITE 
GO
