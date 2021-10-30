-- -----------------------------------------------------
-- CREACIONES DE INSERTS A BD
-- -----------------------------------------------------
USE track_my_record

-- -----------------------------------------------------
-- INSERT INTO INTERPRETE_AUTOR_INSTRUMENTALISTA
-- -----------------------------------------------------
INSERT INTO dbo.interprete_autor_instrumentalista (id_artista, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, nombre_artistico, fecha_nacimiento, 
pais_origen,fecha_inicio_carrera, fotografia, autor, interprete, instrumentalista)
VALUES  (NEWID(), 'Michael', 'Joseph','Jackson', 'dev', 'Michael jackson',	'29/08/1958', 'Estados unidos',	'06/06/1960', NULL, 1,	1,1),
        (NEWID(),'Dolly','Rebecca','Parton',null,'Dolly Parton','19/01/1946','Estados Unidos','1967',null,1,1,0),
        (NEWID(),'Kurt','Donald','Cobain',null, 'Kurt Donald Cobain','20/02/1967','Estados unidos','1985',null,1,1,1),
        (NEWID(),'Krist','Anthony','Novoselić',null,	'Krist Anthony Novoselić','16/05/1965','Estados unidos','1991',null,1,1,0),
        (NEWID(),'David','Eric','Grohl',null,'David Eric Grohl','14/01/1969'	,'Estados unidos','1990',null,1,1,1),
        (NEWID(),'Brian',null,'Johnson',null,'Brian Francis Johnson','05/10/1947','Autralia','1972',null,1,1,1),
        (NEWID(),'Angus',null,'McKinnon','Young','Angus McKinnon Young','31/03/1955','Australia','1973',null,1,1,1),
        (NEWID(),'Malcom','Mitchell ',null,'Young','Malcom mitchell young', '06/01/1953','Reino Unido','1973',null,1,1,0),
        (NEWID(),'Paul',null,'McCartney',null,'James Paul McCartney','18/06/1942','Bretania','1956',null,0,0,0),
        (NEWID(),'Freddi',null,'Mercury',null,'Farrokh Bulsara','05/11/1991','Zanzibar','1969',null,0,1,0),
        (NEWID(),'Stephen',null,'Crawford','Young','Stevie young','12/11/1956','Reino Unido','1979',null,0,0,1),
        (NEWID(),'Clifford',null,'Wiliams',null,'Cliff Wiliams','14/12/1949','Inglaterra','1972',null,0,0,1),
        (NEWID(),'Philip',null,'Hugh','norman',	'Phil Rudd','19/05/1954','Australia','1974',null,0,0,1),
        (NEWID(),'Lars',null,'Ulrich',null,	'Lars Ulrich','26/12/1963','Dinamarca','1981',	null,0,0,1),
        (NEWID(),'James','Alan','Hetfield',null,'James Hetfield','03/08/1963','Estados unidos',	'1978',null,0,1,1),
        (NEWID(),'Kirk','Lee','Hammett',null,'Kirk Hammett','18/11/1962','Estados unidos','1979',null,0,0,1),
        (NEWID(),'Roberto','Agustin','Miguel','Santiago','Samuel Trujillo Bveracruz','23/10/1964','Estados unidos',	'1978',null,0,0,1),
        (NEWID(),'Leopoldo','Dante','Tevez',null,'Leo Dan','22/03/1942','Argentina','1963',null,1,1,0),
        (NEWID(),'Quincy','Delight','Jones','Wells','Quincy Jones','14/03/1993','Estados unidos','1951',null,1,0,1),
        (NEWID(),'Robert','Bruce','Ferguson',null,'Bob Ferguson','30/12/1927','Estados unidos','1955',null,1,1,1),
        (NEWID(),'Robert','John','Lange',null,'Robert Lange','11/11/1948','Reino unido','1955',null,1,0,1),
        (NEWID(),'Robert','Jens','Rock',null,'Bob Rock','19/04/1954','Canada','1978',null,1,0,1),
        (NEWID(),'David','Edward','Wiliams',null,'David Wiliams','20/08/1971','Inglaterra','1992',null,1,0,1),
        (NEWID(),'Louis',null,'Johnson',null,'Louis Johnson','13/04/1955','Estados unidos','1970',null,1,0,1),
        (NEWID(),'Jerry',null,'Hey',null,'Jerry Hey','03/05/1905','Estados unidos',	'1950',null,0,0,1),
        (NEWID(),'Hargus','Melvin','Robbins',null,'Harguns Robbins','18/01/1938','Estados unidos','1957',null,0,0,1),
        (NEWID(),'Ralph','Gallant',null,null,'Larrie Londin','15/10/1943','Estados unidos',	'1690',null,0,0,1),
        (NEWID(),'Jimmy',null,'Colvard',null,'Jimmy Colvad','16/10/1945','Estados unidos','1690',null,0,0,1),
        (NEWID(),'Jason','Curtis','Newsted',null,'Jason Newsted','04/03/1963','Estados unidos',	'1986',null,0,0,1),
        (NEWID(),'Vicente',null,'Fernandez','Gomez','Vicente Fernandez','17/02/1940','Mexico','1964',null,0,1,1),
        (NEWID(),'Ruben','Isaac','Albarran','Ortega','Ruben Albarran','01/02/1967','Mexico','1986',null,0,1,1),
        (NEWID(),'Hector','eduardo','Reglero','Montaner','Ricardo Montaner','08/12/1957','Argentina','1973',null,1,1,1),
        (NEWID(),'Karina','Jesica','Tejeda',null,'Karina','30/01/1986','Argentina','2004',null,1,1,1),
        (NEWID(),'Ramon','Bautista','Ortega','Saavedra','Palito Ortega','08/03/1941','Argentina','08/03/1941',null,1,1,1),
        (NEWID(),'Jose','Martin','Cuevas','Cobos','Pedro Fernandez','28/09/1969','Mexico','1976',null,1,1,1),
        (NEWID(),'Andres','Cepeda','Cediel',null,'Andres Cepeda','07/07/1973','Colombia','1989',null,1,1,1),
        (NEWID(),'Ludwing','Van','Bethoveen',null,'Ludwing Van Bethoveen','16/12/1827','Alemania','1782',null,0,1,1),
        (NEWID(),'Johannes','Chrysostomus ','Theophilus','Mozart','Wolfgang Amadeus Mozart','27/01/1756','Alemania','1761',null,0,1,1),
        (NEWID(),'Giochino',null,'Rossini',null,'Giochino Rossini','29/02/1792','Italia','1855',null,1,1,1),
        (NEWID(),'Fryderyk','Franciszek','Chopin',null,'Frederic Chopin','1/03/1810','Francia','1829',null,1,1,1)


