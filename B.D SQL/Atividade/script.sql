USE [master]
GO
/****** Object:  Database [Escola_Virtual]    Script Date: 02/12/2022 11:42:28 ******/
CREATE DATABASE [Escola_Virtual]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Escola_Virtual', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Escola_Virtual.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Escola_Virtual_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Escola_Virtual_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Escola_Virtual].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Escola_Virtual] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Escola_Virtual] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Escola_Virtual] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Escola_Virtual] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Escola_Virtual] SET ARITHABORT OFF 
GO
ALTER DATABASE [Escola_Virtual] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Escola_Virtual] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Escola_Virtual] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Escola_Virtual] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Escola_Virtual] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Escola_Virtual] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Escola_Virtual] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Escola_Virtual] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Escola_Virtual] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Escola_Virtual] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Escola_Virtual] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Escola_Virtual] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Escola_Virtual] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Escola_Virtual] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Escola_Virtual] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Escola_Virtual] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Escola_Virtual] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Escola_Virtual] SET RECOVERY FULL 
GO
ALTER DATABASE [Escola_Virtual] SET  MULTI_USER 
GO
ALTER DATABASE [Escola_Virtual] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Escola_Virtual] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Escola_Virtual] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Escola_Virtual] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Escola_Virtual] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Escola_Virtual', N'ON'
GO
ALTER DATABASE [Escola_Virtual] SET QUERY_STORE = OFF
GO
USE [Escola_Virtual]
GO
ALTER DATABASE SCOPED CONFIGURATION SET ACCELERATED_PLAN_FORCING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_ADAPTIVE_JOINS = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_MEMORY_GRANT_FEEDBACK = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET BATCH_MODE_ON_ROWSTORE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET DEFERRED_COMPILATION_TV = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_ONLINE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ELEVATE_RESUMABLE = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET GLOBAL_TEMPORARY_TABLE_AUTO_DROP = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET INTERLEAVED_EXECUTION_TVF = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ISOLATE_SECURITY_POLICY_CARDINALITY = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LAST_QUERY_PLAN_STATS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LIGHTWEIGHT_QUERY_PROFILING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET OPTIMIZE_FOR_AD_HOC_WORKLOADS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET ROW_MODE_MEMORY_GRANT_FEEDBACK = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET TSQL_SCALAR_UDF_INLINING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET VERBOSE_TRUNCATION_WARNINGS = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_PROCEDURE_EXECUTION_STATISTICS = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET XTP_QUERY_EXECUTION_STATISTICS = OFF;
GO
USE [Escola_Virtual]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 02/12/2022 11:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aluno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](30) NULL,
	[Dt_nasc] [date] NULL,
	[CPF] [varchar](14) NULL,
	[Ativo] [bit] NULL,
	[Cidade] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlunoxTurma]    Script Date: 02/12/2022 11:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlunoxTurma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Turma] [int] NULL,
	[id_Aluno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 02/12/2022 11:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](30) NULL,
	[Valor] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hobby]    Script Date: 02/12/2022 11:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hobby](
	[nome] [varchar](30) NULL,
	[id_pessoa] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pessoa]    Script Date: 02/12/2022 11:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pessoa](
	[id] [int] NULL,
	[nome] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professor]    Script Date: 02/12/2022 11:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](30) NULL,
	[CPF] [varchar](14) NULL,
	[Ativo] [bit] NULL,
	[Cidade] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turma]    Script Date: 02/12/2022 11:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Curso] [int] NULL,
	[Dt_Inicio] [date] NULL,
	[Dt_Termino] [date] NULL,
	[id_Professor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aluno] ON 

INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (12, N'Murilo', CAST(N'2004-08-25' AS Date), N'978.132.860-65', 1, N'Tokyo')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (13, N'Amanda', CAST(N'2000-09-11' AS Date), N'960.412.820-57', 0, N'Porto')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (14, N'Patricia', CAST(N'2003-12-01' AS Date), N'423.274.900-49', 0, N'Tel Aviv')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (15, N'Pedro', CAST(N'2005-08-28' AS Date), N'467.787.100-04', 1, N'Praga')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (16, N'Tiago', CAST(N'2004-01-07' AS Date), N'750.114.790-64', 1, N'Montreal')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (17, N'Gabriele', CAST(N'2002-10-24' AS Date), N'121.571.710-53', 1, N'Nova York')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (18, N'Leonardo', CAST(N'2003-11-10' AS Date), N'830.909.890-18', 0, N'Copenhague')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (19, N'Lucas', CAST(N'2004-07-19' AS Date), N'922.042.760-57', 1, N'Manchester')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (20, N'Vitor', CAST(N'2002-03-21' AS Date), N'217.285.380-17', 1, N'Amsterdã')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (21, N'Gabriel', CAST(N'2000-02-26' AS Date), N'263.730.320-43', 1, N'San Francisco')
INSERT [dbo].[Aluno] ([id], [Nome], [Dt_nasc], [CPF], [Ativo], [Cidade]) VALUES (22, N'Julia', CAST(N'2001-05-14' AS Date), N'469.595.710-81', 0, N'Curitiba')
SET IDENTITY_INSERT [dbo].[Aluno] OFF
SET IDENTITY_INSERT [dbo].[AlunoxTurma] ON 

INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (1, 1, 12)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (2, 3, 13)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (3, 5, 14)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (4, 2, 15)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (5, 4, 16)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (6, 1, 17)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (7, 3, 18)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (8, 5, 19)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (9, 2, 20)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (10, 4, 21)
INSERT [dbo].[AlunoxTurma] ([id], [id_Turma], [id_Aluno]) VALUES (11, 1, 22)
SET IDENTITY_INSERT [dbo].[AlunoxTurma] OFF
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([id], [Nome], [Valor]) VALUES (7, N'Engenharia de Software', 600.0000)
INSERT [dbo].[Curso] ([id], [Nome], [Valor]) VALUES (8, N'Engenharia Civil', 800.0000)
INSERT [dbo].[Curso] ([id], [Nome], [Valor]) VALUES (9, N'Medicina', 190.0000)
INSERT [dbo].[Curso] ([id], [Nome], [Valor]) VALUES (10, N'Engenharia de Alimentos', 150.0000)
INSERT [dbo].[Curso] ([id], [Nome], [Valor]) VALUES (11, N'Desenvolvimento de Sistema', 200.0000)
INSERT [dbo].[Curso] ([id], [Nome], [Valor]) VALUES (12, N'Agropecuária', 200.0000)
SET IDENTITY_INSERT [dbo].[Curso] OFF
INSERT [dbo].[hobby] ([nome], [id_pessoa]) VALUES (N'praia', 1)
INSERT [dbo].[hobby] ([nome], [id_pessoa]) VALUES (N'futebol', 2)
INSERT [dbo].[hobby] ([nome], [id_pessoa]) VALUES (N'fotografia', 0)
INSERT [dbo].[hobby] ([nome], [id_pessoa]) VALUES (N'artesanato', 0)
INSERT [dbo].[pessoa] ([id], [nome]) VALUES (1, N'josé')
INSERT [dbo].[pessoa] ([id], [nome]) VALUES (2, N'maria')
INSERT [dbo].[pessoa] ([id], [nome]) VALUES (3, N'pedro')
INSERT [dbo].[pessoa] ([id], [nome]) VALUES (4, N'claudia')
SET IDENTITY_INSERT [dbo].[Professor] ON 

INSERT [dbo].[Professor] ([id], [Nome], [CPF], [Ativo], [Cidade]) VALUES (31, N'Flavio Prada', N'120.745.670-57', 1, N'Curitiba')
INSERT [dbo].[Professor] ([id], [Nome], [CPF], [Ativo], [Cidade]) VALUES (32, N'Amanda Nunes', N'798.741.350-00', 1, N'Florianópolis')
INSERT [dbo].[Professor] ([id], [Nome], [CPF], [Ativo], [Cidade]) VALUES (33, N'Marli Maria', N'000.079.750-23', 1, N'Niterói')
INSERT [dbo].[Professor] ([id], [Nome], [CPF], [Ativo], [Cidade]) VALUES (34, N'Cesar Paulo', N'846.566.130-88', 0, N'Joaçaba')
INSERT [dbo].[Professor] ([id], [Nome], [CPF], [Ativo], [Cidade]) VALUES (35, N'Diogo Defante', N'010.981.650-12', 1, N'Balneário Camboriú')
INSERT [dbo].[Professor] ([id], [Nome], [CPF], [Ativo], [Cidade]) VALUES (36, N'Paulo Edson', N'819.928.820-53', 0, N'São Caetano do Sul')
SET IDENTITY_INSERT [dbo].[Professor] OFF
SET IDENTITY_INSERT [dbo].[Turma] ON 

INSERT [dbo].[Turma] ([id], [id_Curso], [Dt_Inicio], [Dt_Termino], [id_Professor]) VALUES (1, 7, CAST(N'2022-12-02' AS Date), CAST(N'2023-06-02' AS Date), 31)
INSERT [dbo].[Turma] ([id], [id_Curso], [Dt_Inicio], [Dt_Termino], [id_Professor]) VALUES (2, 9, CAST(N'2022-12-30' AS Date), CAST(N'2024-12-30' AS Date), 33)
INSERT [dbo].[Turma] ([id], [id_Curso], [Dt_Inicio], [Dt_Termino], [id_Professor]) VALUES (3, 10, CAST(N'2023-02-20' AS Date), CAST(N'2023-06-02' AS Date), 35)
INSERT [dbo].[Turma] ([id], [id_Curso], [Dt_Inicio], [Dt_Termino], [id_Professor]) VALUES (4, 12, CAST(N'2023-01-10' AS Date), CAST(N'2026-12-03' AS Date), 32)
INSERT [dbo].[Turma] ([id], [id_Curso], [Dt_Inicio], [Dt_Termino], [id_Professor]) VALUES (5, 11, CAST(N'2023-03-20' AS Date), CAST(N'2028-03-30' AS Date), 36)
SET IDENTITY_INSERT [dbo].[Turma] OFF
ALTER TABLE [dbo].[Curso] ADD  DEFAULT ((200)) FOR [Valor]
GO
ALTER TABLE [dbo].[Turma] ADD  DEFAULT (getdate()) FOR [Dt_Inicio]
GO
ALTER TABLE [dbo].[Turma] ADD  DEFAULT (dateadd(month,(6),getdate())) FOR [Dt_Termino]
GO
ALTER TABLE [dbo].[AlunoxTurma]  WITH CHECK ADD FOREIGN KEY([id_Aluno])
REFERENCES [dbo].[Aluno] ([id])
GO
ALTER TABLE [dbo].[AlunoxTurma]  WITH CHECK ADD FOREIGN KEY([id_Turma])
REFERENCES [dbo].[Turma] ([id])
GO
ALTER TABLE [dbo].[Turma]  WITH CHECK ADD FOREIGN KEY([id_Curso])
REFERENCES [dbo].[Curso] ([id])
GO
ALTER TABLE [dbo].[Turma]  WITH CHECK ADD FOREIGN KEY([id_Professor])
REFERENCES [dbo].[Professor] ([id])
GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD CHECK  (([Dt_nasc]>'01.01.1922'))
GO
USE [master]
GO
ALTER DATABASE [Escola_Virtual] SET  READ_WRITE 
GO
