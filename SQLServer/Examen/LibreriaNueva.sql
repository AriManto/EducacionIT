USE [Libreria]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 22/03/2019 14:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[IDAutor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[IDAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutorLibro]    Script Date: 22/03/2019 14:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutorLibro](
	[IDLibro] [int] NOT NULL,
	[IDAutor] [int] NOT NULL,
 CONSTRAINT [PK_AutorLibr] PRIMARY KEY CLUSTERED 
(
	[IDLibro] ASC,
	[IDAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editorial]    Script Date: 22/03/2019 14:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editorial](
	[IDEditorial] [int] IDENTITY(1,1) NOT NULL,
	[NombreEditorial] [varchar](100) NULL,
	[Direccion] [varchar](250) NULL,
	[Provincia] [varchar](100) NULL,
 CONSTRAINT [PK_Editoriales] PRIMARY KEY CLUSTERED 
(
	[IDEditorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 22/03/2019 14:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[IDGenero] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Generos] PRIMARY KEY CLUSTERED 
(
	[IDGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 22/03/2019 14:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[IDLibro] [int] IDENTITY(1,1) NOT NULL,
	[IDGenero] [int] NULL,
	[IDEditorial] [int] NULL,
	[IDAutor] [int] NULL,
	[Titulo] [varchar](200) NULL,
	[AñoPublicacion] [int] NULL,
	[Precio] [float] NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[IDLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autor] ON 

INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Apellido]) VALUES (1, N'Stephen', N'King')
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Apellido]) VALUES (2, N'J.K.', N'Rowling')
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Apellido]) VALUES (3, N'George R.R.', N'Martin')
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Apellido]) VALUES (4, N'H.P.', N'Lovecraft')
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Apellido]) VALUES (5, N'Edgar Allan', N'Poe')
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Apellido]) VALUES (6, N'Agatha', N'Christie')
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Apellido]) VALUES (7, N'Arthur', N'Conan Doyle')
INSERT [dbo].[Autor] ([IDAutor], [Nombre], [Apellido]) VALUES (8, N'Nicholas', N'Sparks')
SET IDENTITY_INSERT [dbo].[Autor] OFF
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (1, 7)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (2, 7)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (3, 7)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (4, 7)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (5, 7)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (6, 1)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (7, 1)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (8, 1)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (9, 1)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (10, 2)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (11, 2)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (12, 2)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (13, 2)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (14, 2)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (15, 2)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (16, 2)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (17, 2)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (18, 3)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (19, 3)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (20, 3)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (21, 3)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (22, 3)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (23, 4)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (24, 4)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (25, 4)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (26, 4)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (27, 4)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (28, 5)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (29, 5)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (30, 5)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (31, 5)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (32, 5)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (33, 5)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (34, 5)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (35, 5)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (36, 6)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (37, 6)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (38, 6)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (39, 6)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (40, 6)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (41, 6)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (42, 6)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (43, 8)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (44, 8)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (45, 8)
INSERT [dbo].[AutorLibro] ([IDLibro], [IDAutor]) VALUES (46, 8)
SET IDENTITY_INSERT [dbo].[Editorial] ON 

INSERT [dbo].[Editorial] ([IDEditorial], [NombreEditorial], [Direccion], [Provincia]) VALUES (1, N'Salamanca', N'Corrientes 213', N'CABA')
INSERT [dbo].[Editorial] ([IDEditorial], [NombreEditorial], [Direccion], [Provincia]) VALUES (2, N'Tinta negra', N'San Martín 4561', N'Santa Fé')
INSERT [dbo].[Editorial] ([IDEditorial], [NombreEditorial], [Direccion], [Provincia]) VALUES (3, N'Reliquias de literatura', N'Sarmiento 1136', N'Córdoba')
INSERT [dbo].[Editorial] ([IDEditorial], [NombreEditorial], [Direccion], [Provincia]) VALUES (4, N'Enamorarte', N'Lavalle 642', N'CABA')
INSERT [dbo].[Editorial] ([IDEditorial], [NombreEditorial], [Direccion], [Provincia]) VALUES (5, N'Huella y lupa', N'Sacramento 2927', N'Jujuy')
SET IDENTITY_INSERT [dbo].[Editorial] OFF
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([IDGenero], [Descripcion]) VALUES (1, N'Fantástico')
INSERT [dbo].[Genero] ([IDGenero], [Descripcion]) VALUES (2, N'Terror')
INSERT [dbo].[Genero] ([IDGenero], [Descripcion]) VALUES (3, N'Policial')
INSERT [dbo].[Genero] ([IDGenero], [Descripcion]) VALUES (4, N'Romántico')
SET IDENTITY_INSERT [dbo].[Genero] OFF
SET IDENTITY_INSERT [dbo].[Libro] ON 

INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (1, 3, 5, 7, N'Estudio en escarlata', 1887, 120)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (2, 3, 5, 7, N'El signo de los cuatro', 1890, 150)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (3, 3, 5, 7, N'Las aventuras de Sherlock Holmes', 1891, 135)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (4, 3, 5, 7, N'El sabueso de los Baskerville', 1901, 170)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (5, 3, 5, 7, N'El regreso de Sherlock Holmes', 1903, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (6, 2, 2, 1, N'Carrie', 1974, 200)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (7, 2, 2, 1, N'El resplandor', 1977, 195)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (8, 2, 2, 1, N'Cementerio de animales', 1983, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (9, 2, 2, 1, N'It', 1986, 210)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (10, 1, 1, 2, N'Harry Potter y la piedra filosofal', 1997, 300)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (11, 1, 1, 2, N'Harry Potter y la cámara secreta', 1998, 300)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (12, 1, 1, 2, N'Harry Potter y el prisionero de Azkaban', 1999, 300)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (13, 1, 1, 2, N'Harry Potter y el cáliz de fuego', 2000, 300)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (14, 1, 1, 2, N'Harry Potter y la Orden del Fénix', 2003, 300)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (15, 1, 1, 2, N'Harry Potter y el misterio del príncipe', 2005, 300)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (16, 1, 1, 2, N'Harry Potter y las Reliquias de la Muerte', 2007, 300)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (17, 1, 1, 2, N'Animales fantásticos y dónde encontrarlos', 2001, 320)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (18, 1, 1, 3, N'Juego de tronos', 2002, 400)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (19, 1, 1, 3, N'Choque de reyes', 2003, 400)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (20, 1, 1, 3, N'Tormenta de espadas', 2005, 400)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (21, 1, 1, 3, N'Festín de cuervos', 2007, 400)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (22, 1, 1, 3, N'Danza de dragones', 2012, 400)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (23, 2, 3, 4, N'La bestia en la cueva', 1905, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (24, 2, 3, 4, N'El alquimista', 1908, 195)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (25, 2, 3, 4, N'Dagón', 1919, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (26, 2, 3, 4, N'La ciudad sin nombre', 1921, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (27, 2, 3, 4, N'El color que cayó del cielo', 1927, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (28, 2, 3, 5, N'Metzengerstein', 1832, 175)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (29, 2, 3, 5, N'La cita', 1834, 160)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (30, 2, 3, 5, N'Morella', 1835, 160)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (31, 2, 3, 5, N'La caída de la Casa Usher', 1839, 165)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (32, 3, 3, 5, N'Los crímenes de la calle Morgue', 1841, 170)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (33, 4, 3, 5, N'Eleonora', 1841, 150)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (34, 2, 3, 5, N'El corazón delator', 1843, 150)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (35, 3, 3, 5, N'La carta robada', 1844, 150)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (36, 3, 5, 6, N'El misterioso señor Brown', 1922, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (37, 3, 5, 6, N'Muerte en las nubes', 1935, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (38, 3, 5, 6, N'Diez negritos', 1939, 200)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (39, 3, 5, 6, N'La muerte visita al dentista', 1940, 200)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (40, 3, 5, 6, N'Cianuro espumoso', 1945, 200)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (41, 3, 5, 6, N'Némesis', 1971, 200)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (42, 3, 5, 6, N'Los elefantes pueden recordar', 1972, 180)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (43, 4, 4, 8, N'El diario de Noah', 1996, 230)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (44, 4, 4, 8, N'Mensaje en una botella', 1998, 220)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (45, 4, 4, 8, N'La boda', 2003, 200)
INSERT [dbo].[Libro] ([IDLibro], [IDGenero], [IDEditorial], [IDAutor], [Titulo], [AñoPublicacion], [Precio]) VALUES (46, 4, 4, 8, N'El viaje más largo', 2013, 190)
SET IDENTITY_INSERT [dbo].[Libro] OFF
ALTER TABLE [dbo].[AutorLibro]  WITH CHECK ADD  CONSTRAINT [FK_AutorLibro_Autor] FOREIGN KEY([IDAutor])
REFERENCES [dbo].[Autor] ([IDAutor])
GO
ALTER TABLE [dbo].[AutorLibro] CHECK CONSTRAINT [FK_AutorLibro_Autor]
GO
ALTER TABLE [dbo].[AutorLibro]  WITH CHECK ADD  CONSTRAINT [FK_AutorLibro_Libros] FOREIGN KEY([IDLibro])
REFERENCES [dbo].[Libro] ([IDLibro])
GO
ALTER TABLE [dbo].[AutorLibro] CHECK CONSTRAINT [FK_AutorLibro_Libros]
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Editoriales] FOREIGN KEY([IDEditorial])
REFERENCES [dbo].[Editorial] ([IDEditorial])
GO
ALTER TABLE [dbo].[Libro] CHECK CONSTRAINT [FK_Libros_Editoriales]
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Generos] FOREIGN KEY([IDGenero])
REFERENCES [dbo].[Genero] ([IDGenero])
GO
ALTER TABLE [dbo].[Libro] CHECK CONSTRAINT [FK_Libros_Generos]
GO