-- -----------------------------------------------------
-- INSERT INTO casa_discografica
-- -----------------------------------------------------

INSERT INTO dbo.casa_discografica(nombre)
VALUES ('Epic Records'),
        ('RCA'),
        ('Atco Records'),
        ('DGC Records'),
        ('Elektra Records'),
        ('Sony Music')

-- -----------------------------------------------------
--INSERT GRUPO MUSICAL
-- -----------------------------------------------------
INSERT INTO dbo.grupo_musical(id_grupo, nombre, año_fundacion)
VALUES (NEWID(),'Nirvana','1987'),
       (NEWID(),'AC/DC','1987'),
       (NEWID(),'The Beatles','1987'),
       (NEWID(),'Metallica','1987')

-- -----------------------------------------------------
-- INSERT INTO DISCO
-- -----------------------------------------------------

DECLARE @MJ VARCHAR(36), @DP VARCHAR(36),@AC VARCHAR(36),@NI VARCHAR(36),@MT VARCHAR(36),@LD VARCHAR(36)
SET @MJ = (SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Michael Jackson' )
SET @DP = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Dolly Parton')
SET @AC = (select id_grupo from grupo_musical where nombre = 'AC/DC')
SET @NI = (select id_grupo from grupo_musical where nombre = 'Nirvana')
SET @MT = (select id_grupo from grupo_musical where nombre = 'Metallica')
SET @LD = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Leo Dan')

INSERT INTO dbo.disco(id_disco, nombre, anio_produccion, id_casa_discografica,numero_total_canciones, duracion_disco, fotografia_disco, artista_individual, id_interprete)
VALUES	(NEWID(),'Thriller','1982',1,9,'09:08:44',null,1,@MJ), --Michael Jackson
        (NEWID(),'Jolene','1974',2,5,'25:08:00',null,1, @DP), --Dolly Parton
        (NEWID(),'Back in Black','1980',3,10,'42:11:00',null,0, @AC), -- AC/DC
        (NEWID(),'Nevermind','1991',4,12,'5:01:00',null,0,@NI), --Nirvana
        (NEWID(),'The Black Album','1991',5,4,'14:31:00',null,0,@MT), --Metallica
        (NEWID(),'Celebrando una leyenda','23/03/2018',6,14,'45:00:00',null,1,@LD) --Leo dan
-- -----------------------------------------------------
-- INSERT INTO casa_productora
-- -----------------------------------------------------
INSERT INTO dbo.casa_productora(nombre)
VALUES ('DGC Records'),
       ('Wolf & Crow '),
       ('garzia group')

-- -----------------------------------------------------
-- INSERT INTO grupo_casa_productora
-- -----------------------------------------------------

DECLARE @nirn VARCHAR(36), @acd VARCHAR(36),@beat VARCHAR(36),@metal VARCHAR(36)
SET @nirn = (select id_grupo from grupo_musical where nombre = 'Nirvana')
SET @acd = (select id_grupo from grupo_musical where nombre = 'AC/DC')
SET @beat = (select id_grupo from grupo_musical where nombre = 'The Beatles')
SET @metal = (select id_grupo from grupo_musical where nombre = 'Metallica')

INSERT INTO dbo.grupo_casa_productora(id_grupo, id_casa)
VALUES (@nirn,1), --nirvana
        (@acd, 2),--AC/DC
        (@beat, 1),--Beatles
        (@metal, 3)--Metallica
-- -----------------------------------------------------
-- INSERT INTO PREMIOS
-- -----------------------------------------------------
INSERT INTO dbo.premio(id_premio, nombre)
VALUES (NEWID(), 'Premios Grammy latino'),
        (NEWID(), 'American Music Awards'),
        (NEWID(), 'Billboard Music'),
        (NEWID(), 'NAACP Image Award'),
        (NEWID(), 'Premios Brit')
-- ----------------------------------------------------
-- INSERT INTO premio_artista	
-- -----------------------------------------------------
Declare @MJ1 VARCHAR(36),@PL VARCHAR(36), @AW VARCHAR(36), @BM VARCHAR(36), @NAD VARCHAR(36), @PB VARCHAR(36)
SET @MJ1 = (SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Michael Jackson' )
SET @PL = (select id_premio from premio where nombre = 'Premios Grammy latino')
SET @AW = (select id_premio from premio where nombre = 'American Music Awards')
SET @BM = (select id_premio from premio where nombre = 'Billboard Music')
SET @NAD = (select id_premio from premio where nombre = 'NAACP Image Award')
SET @PB = (select id_premio from premio where nombre = 'Premios Brit')

INSERT INTO premio_artista(id_artista, id_premio)
VALUES(@MJ1,@PL),
        (@MJ1,@AW),
        (@MJ1,@BM),
        (@MJ1,@NAD),
        (@MJ1,@PB)
-- ----------------------------------------------------
-- INSERT INTO cancion_pieza_musical	
-- -----------------------------------------------------

DECLARE @ACG VARCHAR(36), @NIG VARCHAR(36), @MTG VARCHAR(36), @NMG VARCHAR(36), @CLG VARCHAR(36), @BBG VARCHAR(36)
SET @ACG = (select id_disco from disco where nombre = 'Thriller')
SET @NIG = (select id_disco from disco where nombre = 'The Black Album')
SET @MTG = (select id_disco from disco where nombre = 'Jolene')
SET @NMG = (select id_disco from disco where nombre = 'Nevermind')
SET @CLG = (select id_disco from disco where nombre = 'Celebrando una leyenda')
SET @BBG = (select id_disco from disco where nombre = 'Back in Black')

VALUES  (@ACG, null, '08/05/1983', 'Wanna Be Startin Something', 0),
        (@ACG, null, '04/06/1982', 'The Girl is Mine', 0),
        (@ACG, null, '23/01/1894', 'Thriller', 0),
        (@ACG, null, '08/05/1983', 'Billie Jean', 0),
        (@ACG, null, '04/06/1982', 'Beat It', 0),
        (@MTG, null, '04/02/1974','When someone wants to leave',0),
        (@MTG, null, '04/02/1974','River of happiness',0),
        (@BBG, null, '31/10/2021','Hells Bells',0),
        (@BBG, null, '25/07/1980','Shoot to Thrill',0),
        (@BBG, null, '25/07/1980','Back in Black',0),
        (@BBG, null, '25/07/1980','You Shook me all night long',0),
        (@NMG, null, '19/01/1996', 'Drain you', 0),
        (@NMG, null, '18/01/1992', 'Grunge', 0),
        (@NMG, null, '08/10/1996', 'Aneurysm', 0),
        (@NIG, null, '29/07/1991','Enter Sandman',0),
        (@NIG, null, '29/07/1991','Sad but True',0),
        (@NIG, null, '29/07/1991','Holier Than Thou',0),
        (@NIG, null, '20/04/1992','Nothing Else Matters',0),
        (@NIG, null, '01/08/1990','The Struggle Within',0),
        (@CLG, null, '09/02/1976', 'Esa pared',0),
        (@CLG, null, '09/02/1976', 'Como te extraño mi amor',0),
        (@CLG, null, '09/02/1976', 'Te he prometido',0),
        (@CLG, null, '09/02/1976', 'Extraños',0),
        (@CLG, null, '09/02/1976', 'Celia',0),
        (@CLG, null, '09/02/1976', 'Toquen mariachis canten',0),
        (@CLG, null, '09/02/1976', 'Mary es mi amor',0),
        (null, null, '1802', 'Claro de Luna',1),
        (null, null, '1787', 'Pequeña Serenata Nocturna',1),
        (null, null, '1828', 'Obertura',1),
        (null, null, '1837', 'Marcha Funebre',1)


-- ----------------------------------------------------
-- INSERT INTO MIEMBRO GRUPO MUSICAL	
-- -----------------------------------------------------
DECLARE @G1 VARCHAR(36),@G2 VARCHAR(36), @G3 VARCHAR(36), @G4 VARCHAR(36), @M1 VARCHAR(36), @M2 VARCHAR(36), @M3 VARCHAR(36), @M4 VARCHAR(36), @M5 VARCHAR(36), @M6 VARCHAR(36), @M7 VARCHAR(36), @M8 VARCHAR(36), @M9 VARCHAR(36), @M10 VARCHAR(36), @M11 VARCHAR(36), @M12 VARCHAR(36), @M13 VARCHAR(36), @M14 VARCHAR(36), @M15 VARCHAR(36)
SET @G1 = (select id_grupo from grupo_musical where nombre = 'Nirvana')
SET @G2 = (select id_grupo from grupo_musical where nombre = 'AC/DC')
SET @G3 = (select id_grupo from grupo_musical where nombre = 'The Beatles')
SET @G4 = (select id_grupo from grupo_musical where nombre = 'Metallica')
SET @M1 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Kurt Donald Cobain') 
SET @M2 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Krist Anthony Novoselić') 
SET @M3 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'David Eric Grohl') 
SET @M4 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Brian Francis Johnson') 
SET @M5 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Angus McKinnon Young') 
SET @M6 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Malcom mitchell young') 
SET @M7 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Stevie young') 
SET @M8 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Cliff Wiliams') 
SET @M9 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Phil Rudd') 
SET @M10 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'James Paul McCartney') 
SET @M11 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Farrokh Bulsara') 
SET @M12 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Lars Ulrich') 
SET @M13 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'James Hetfield') 
SET @M14 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Kirk Hammett') 
SET @M15 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Samuel Trujillo Bveracruz') 

INSERT INTO dbo.miembro_grupo_musical(id_grupo_musical, id_miembro)
VALUES  (@G1,@M1),
		(@G1,@M2),
		(@G1,@M3),
		(@G2,@M4),
		(@G2,@M5),
		(@G2,@M6),
		(@G2,@M7),
		(@G2,@M8),
		(@G2,@M9),
		(@G3,@M10),
		(@G4,@M11),
		(@G4,@M12),
		(@G4,@M13),
		(@G4,@M14),
		(@G4,@M15)
-- ----------------------------------------------------
-- INSERT INTO	Ocupacion	
-- -----------------------------------------------------

INSERT INTO dbo.ocupacion(nombre)
VALUES ('cantante'),
        ('compositor'),
        ('productor'),
        ('bailarin'),
        ('actor'),
        ('empresario'),
        ('filantropo'),
        ('musico'),
        ('escritor'),
        ('cantautor')
-- ----------------------------------------------------
-- INSERT INTO	ocupacion_artista	
-- -----------------------------------------------------
DECLARE @V1 VARCHAR(36)
SET @V1 = (SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Michael Jackson')

INSERT INTO dbo.ocupacion_artista(id_ocupacion, id_artista)
VALUES (1,@V1),
        (2,@V1),
        (3,@V1),
        (4,@V1),
        (5,@V1),
        (6,@V1),
        (7,@V1),
        (8,@V1)

-- ----------------------------------------------------
-- INSERT INTO	cancion_artista
-- -----------------------------------------------------

--DISCO
DECLARE @GG VARCHAR(36),@GH VARCHAR(36), @GJ VARCHAR(36), @GK VARCHAR(36), @GL VARCHAR(36), @GL2 VARCHAR(36)
SET @GG = (select id_disco from disco where nombre = 'Thriller')
SET @GH = (select id_disco from disco where nombre = 'Jolene')
SET @GJ = (select id_disco from disco where nombre = 'Back in Black')
SET @GK = (select id_disco from disco where nombre = 'Nevermind')
SET @GL = (select id_disco from disco where nombre = 'The Black Album')
SET @GL2 = (select id_disco from disco where nombre = 'Celebrando una leyenda')
--INTERPRETE
DECLARE @I1 VARCHAR(36), @I2 VARCHAR(36), @I3 VARCHAR(36),@I4 VARCHAR(36), @I5 VARCHAR(36), @I6 VARCHAR(36),@I7 VARCHAR(36),@I8 VARCHAR(36),@I9 VARCHAR(36),@I10 VARCHAR(36),@I11 VARCHAR(36)
SET @I1 = (SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Michael Jackson')
SET @I2 = (SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Quincy Jones')
set @I3 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Dolly Parton')
set @I4 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Leo Dan')
set @I5 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Vicente Fernandez')
set @I6 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Ruben Albarran')
set @I7 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Ricardo Montaner')
set @I8 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Karina')
set @I9 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Palito Ortega')
set @I10 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Pedro Fernandez')
set @I11 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Andres Cepeda')
--GRUPO
DECLARE @A1 VARCHAR(36), @A2 VARCHAR(36), @A3 VARCHAR(36)
SET @A1 = (SELECT id_grupo FROM grupo_musical where nombre ='AC/DC')
SET @A2 = (SELECT id_grupo FROM grupo_musical where nombre ='Nirvana')
SET @A3 = (SELECT id_grupo FROM grupo_musical where nombre ='Metallica')

INSERT INTO dbo.cancion_artista(id_disco, id_artista, id_grupo)
VALUES (@GG,@I1, null),
		(@GG,@I2, null),
		(@GH,@I3, null),
		(@GJ,null, @A1),
		(@GK,null, @A2),
		(@GL, null, @A3),
		(@GL2,@I4, null),
		(@GL2,@I5, null),
		(@GL2,@I6, null),
		(@GL2,@I7, null),
		(@GL2,@I8,null),
		(@GL2,@I9,null),
		(@GL2,@I10,null),
		(@GL2,@I11,null)

-- ----------------------------------------------------
-- INSERT INTO	pieza_independiente_musical	
-- -----------------------------------------------------

DECLARE @I12 VARCHAR(36), @I22 VARCHAR(36), @I32 VARCHAR(36),@I42 VARCHAR(36)
SET @I12 = (SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Ludwing Van Bethoveen')
SET @I22 = (SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Wolfgang Amadeus Mozart')
set @I32 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Giochino Rossini')
set @I42 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Frederic Chopin')


INSERT INTO pieza_independiente_artista(id_track, id_artista)
VALUES(27,@I12),
		(28,@I22),
		(29,@I32),
		(30,@I42)

-- ----------------------------------------------------
-- INSERT INTO	clasificacion_autor
-- -----------------------------------------------------
INSERT INTO clasificacion_autor(descripcion)
values('Arreglistas'),
		('escritores'),
		('instrumentalistas')

-- ----------------------------------------------------
-- INSERT INTO	tipo_autor	
-- -----------------------------------------------------
DECLARE @INST1 VARCHAR(36),@INST2 VARCHAR(36),@INST3 VARCHAR(36)
SET @INST1 = (SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Michael Jackson')
set @INST2 = (select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Dolly Parton')
SET @INST3 = (SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Kurt Donald Cobain') 

INSERT INTO tipo_autor(id_artista, id_clasificacion)
values(@INST1,1),
	(@INST1,2),
	(@INST2, 2),
	(@INST3, 2),
	(@INST3, 3)
	
-- ----------------------------------------------------
-- INSERT INTO	GENERO	
-- -----------------------------------------------------
select * from genero
insert into dbo.genero( nombre)
VALUES ('Rock'),
('Jazz'),
('Metal'),
('Alternative & Punk'),
('Rock And Roll'),
('Blues'),
('Latin'),
('Reggae'),
('Pop'),
('Soundtrack'),
('Bossa Nova'),
('Easy Listening'),
('Heavy Metal'),
('R&B/Soul'),
('Electronica/Dance'),
('World'),
('Hip Hop/Rap'),
('Science Fiction'),
('TV Shows'),
('Sci Fi & Fantasy'),
('Drama'),
('Comedy'),
('Alternative'),
('Classical'),
('Opera'),
('Balada Romantica'),
('cumbia'),
('vallenato'),
('Hard rock'),
('Funebre'),
('Paìs'),
('clasica')


-- ----------------------------------------------------
-- INSERT INTO	GENERO_ARTISTA	
-- -----------------------------------------------------
DECLARE @INST11 VARCHAR(36),@INST22 VARCHAR(36),@INST33 VARCHAR(36)
SET @INST11 = ( SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Michael Jackson')
set @INST22 = ( select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Dolly Parton')
SET @INST33 = ( SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Kurt Donald Cobain') 

INSERT INTO dbo.genero_artista(id_genero, id_artista)
VALUES(1, @INST11),
		(5, @INST11),
		(13, @INST11),
		(17, @INST11),
		(13, @INST11),
		(2,@INST22),
		(14,@INST22),
		(5,@INST33),
		(13,@INST33)

-- ----------------------------------------------------
-- INSERT INTO	INSTRUMENTO	
-- -----------------------------------------------------
INSERT INTO instrumento(nombre)
VALUES('voz'),
('guitarra'),
('piano'),
('bajo'),
('bateria'),
('armonica'),
('guitarra electrica'),
('acordion'),
('Arpa'),
('violin')

-- ----------------------------------------------------
-- INSERT INTO	INSTRUMENTO_artista
-- -----------------------------------------------------
--select * from instrumento_artista

--DECLARE @INST11 VARCHAR(36),@INST22 VARCHAR(36),@INST33 VARCHAR(36)
--SET @INST11 = ( SELECT id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Michael Jackson')
--set @INST22 = ( select id_artista from interprete_autor_instrumentalista where nombre_artistico = 'Dolly Parton')
--SET @INST33 = ( SELECT id_artista FROM interprete_autor_instrumentalista where nombre_artistico = 'Kurt Donald Cobain') 

--INSERT INTO instrumento_artista(id_instrumento, id_artista)
--VALUES()


