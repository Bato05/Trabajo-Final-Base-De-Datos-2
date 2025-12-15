USE [master]
GO
/****** Object:  Database [AEROPUERTO]    Script Date: 27/10/2025 16:59:55 ******/
CREATE DATABASE [AEROPUERTO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AEROPUERTO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AEROPUERTO.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AEROPUERTO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AEROPUERTO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AEROPUERTO] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AEROPUERTO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AEROPUERTO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AEROPUERTO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AEROPUERTO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AEROPUERTO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AEROPUERTO] SET ARITHABORT OFF 
GO
ALTER DATABASE [AEROPUERTO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AEROPUERTO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AEROPUERTO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AEROPUERTO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AEROPUERTO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AEROPUERTO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AEROPUERTO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AEROPUERTO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AEROPUERTO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AEROPUERTO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AEROPUERTO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AEROPUERTO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AEROPUERTO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AEROPUERTO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AEROPUERTO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AEROPUERTO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AEROPUERTO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AEROPUERTO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AEROPUERTO] SET  MULTI_USER 
GO
ALTER DATABASE [AEROPUERTO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AEROPUERTO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AEROPUERTO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AEROPUERTO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AEROPUERTO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AEROPUERTO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AEROPUERTO] SET QUERY_STORE = ON
GO
ALTER DATABASE [AEROPUERTO] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AEROPUERTO]
GO
/****** Object:  Table [dbo].[Aerolinea]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aerolinea](
	[id_aerolinea] [int] NOT NULL,
	[nombre] [varchar](120) NOT NULL,
	[id_ubicacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aerolinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aerolinea_Aeropuerto]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aerolinea_Aeropuerto](
	[id_aerolinea_aeropuerto] [int] NOT NULL,
	[id_aerolinea] [int] NOT NULL,
	[id_aeropuerto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aerolinea_aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aerolinea_Avion]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aerolinea_Avion](
	[id_aerolinea_avion] [int] NOT NULL,
	[id_aerolinea] [int] NOT NULL,
	[id_avion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aerolinea_avion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aerolinea_Pasaje]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aerolinea_Pasaje](
	[id_aerolinea_pasaje] [int] NOT NULL,
	[id_aerolinea] [int] NOT NULL,
	[id_pasaje] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aerolinea_pasaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aerolinea_Vuelo]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aerolinea_Vuelo](
	[id_aerolinea_vuelo] [int] NOT NULL,
	[id_aerolinea] [int] NOT NULL,
	[id_vuelo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aerolinea_vuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aeropuerto]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aeropuerto](
	[id_aeropuerto] [int] NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[id_ubicacion_aeropuerto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Asignar_Empleado]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignar_Empleado](
	[id_asignar_empleado] [int] NOT NULL,
	[id_aerolinea] [int] NOT NULL,
	[id_aeropuerto] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_asignar_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Avion]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avion](
	[id_avion] [int] NOT NULL,
	[id_marca] [int] NOT NULL,
	[id_modelo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_avion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[id_cargo] [int] NOT NULL,
	[nombre_cargo] [varchar](100) NOT NULL,
	[id_sector_laboral] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clase_Pasaje]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clase_Pasaje](
	[id_clase_pasaje] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_clase_pasaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [int] NOT NULL,
	[nombre] [varchar](80) NOT NULL,
	[apellido] [varchar](80) NOT NULL,
	[id_cargo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[id_marca] [int] NOT NULL,
	[marca] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[id_modelo] [int] NOT NULL,
	[modelo] [varchar](80) NOT NULL,
	[capacidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasaje]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasaje](
	[id_pasaje] [int] NOT NULL,
	[asiento] [varchar](10) NOT NULL,
	[fecha_compra] [datetime2](0) NOT NULL,
	[id_vuelo] [int] NOT NULL,
	[id_pasajero] [int] NOT NULL,
	[id_clase_pasaje] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pasaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasajero](
	[id_pasajero] [int] NOT NULL,
	[nombre] [varchar](80) NOT NULL,
	[apellido] [varchar](80) NOT NULL,
	[DNI] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[id_ruta] [int] NOT NULL,
	[duracion_horas] [decimal](5, 2) NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[id_aeropuerto_origen] [int] NOT NULL,
	[id_aeropuerto_destino] [int] NOT NULL,
	[id_tarifa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector_Laboral]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector_Laboral](
	[id_sector_laboral] [int] NOT NULL,
	[nombre_sector] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sector_laboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifa]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifa](
	[id_tarifa] [int] NOT NULL,
	[precio_tarifa] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[id_ubicacion] [int] NOT NULL,
	[ciudad] [varchar](100) NOT NULL,
	[pais] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ubicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicacion_Aeropuerto]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion_Aeropuerto](
	[id_ubicacion_aeropuerto] [int] NOT NULL,
	[ciudad] [varchar](100) NOT NULL,
	[pais] [varchar](100) NOT NULL,
	[latitud] [decimal](9, 6) NULL,
	[longitud] [decimal](9, 6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ubicacion_aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vuelo]    Script Date: 27/10/2025 16:59:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vuelo](
	[id_vuelo] [int] NOT NULL,
	[fecha_hora_salida] [datetime2](0) NOT NULL,
	[id_ruta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_vuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (1, N'Aerolíneas Argentinas', 1)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (2, N'Iberia', 2)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (3, N'American Airlines', 3)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (4, N'Air France', 4)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (5, N'Emirates', 5)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (6, N'LATAM Airlines', 6)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (7, N'British Airways', 7)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (8, N'Lufthansa', 8)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (9, N'Delta Air Lines', 9)
GO
INSERT [dbo].[Aerolinea] ([id_aerolinea], [nombre], [id_ubicacion]) VALUES (10, N'Copa Airlines', 10)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (5, 1, 2)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (7, 1, 3)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (2, 1, 9)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (6, 1, 10)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (8, 1, 14)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (4, 1, 18)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (3, 1, 19)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (10, 2, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (9, 2, 2)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (11, 2, 4)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (12, 2, 11)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (13, 2, 15)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (17, 3, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (14, 3, 3)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (18, 3, 6)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (15, 3, 10)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (16, 3, 13)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (20, 4, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (21, 4, 3)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (19, 4, 4)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (22, 4, 5)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (23, 4, 8)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (25, 5, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (26, 5, 4)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (27, 5, 6)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (24, 5, 7)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (29, 6, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (30, 6, 5)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (31, 6, 9)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (33, 6, 14)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (28, 6, 15)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (32, 6, 16)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (35, 7, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (36, 7, 3)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (34, 7, 6)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (37, 7, 7)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (39, 8, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (42, 8, 2)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (40, 8, 5)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (41, 8, 8)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (38, 8, 12)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (46, 9, 2)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (43, 9, 3)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (44, 9, 10)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (45, 9, 13)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (49, 10, 1)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (48, 10, 10)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (50, 10, 16)
GO
INSERT [dbo].[Aerolinea_Aeropuerto] ([id_aerolinea_aeropuerto], [id_aerolinea], [id_aeropuerto]) VALUES (47, 10, 17)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (2, 1, 2)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (3, 1, 3)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (4, 1, 23)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (5, 1, 24)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (6, 1, 25)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (7, 2, 4)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (8, 2, 5)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (9, 2, 6)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (10, 2, 28)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (11, 3, 7)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (12, 3, 8)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (13, 3, 27)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (14, 4, 9)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (15, 4, 10)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (16, 4, 30)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (17, 5, 11)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (18, 5, 12)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (19, 5, 29)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (20, 6, 13)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (21, 6, 14)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (22, 6, 26)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (23, 7, 15)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (24, 7, 16)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (25, 8, 17)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (26, 8, 18)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (27, 9, 19)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (28, 9, 20)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (29, 10, 21)
GO
INSERT [dbo].[Aerolinea_Avion] ([id_aerolinea_avion], [id_aerolinea], [id_avion]) VALUES (30, 10, 22)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (2, 1, 2)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (8, 1, 8)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (10, 1, 10)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (12, 1, 12)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (18, 1, 18)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (23, 1, 23)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (25, 1, 25)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (28, 1, 28)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (32, 1, 32)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (33, 1, 33)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (37, 1, 37)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (39, 1, 39)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (40, 1, 40)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (46, 1, 46)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (48, 1, 48)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (50, 1, 50)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (56, 1, 56)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (61, 1, 61)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (63, 1, 63)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (66, 1, 66)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (70, 1, 70)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (71, 1, 71)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (75, 1, 75)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (77, 1, 77)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (78, 1, 78)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (84, 1, 84)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (86, 1, 86)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (88, 1, 88)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (94, 1, 94)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (98, 1, 98)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (101, 1, 101)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (104, 1, 104)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (108, 1, 108)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (109, 1, 109)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (113, 1, 113)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (116, 1, 116)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (119, 1, 119)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (120, 1, 120)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (126, 1, 126)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (128, 1, 128)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (130, 1, 130)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (136, 1, 136)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (141, 1, 141)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (143, 1, 143)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (146, 1, 146)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (150, 1, 150)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (151, 1, 151)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (152, 1, 152)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (158, 1, 158)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (160, 1, 160)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (162, 1, 162)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (168, 1, 168)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (173, 1, 173)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (175, 1, 175)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (178, 1, 178)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (182, 1, 182)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (183, 1, 183)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (187, 1, 187)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (189, 1, 189)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (190, 1, 190)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (196, 1, 196)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (198, 1, 198)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (200, 1, 200)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (206, 1, 206)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (211, 1, 211)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (213, 1, 213)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (216, 1, 216)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (220, 1, 220)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (221, 1, 221)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (225, 1, 225)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (227, 1, 227)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (228, 1, 228)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (234, 1, 234)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (236, 1, 236)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (238, 1, 238)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (244, 1, 244)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (249, 1, 249)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (251, 1, 251)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (254, 1, 254)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (258, 1, 258)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (259, 1, 259)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (263, 1, 263)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (264, 1, 264)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (269, 1, 269)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (270, 1, 270)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (271, 1, 271)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (273, 1, 273)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (274, 1, 274)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (303, 1, 303)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (304, 1, 304)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (308, 1, 308)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (309, 1, 309)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (310, 1, 310)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (312, 1, 312)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (3, 2, 3)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (6, 2, 6)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (7, 2, 7)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (13, 2, 13)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (14, 2, 14)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (19, 2, 19)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (24, 2, 24)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (34, 2, 34)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (38, 2, 38)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (41, 2, 41)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (44, 2, 44)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (45, 2, 45)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (51, 2, 51)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (52, 2, 52)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (57, 2, 57)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (62, 2, 62)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (72, 2, 72)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (76, 2, 76)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (79, 2, 79)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (82, 2, 82)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (83, 2, 83)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (89, 2, 89)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (90, 2, 90)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (95, 2, 95)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (110, 2, 110)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (114, 2, 114)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (121, 2, 121)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (124, 2, 124)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (125, 2, 125)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (131, 2, 131)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (132, 2, 132)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (137, 2, 137)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (142, 2, 142)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (153, 2, 153)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (156, 2, 156)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (157, 2, 157)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (163, 2, 163)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (164, 2, 164)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (169, 2, 169)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (174, 2, 174)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (184, 2, 184)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (188, 2, 188)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (191, 2, 191)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (194, 2, 194)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (195, 2, 195)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (201, 2, 201)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (202, 2, 202)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (207, 2, 207)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (212, 2, 212)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (222, 2, 222)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (226, 2, 226)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (229, 2, 229)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (232, 2, 232)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (233, 2, 233)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (239, 2, 239)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (240, 2, 240)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (245, 2, 245)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (250, 2, 250)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (260, 2, 260)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (275, 2, 275)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (276, 2, 276)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (277, 2, 277)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (278, 2, 278)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (280, 2, 280)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (281, 2, 281)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (305, 2, 305)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (313, 2, 313)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (314, 2, 314)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (315, 2, 315)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (316, 2, 316)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (318, 2, 318)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (319, 2, 319)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (5, 3, 5)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (9, 3, 9)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (20, 3, 20)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (29, 3, 29)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (35, 3, 35)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (43, 3, 43)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (47, 3, 47)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (58, 3, 58)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (67, 3, 67)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (73, 3, 73)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (81, 3, 81)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (85, 3, 85)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (96, 3, 96)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (105, 3, 105)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (111, 3, 111)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (123, 3, 123)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (127, 3, 127)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (138, 3, 138)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (147, 3, 147)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (155, 3, 155)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (159, 3, 159)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (170, 3, 170)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (179, 3, 179)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (185, 3, 185)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (193, 3, 193)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (197, 3, 197)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (208, 3, 208)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (217, 3, 217)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (223, 3, 223)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (231, 3, 231)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (235, 3, 235)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (246, 3, 246)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (255, 3, 255)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (261, 3, 261)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (265, 3, 265)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (267, 3, 267)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (268, 3, 268)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (307, 3, 307)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (311, 3, 311)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (11, 4, 11)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (26, 4, 26)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (31, 4, 31)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (49, 4, 49)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (64, 4, 64)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (69, 4, 69)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (87, 4, 87)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (102, 4, 102)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (107, 4, 107)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (129, 4, 129)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (144, 4, 144)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (149, 4, 149)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (161, 4, 161)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (176, 4, 176)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (181, 4, 181)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (199, 4, 199)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (214, 4, 214)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (219, 4, 219)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (237, 4, 237)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (252, 4, 252)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (257, 4, 257)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (295, 4, 295)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (296, 4, 296)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (299, 4, 299)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (300, 4, 300)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (301, 4, 301)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (302, 4, 302)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (333, 4, 333)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (334, 4, 334)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (337, 4, 337)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (338, 4, 338)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (339, 4, 339)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (340, 4, 340)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (283, 5, 283)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (284, 5, 284)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (285, 5, 285)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (288, 5, 288)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (289, 5, 289)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (290, 5, 290)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (291, 5, 291)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (292, 5, 292)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (321, 5, 321)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (322, 5, 322)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (323, 5, 323)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (326, 5, 326)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (327, 5, 327)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (328, 5, 328)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (329, 5, 329)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (330, 5, 330)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (4, 6, 4)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (16, 6, 16)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (17, 6, 17)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (21, 6, 21)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (22, 6, 22)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (42, 6, 42)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (54, 6, 54)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (55, 6, 55)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (59, 6, 59)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (60, 6, 60)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (80, 6, 80)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (92, 6, 92)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (93, 6, 93)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (97, 6, 97)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (99, 6, 99)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (115, 6, 115)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (117, 6, 117)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (122, 6, 122)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (134, 6, 134)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (135, 6, 135)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (139, 6, 139)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (140, 6, 140)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (154, 6, 154)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (166, 6, 166)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (167, 6, 167)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (171, 6, 171)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (172, 6, 172)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (192, 6, 192)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (204, 6, 204)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (205, 6, 205)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (209, 6, 209)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (210, 6, 210)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (230, 6, 230)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (242, 6, 242)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (243, 6, 243)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (247, 6, 247)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (248, 6, 248)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (272, 6, 272)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (306, 6, 306)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (27, 7, 27)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (65, 7, 65)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (103, 7, 103)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (145, 7, 145)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (177, 7, 177)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (215, 7, 215)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (253, 7, 253)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (286, 7, 286)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (287, 7, 287)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (293, 7, 293)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (294, 7, 294)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (324, 7, 324)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (325, 7, 325)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (331, 7, 331)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (332, 7, 332)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (30, 8, 30)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (68, 8, 68)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (106, 8, 106)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (148, 8, 148)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (180, 8, 180)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (218, 8, 218)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (256, 8, 256)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (279, 8, 279)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (282, 8, 282)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (297, 8, 297)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (298, 8, 298)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (317, 8, 317)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (320, 8, 320)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (335, 8, 335)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (336, 8, 336)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (266, 9, 266)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (15, 10, 15)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (36, 10, 36)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (53, 10, 53)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (74, 10, 74)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (91, 10, 91)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (100, 10, 100)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (112, 10, 112)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (118, 10, 118)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (133, 10, 133)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (165, 10, 165)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (186, 10, 186)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (203, 10, 203)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (224, 10, 224)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (241, 10, 241)
GO
INSERT [dbo].[Aerolinea_Pasaje] ([id_aerolinea_pasaje], [id_aerolinea], [id_pasaje]) VALUES (262, 10, 262)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (2, 1, 2)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (3, 1, 6)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (4, 1, 8)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (5, 1, 10)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (6, 1, 14)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (7, 1, 18)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (8, 1, 20)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (9, 1, 23)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (10, 1, 27)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (11, 1, 31)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (12, 1, 33)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (13, 1, 34)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (14, 1, 38)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (15, 1, 40)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (16, 1, 42)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (17, 1, 46)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (18, 1, 50)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (19, 1, 52)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (20, 1, 55)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (21, 1, 59)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (22, 1, 63)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (23, 1, 65)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (24, 1, 66)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (25, 1, 70)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (26, 1, 72)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (27, 1, 74)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (28, 1, 78)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (29, 1, 82)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (30, 1, 84)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (31, 1, 87)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (32, 1, 91)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (33, 1, 95)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (34, 1, 97)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (35, 1, 98)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (104, 1, 104)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (106, 1, 106)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (36, 2, 5)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (37, 2, 11)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (38, 2, 15)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (39, 2, 19)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (40, 2, 28)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (41, 2, 32)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (42, 2, 37)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (43, 2, 43)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (44, 2, 47)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (45, 2, 51)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (46, 2, 60)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (47, 2, 64)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (48, 2, 69)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (49, 2, 75)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (50, 2, 79)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (51, 2, 83)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (52, 2, 92)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (53, 2, 96)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (107, 2, 107)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (108, 2, 108)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (110, 2, 110)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (54, 3, 4)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (55, 3, 7)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (56, 3, 16)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (57, 3, 24)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (58, 3, 29)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (59, 3, 36)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (60, 3, 39)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (61, 3, 48)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (62, 3, 56)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (63, 3, 61)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (64, 3, 68)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (65, 3, 71)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (66, 3, 80)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (67, 3, 88)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (68, 3, 93)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (101, 3, 101)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (103, 3, 103)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (69, 4, 9)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (70, 4, 21)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (71, 4, 26)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (72, 4, 41)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (73, 4, 53)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (74, 4, 58)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (75, 4, 73)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (76, 4, 85)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (77, 4, 90)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (117, 4, 117)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (119, 4, 119)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (120, 4, 120)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (112, 5, 112)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (114, 5, 114)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (115, 5, 115)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (91, 6, 3)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (92, 6, 13)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (93, 6, 17)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (94, 6, 35)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (95, 6, 45)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (96, 6, 49)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (97, 6, 67)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (98, 6, 77)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (99, 6, 81)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (100, 6, 99)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (105, 6, 105)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (78, 7, 22)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (79, 7, 54)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (80, 7, 86)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (113, 7, 113)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (116, 7, 116)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (81, 8, 25)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (82, 8, 57)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (83, 8, 89)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (109, 8, 109)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (111, 8, 111)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (118, 8, 118)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (102, 9, 102)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (84, 10, 12)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (85, 10, 30)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (86, 10, 44)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (87, 10, 62)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (88, 10, 76)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (89, 10, 94)
GO
INSERT [dbo].[Aerolinea_Vuelo] ([id_aerolinea_vuelo], [id_aerolinea], [id_vuelo]) VALUES (90, 10, 100)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (1, N'Ministro Pistarini (EZE)', 1)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (2, N'Barajas - Adolfo Suárez (MAD)', 2)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (3, N'John F. Kennedy (JFK)', 3)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (4, N'Charles de Gaulle (CDG)', 4)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (5, N'São Paulo-Guarulhos (GRU)', 5)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (6, N'Heathrow (LHR)', 6)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (7, N'Dubai International (DXB)', 7)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (8, N'Tokyo Haneda (HND)', 8)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (9, N'Aeroparque Jorge Newbery (AEP)', 9)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (10, N'Miami International (MIA)', 10)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (11, N'Fiumicino (FCO)', 11)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (12, N'Frankfurt (FRA)', 12)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (13, N'Los Angeles (LAX)', 13)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (14, N'Benito Juárez (MEX)', 14)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (15, N'Jorge Chávez (LIM)', 15)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (16, N'El Dorado (BOG)', 16)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (17, N'Tocumen (PTY)', 17)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (18, N'Malvinas Argentinas (USH)', 18)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (19, N'Teniente Luis Candelaria (BRC)', 19)
GO
INSERT [dbo].[Aeropuerto] ([id_aeropuerto], [nombre], [id_ubicacion_aeropuerto]) VALUES (20, N'Cancún (CUN)', 20)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (2, 1, 1, 3)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (6, 1, 1, 9)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (7, 1, 1, 10)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (8, 1, 1, 11)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (9, 1, 1, 13)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (12, 1, 1, 19)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (13, 1, 1, 21)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (16, 1, 1, 26)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (18, 1, 1, 29)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (3, 1, 9, 5)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (4, 1, 9, 7)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (5, 1, 9, 8)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (10, 1, 9, 15)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (11, 1, 9, 17)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (14, 1, 9, 23)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (15, 1, 9, 25)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (17, 1, 9, 28)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (19, 2, 2, 2)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (20, 2, 2, 4)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (21, 2, 2, 6)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (22, 2, 2, 12)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (23, 3, 3, 14)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (24, 3, 10, 16)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (25, 4, 4, 18)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (26, 4, 4, 20)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (30, 5, 7, 30)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (27, 6, 15, 22)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (29, 9, 3, 27)
GO
INSERT [dbo].[Asignar_Empleado] ([id_asignar_empleado], [id_aerolinea], [id_aeropuerto], [id_empleado]) VALUES (28, 10, 17, 24)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (2, 1, 1)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (3, 1, 1)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (4, 2, 2)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (5, 2, 2)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (6, 2, 2)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (7, 1, 3)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (8, 1, 3)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (9, 2, 4)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (10, 2, 4)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (11, 1, 3)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (12, 1, 3)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (13, 2, 7)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (14, 2, 7)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (15, 1, 5)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (16, 1, 5)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (17, 2, 4)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (18, 2, 4)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (19, 1, 5)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (20, 1, 5)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (21, 1, 1)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (22, 1, 1)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (23, 3, 6)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (24, 3, 6)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (25, 4, 8)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (26, 2, 2)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (27, 1, 1)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (28, 2, 7)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (29, 2, 4)
GO
INSERT [dbo].[Avion] ([id_avion], [id_marca], [id_modelo]) VALUES (30, 1, 5)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (1, N'Piloto (Comandante)', 1)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (2, N'Copiloto (Primer Oficial)', 1)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (3, N'Jefe de Cabina', 2)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (4, N'Auxiliar de Vuelo', 2)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (5, N'Técnico de Mantenimiento A', 3)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (6, N'Ingeniero de Hangar', 3)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (7, N'Agente de Rampa', 4)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (8, N'Agente de Check-in', 6)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (9, N'Gerente de Operaciones', 5)
GO
INSERT [dbo].[Cargo] ([id_cargo], [nombre_cargo], [id_sector_laboral]) VALUES (10, N'Supervisor de Mantenimiento', 3)
GO
INSERT [dbo].[Clase_Pasaje] ([id_clase_pasaje], [nombre], [precio]) VALUES (1, N'Económica', CAST(0.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Clase_Pasaje] ([id_clase_pasaje], [nombre], [precio]) VALUES (2, N'Económica Premium', CAST(180.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Clase_Pasaje] ([id_clase_pasaje], [nombre], [precio]) VALUES (3, N'Ejecutiva (Business)', CAST(500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Clase_Pasaje] ([id_clase_pasaje], [nombre], [precio]) VALUES (4, N'Primera Clase', CAST(1100.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (1, N'Marcos', N'Acuña', 1)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (2, N'Beatriz', N'Luengo', 1)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (3, N'Carlos', N'Santana', 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (4, N'Diana', N'Ross', 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (5, N'Esteban', N'Quito', 3)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (6, N'Fabiola', N'Giménez', 3)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (7, N'Gastón', N'Fernández', 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (8, N'Hilda', N'Lizarazu', 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (9, N'Ignacio', N'Peralta', 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (10, N'Jimena', N'Barón', 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (11, N'Kevin', N'Johansen', 5)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (12, N'Laura', N'Pausini', 5)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (13, N'Miguel', N'Abuelo', 6)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (14, N'Nadia', N'Portillo', 6)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (15, N'Oscar', N'Ahumada', 7)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (16, N'Patricia', N'Sosa', 7)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (17, N'Raúl', N'Lavié', 8)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (18, N'Sandra', N'Mihanovich', 8)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (19, N'Tomás', N'Fonzi', 9)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (20, N'Úrsula', N'Corberó', 9)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (21, N'Víctor', N'Heredia', 10)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (22, N'Walter', N'Olmos', 10)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (23, N'Ximena', N'Sáenz', 8)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (24, N'Yago', N'Lange', 7)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (25, N'Zoe', N'Gotusso', 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (26, N'Alberto', N'Fernández', 1)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (27, N'Brenda', N'Asnicar', 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (28, N'Cristian', N'Castro', 3)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (29, N'Dolores', N'Fonzi', 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre], [apellido], [id_cargo]) VALUES (30, N'Enrique', N'Iglesias', 5)
GO
INSERT [dbo].[Marca] ([id_marca], [marca]) VALUES (2, N'Airbus')
GO
INSERT [dbo].[Marca] ([id_marca], [marca]) VALUES (4, N'ATR')
GO
INSERT [dbo].[Marca] ([id_marca], [marca]) VALUES (1, N'Boeing')
GO
INSERT [dbo].[Marca] ([id_marca], [marca]) VALUES (3, N'Embraer')
GO
INSERT [dbo].[Modelo] ([id_modelo], [modelo], [capacidad]) VALUES (1, N'737-800', 189)
GO
INSERT [dbo].[Modelo] ([id_modelo], [modelo], [capacidad]) VALUES (2, N'A320neo', 180)
GO
INSERT [dbo].[Modelo] ([id_modelo], [modelo], [capacidad]) VALUES (3, N'777-300ER', 396)
GO
INSERT [dbo].[Modelo] ([id_modelo], [modelo], [capacidad]) VALUES (4, N'A350-900', 325)
GO
INSERT [dbo].[Modelo] ([id_modelo], [modelo], [capacidad]) VALUES (5, N'787-9 Dreamliner', 290)
GO
INSERT [dbo].[Modelo] ([id_modelo], [modelo], [capacidad]) VALUES (6, N'E190', 114)
GO
INSERT [dbo].[Modelo] ([id_modelo], [modelo], [capacidad]) VALUES (7, N'A330-300', 300)
GO
INSERT [dbo].[Modelo] ([id_modelo], [modelo], [capacidad]) VALUES (8, N'ATR 72', 78)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (1, N'10A', CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 1, 1, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (2, N'10B', CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 1, 2, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (3, N'22C', CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 2, 3, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (4, N'15F', CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2), 3, 4, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (5, N'18B', CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2), 4, 5, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (6, N'30A', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 5, 6, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (7, N'30B', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 5, 7, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (8, N'05K', CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2), 6, 8, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (9, N'12D', CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2), 7, 9, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (10, N'25A', CAST(N'2023-04-01T00:00:00.0000000' AS DateTime2), 8, 10, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (11, N'02A', CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2), 9, 11, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (12, N'14C', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), 10, 12, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (13, N'19F', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 1, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (14, N'20A', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 2, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (15, N'08B', CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), 12, 13, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (16, N'31A', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 13, 14, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (17, N'31B', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 13, 15, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (18, N'16C', CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), 14, 16, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (19, N'22F', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), 15, 17, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (20, N'28D', CAST(N'2023-07-15T00:00:00.0000000' AS DateTime2), 16, 18, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (21, N'10A', CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 17, 19, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (22, N'10B', CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 17, 20, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (23, N'11A', CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), 18, 21, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (24, N'04D', CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), 19, 3, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (25, N'15A', CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), 20, 22, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (26, N'19G', CAST(N'2023-08-20T00:00:00.0000000' AS DateTime2), 21, 23, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (27, N'21C', CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), 22, 24, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (28, N'22A', CAST(N'2023-10-01T00:00:00.0000000' AS DateTime2), 23, 25, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (29, N'14F', CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), 24, 26, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (30, N'12B', CAST(N'2023-10-20T00:00:00.0000000' AS DateTime2), 25, 27, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (31, N'01A', CAST(N'2023-11-15T00:00:00.0000000' AS DateTime2), 26, 11, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (32, N'30A', CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), 27, 28, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (33, N'30B', CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), 27, 29, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (34, N'25D', CAST(N'2023-12-10T00:00:00.0000000' AS DateTime2), 28, 30, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (35, N'16E', CAST(N'2023-12-15T00:00:00.0000000' AS DateTime2), 29, 1, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (36, N'18C', CAST(N'2023-12-18T00:00:00.0000000' AS DateTime2), 30, 31, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (37, N'19A', CAST(N'2023-12-20T00:00:00.0000000' AS DateTime2), 31, 32, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (38, N'05F', CAST(N'2023-12-25T00:00:00.0000000' AS DateTime2), 32, 5, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (39, N'10A', CAST(N'2024-01-05T00:00:00.0000000' AS DateTime2), 33, 1, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (40, N'10B', CAST(N'2024-01-05T00:00:00.0000000' AS DateTime2), 33, 2, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (41, N'22C', CAST(N'2024-01-02T00:00:00.0000000' AS DateTime2), 34, 3, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (42, N'15F', CAST(N'2024-01-10T00:00:00.0000000' AS DateTime2), 35, 4, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (43, N'18B', CAST(N'2024-02-01T00:00:00.0000000' AS DateTime2), 36, 33, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (44, N'30A', CAST(N'2024-02-05T00:00:00.0000000' AS DateTime2), 37, 34, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (45, N'30B', CAST(N'2024-02-05T00:00:00.0000000' AS DateTime2), 37, 35, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (46, N'05K', CAST(N'2024-02-20T00:00:00.0000000' AS DateTime2), 38, 36, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (47, N'12D', CAST(N'2024-03-10T00:00:00.0000000' AS DateTime2), 39, 37, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (48, N'25A', CAST(N'2024-04-01T00:00:00.0000000' AS DateTime2), 40, 38, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (49, N'02A', CAST(N'2024-04-15T00:00:00.0000000' AS DateTime2), 41, 39, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (50, N'14C', CAST(N'2024-05-01T00:00:00.0000000' AS DateTime2), 42, 40, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (51, N'19F', CAST(N'2024-05-10T00:00:00.0000000' AS DateTime2), 43, 41, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (52, N'20A', CAST(N'2024-05-10T00:00:00.0000000' AS DateTime2), 43, 42, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (53, N'08B', CAST(N'2024-05-20T00:00:00.0000000' AS DateTime2), 44, 43, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (54, N'31A', CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2), 45, 44, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (55, N'31B', CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2), 45, 45, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (56, N'16C', CAST(N'2024-07-01T00:00:00.0000000' AS DateTime2), 46, 46, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (57, N'22F', CAST(N'2024-07-10T00:00:00.0000000' AS DateTime2), 47, 47, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (58, N'28D', CAST(N'2024-07-15T00:00:00.0000000' AS DateTime2), 48, 48, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (59, N'10A', CAST(N'2024-07-18T00:00:00.0000000' AS DateTime2), 49, 49, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (60, N'10B', CAST(N'2024-07-18T00:00:00.0000000' AS DateTime2), 49, 50, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (61, N'11A', CAST(N'2024-07-20T00:00:00.0000000' AS DateTime2), 50, 1, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (62, N'04D', CAST(N'2024-08-01T00:00:00.0000000' AS DateTime2), 51, 3, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (63, N'15A', CAST(N'2024-08-10T00:00:00.0000000' AS DateTime2), 52, 5, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (64, N'19G', CAST(N'2024-08-20T00:00:00.0000000' AS DateTime2), 53, 6, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (65, N'21C', CAST(N'2024-09-01T00:00:00.0000000' AS DateTime2), 54, 7, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (66, N'22A', CAST(N'2024-10-01T00:00:00.0000000' AS DateTime2), 55, 8, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (67, N'14F', CAST(N'2024-10-10T00:00:00.0000000' AS DateTime2), 56, 9, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (68, N'12B', CAST(N'2024-10-20T00:00:00.0000000' AS DateTime2), 57, 10, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (69, N'01A', CAST(N'2024-11-15T00:00:00.0000000' AS DateTime2), 58, 11, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (70, N'30A', CAST(N'2024-12-01T00:00:00.0000000' AS DateTime2), 59, 12, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (71, N'30B', CAST(N'2024-12-01T00:00:00.0000000' AS DateTime2), 59, 13, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (72, N'25D', CAST(N'2024-12-10T00:00:00.0000000' AS DateTime2), 60, 14, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (73, N'16E', CAST(N'2024-12-15T00:00:00.0000000' AS DateTime2), 61, 15, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (74, N'18C', CAST(N'2024-12-18T00:00:00.0000000' AS DateTime2), 62, 16, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (75, N'19A', CAST(N'2024-12-20T00:00:00.0000000' AS DateTime2), 63, 17, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (76, N'05F', CAST(N'2024-12-25T00:00:00.0000000' AS DateTime2), 64, 18, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (77, N'10A', CAST(N'2025-01-05T00:00:00.0000000' AS DateTime2), 65, 1, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (78, N'10B', CAST(N'2025-01-05T00:00:00.0000000' AS DateTime2), 65, 2, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (79, N'22C', CAST(N'2025-01-02T00:00:00.0000000' AS DateTime2), 66, 3, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (80, N'15F', CAST(N'2025-01-10T00:00:00.0000000' AS DateTime2), 67, 19, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (81, N'18B', CAST(N'2025-02-01T00:00:00.0000000' AS DateTime2), 68, 20, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (82, N'30A', CAST(N'2025-02-05T00:00:00.0000000' AS DateTime2), 69, 21, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (83, N'30B', CAST(N'2025-02-05T00:00:00.0000000' AS DateTime2), 69, 22, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (84, N'05K', CAST(N'2025-02-20T00:00:00.0000000' AS DateTime2), 70, 23, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (85, N'12D', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), 71, 24, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (86, N'25A', CAST(N'2025-04-01T00:00:00.0000000' AS DateTime2), 72, 25, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (87, N'02A', CAST(N'2025-04-15T00:00:00.0000000' AS DateTime2), 73, 26, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (88, N'14C', CAST(N'2025-05-01T00:00:00.0000000' AS DateTime2), 74, 27, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (89, N'19F', CAST(N'2025-05-10T00:00:00.0000000' AS DateTime2), 75, 28, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (90, N'20A', CAST(N'2025-05-10T00:00:00.0000000' AS DateTime2), 75, 29, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (91, N'08B', CAST(N'2025-05-20T00:00:00.0000000' AS DateTime2), 76, 30, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (92, N'31A', CAST(N'2025-06-01T00:00:00.0000000' AS DateTime2), 77, 31, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (93, N'31B', CAST(N'2025-06-01T00:00:00.0000000' AS DateTime2), 77, 32, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (94, N'16C', CAST(N'2025-07-01T00:00:00.0000000' AS DateTime2), 78, 33, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (95, N'22F', CAST(N'2025-07-10T00:00:00.0000000' AS DateTime2), 79, 34, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (96, N'28D', CAST(N'2025-07-15T00:00:00.0000000' AS DateTime2), 80, 35, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (97, N'10A', CAST(N'2025-07-18T00:00:00.0000000' AS DateTime2), 81, 36, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (98, N'10B', CAST(N'2025-07-18T00:00:00.0000000' AS DateTime2), 81, 37, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (99, N'11A', CAST(N'2025-07-20T00:00:00.0000000' AS DateTime2), 82, 38, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (100, N'04D', CAST(N'2025-08-01T00:00:00.0000000' AS DateTime2), 83, 39, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (101, N'15A', CAST(N'2025-08-10T00:00:00.0000000' AS DateTime2), 84, 40, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (102, N'19G', CAST(N'2025-08-20T00:00:00.0000000' AS DateTime2), 85, 41, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (103, N'21C', CAST(N'2025-09-01T00:00:00.0000000' AS DateTime2), 86, 42, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (104, N'22A', CAST(N'2025-10-01T00:00:00.0000000' AS DateTime2), 87, 43, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (105, N'14F', CAST(N'2025-10-10T00:00:00.0000000' AS DateTime2), 88, 44, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (106, N'12B', CAST(N'2025-10-15T00:00:00.0000000' AS DateTime2), 89, 45, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (107, N'01A', CAST(N'2025-10-20T00:00:00.0000000' AS DateTime2), 90, 46, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (108, N'30A', CAST(N'2025-10-25T00:00:00.0000000' AS DateTime2), 91, 47, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (109, N'30B', CAST(N'2025-10-25T00:00:00.0000000' AS DateTime2), 91, 48, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (110, N'25D', CAST(N'2025-11-01T00:00:00.0000000' AS DateTime2), 92, 49, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (111, N'16E', CAST(N'2025-11-05T00:00:00.0000000' AS DateTime2), 93, 50, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (112, N'18C', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 94, 1, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (113, N'19A', CAST(N'2025-11-15T00:00:00.0000000' AS DateTime2), 95, 2, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (114, N'05F', CAST(N'2025-11-20T00:00:00.0000000' AS DateTime2), 96, 3, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (115, N'10A', CAST(N'2025-11-25T00:00:00.0000000' AS DateTime2), 97, 4, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (116, N'10B', CAST(N'2025-12-01T00:00:00.0000000' AS DateTime2), 98, 5, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (117, N'22C', CAST(N'2025-12-05T00:00:00.0000000' AS DateTime2), 99, 6, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (118, N'15F', CAST(N'2025-12-10T00:00:00.0000000' AS DateTime2), 100, 7, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (119, N'18B', CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 1, 3, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (120, N'10C', CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 1, 4, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (121, N'23C', CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 2, 5, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (122, N'16F', CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2), 3, 6, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (123, N'19B', CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2), 4, 7, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (124, N'31A', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 5, 8, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (125, N'31B', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 5, 9, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (126, N'06K', CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2), 6, 10, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (127, N'13D', CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2), 7, 11, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (128, N'26A', CAST(N'2023-04-01T00:00:00.0000000' AS DateTime2), 8, 12, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (129, N'03A', CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2), 9, 13, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (130, N'15C', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), 10, 14, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (131, N'20F', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 15, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (132, N'21A', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 16, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (133, N'09B', CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), 12, 17, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (134, N'32A', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 13, 18, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (135, N'32B', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 13, 19, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (136, N'17C', CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), 14, 20, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (137, N'23F', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), 15, 21, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (138, N'29D', CAST(N'2023-07-15T00:00:00.0000000' AS DateTime2), 16, 22, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (139, N'11A', CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 17, 23, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (140, N'11B', CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 17, 24, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (141, N'12A', CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), 18, 25, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (142, N'05D', CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), 19, 26, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (143, N'16A', CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), 20, 27, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (144, N'20G', CAST(N'2023-08-20T00:00:00.0000000' AS DateTime2), 21, 28, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (145, N'22C', CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), 22, 29, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (146, N'23A', CAST(N'2023-10-01T00:00:00.0000000' AS DateTime2), 23, 30, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (147, N'15F', CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), 24, 31, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (148, N'13B', CAST(N'2023-10-20T00:00:00.0000000' AS DateTime2), 25, 32, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (149, N'02A', CAST(N'2023-11-15T00:00:00.0000000' AS DateTime2), 26, 33, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (150, N'31A', CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), 27, 34, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (151, N'11C', CAST(N'2024-01-05T00:00:00.0000000' AS DateTime2), 33, 51, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (152, N'12C', CAST(N'2024-01-05T00:00:00.0000000' AS DateTime2), 33, 52, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (153, N'23C', CAST(N'2024-01-02T00:00:00.0000000' AS DateTime2), 34, 53, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (154, N'16F', CAST(N'2024-01-10T00:00:00.0000000' AS DateTime2), 35, 54, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (155, N'19B', CAST(N'2024-02-01T00:00:00.0000000' AS DateTime2), 36, 55, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (156, N'32A', CAST(N'2024-02-05T00:00:00.0000000' AS DateTime2), 37, 56, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (157, N'32B', CAST(N'2024-02-05T00:00:00.0000000' AS DateTime2), 37, 57, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (158, N'06K', CAST(N'2024-02-20T00:00:00.0000000' AS DateTime2), 38, 58, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (159, N'13D', CAST(N'2024-03-10T00:00:00.0000000' AS DateTime2), 39, 59, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (160, N'26A', CAST(N'2024-04-01T00:00:00.0000000' AS DateTime2), 40, 60, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (161, N'03A', CAST(N'2024-04-15T00:00:00.0000000' AS DateTime2), 41, 61, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (162, N'15C', CAST(N'2024-05-01T00:00:00.0000000' AS DateTime2), 42, 62, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (163, N'19E', CAST(N'2024-05-10T00:00:00.0000000' AS DateTime2), 43, 63, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (164, N'21A', CAST(N'2024-05-10T00:00:00.0000000' AS DateTime2), 43, 64, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (165, N'09B', CAST(N'2024-05-20T00:00:00.0000000' AS DateTime2), 44, 65, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (166, N'33A', CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2), 45, 66, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (167, N'33B', CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2), 45, 67, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (168, N'17C', CAST(N'2024-07-01T00:00:00.0000000' AS DateTime2), 46, 68, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (169, N'23F', CAST(N'2024-07-10T00:00:00.0000000' AS DateTime2), 47, 69, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (170, N'29D', CAST(N'2024-07-15T00:00:00.0000000' AS DateTime2), 48, 70, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (171, N'11A', CAST(N'2024-07-18T00:00:00.0000000' AS DateTime2), 49, 71, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (172, N'11B', CAST(N'2024-07-18T00:00:00.0000000' AS DateTime2), 49, 72, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (173, N'12A', CAST(N'2024-07-20T00:00:00.0000000' AS DateTime2), 50, 73, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (174, N'05D', CAST(N'2024-08-01T00:00:00.0000000' AS DateTime2), 51, 74, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (175, N'16A', CAST(N'2024-08-10T00:00:00.0000000' AS DateTime2), 52, 75, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (176, N'20G', CAST(N'2024-08-20T00:00:00.0000000' AS DateTime2), 53, 76, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (177, N'22C', CAST(N'2024-09-01T00:00:00.0000000' AS DateTime2), 54, 77, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (178, N'23A', CAST(N'2024-10-01T00:00:00.0000000' AS DateTime2), 55, 78, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (179, N'15F', CAST(N'2024-10-10T00:00:00.0000000' AS DateTime2), 56, 79, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (180, N'13B', CAST(N'2024-10-20T00:00:00.0000000' AS DateTime2), 57, 80, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (181, N'02A', CAST(N'2024-11-15T00:00:00.0000000' AS DateTime2), 58, 81, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (182, N'31A', CAST(N'2024-12-01T00:00:00.0000000' AS DateTime2), 59, 82, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (183, N'31B', CAST(N'2024-12-01T00:00:00.0000000' AS DateTime2), 59, 83, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (184, N'26D', CAST(N'2024-12-10T00:00:00.0000000' AS DateTime2), 60, 84, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (185, N'17E', CAST(N'2024-12-15T00:00:00.0000000' AS DateTime2), 61, 85, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (186, N'19C', CAST(N'2024-12-18T00:00:00.0000000' AS DateTime2), 62, 86, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (187, N'20A', CAST(N'2024-12-20T00:00:00.0000000' AS DateTime2), 63, 87, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (188, N'06F', CAST(N'2024-12-25T00:00:00.0000000' AS DateTime2), 64, 88, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (189, N'11A', CAST(N'2025-01-05T00:00:00.0000000' AS DateTime2), 65, 89, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (190, N'11B', CAST(N'2025-01-05T00:00:00.0000000' AS DateTime2), 65, 90, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (191, N'23C', CAST(N'2025-01-02T00:00:00.0000000' AS DateTime2), 66, 91, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (192, N'16F', CAST(N'2025-01-10T00:00:00.0000000' AS DateTime2), 67, 92, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (193, N'19B', CAST(N'2025-02-01T00:00:00.0000000' AS DateTime2), 68, 93, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (194, N'31A', CAST(N'2025-02-05T00:00:00.0000000' AS DateTime2), 69, 94, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (195, N'31B', CAST(N'2025-02-05T00:00:00.0000000' AS DateTime2), 69, 95, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (196, N'06K', CAST(N'2025-02-20T00:00:00.0000000' AS DateTime2), 70, 96, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (197, N'13D', CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), 71, 97, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (198, N'26A', CAST(N'2025-04-01T00:00:00.0000000' AS DateTime2), 72, 98, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (199, N'03A', CAST(N'2025-04-15T00:00:00.0000000' AS DateTime2), 73, 99, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (200, N'15C', CAST(N'2025-05-01T00:00:00.0000000' AS DateTime2), 74, 100, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (201, N'20F', CAST(N'2025-05-10T00:00:00.0000000' AS DateTime2), 75, 101, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (202, N'21A', CAST(N'2025-05-10T00:00:00.0000000' AS DateTime2), 75, 102, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (203, N'09B', CAST(N'2025-05-20T00:00:00.0000000' AS DateTime2), 76, 103, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (204, N'32A', CAST(N'2025-06-01T00:00:00.0000000' AS DateTime2), 77, 104, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (205, N'32B', CAST(N'2025-06-01T00:00:00.0000000' AS DateTime2), 77, 105, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (206, N'17C', CAST(N'2025-07-01T00:00:00.0000000' AS DateTime2), 78, 106, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (207, N'23F', CAST(N'2025-07-10T00:00:00.0000000' AS DateTime2), 79, 107, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (208, N'29D', CAST(N'2025-07-15T00:00:00.0000000' AS DateTime2), 80, 108, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (209, N'11A', CAST(N'2025-07-18T00:00:00.0000000' AS DateTime2), 81, 109, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (210, N'11B', CAST(N'2025-07-18T00:00:00.0000000' AS DateTime2), 81, 110, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (211, N'12A', CAST(N'2025-07-20T00:00:00.0000000' AS DateTime2), 82, 111, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (212, N'05D', CAST(N'2025-08-01T00:00:00.0000000' AS DateTime2), 83, 112, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (213, N'16A', CAST(N'2025-08-10T00:00:00.0000000' AS DateTime2), 84, 113, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (214, N'20G', CAST(N'2025-08-20T00:00:00.0000000' AS DateTime2), 85, 114, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (215, N'22C', CAST(N'2025-09-01T00:00:00.0000000' AS DateTime2), 86, 115, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (216, N'23A', CAST(N'2025-10-01T00:00:00.0000000' AS DateTime2), 87, 116, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (217, N'15F', CAST(N'2025-10-10T00:00:00.0000000' AS DateTime2), 88, 117, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (218, N'13B', CAST(N'2025-10-15T00:00:00.0000000' AS DateTime2), 89, 118, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (219, N'02A', CAST(N'2025-10-20T00:00:00.0000000' AS DateTime2), 90, 119, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (220, N'31A', CAST(N'2025-10-25T00:00:00.0000000' AS DateTime2), 91, 120, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (221, N'31B', CAST(N'2025-10-25T00:00:00.0000000' AS DateTime2), 91, 121, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (222, N'26D', CAST(N'2025-11-01T00:00:00.0000000' AS DateTime2), 92, 122, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (223, N'17E', CAST(N'2025-11-05T00:00:00.0000000' AS DateTime2), 93, 123, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (224, N'19C', CAST(N'2025-11-10T00:00:00.0000000' AS DateTime2), 94, 124, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (225, N'20A', CAST(N'2025-11-15T00:00:00.0000000' AS DateTime2), 95, 125, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (226, N'06F', CAST(N'2025-11-20T00:00:00.0000000' AS DateTime2), 96, 126, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (227, N'11A', CAST(N'2025-11-25T00:00:00.0000000' AS DateTime2), 97, 127, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (228, N'11B', CAST(N'2025-12-01T00:00:00.0000000' AS DateTime2), 98, 128, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (229, N'23C', CAST(N'2025-12-05T00:00:00.0000000' AS DateTime2), 99, 129, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (230, N'16F', CAST(N'2025-12-10T00:00:00.0000000' AS DateTime2), 100, 130, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (231, N'19B', CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 1, 131, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (232, N'11C', CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 1, 132, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (233, N'24C', CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 2, 133, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (234, N'17F', CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2), 3, 134, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (235, N'20B', CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2), 4, 135, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (236, N'32A', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 5, 136, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (237, N'32B', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 5, 137, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (238, N'07K', CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2), 6, 138, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (239, N'14D', CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2), 7, 139, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (240, N'27A', CAST(N'2023-04-01T00:00:00.0000000' AS DateTime2), 8, 140, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (241, N'04A', CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2), 9, 141, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (242, N'16C', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), 10, 142, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (243, N'21F', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 143, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (244, N'22A', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 144, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (245, N'10B', CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), 12, 145, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (246, N'33A', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 13, 146, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (247, N'33B', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 13, 147, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (248, N'18C', CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), 14, 148, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (249, N'24F', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), 15, 149, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (250, N'30D', CAST(N'2023-07-15T00:00:00.0000000' AS DateTime2), 16, 150, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (251, N'12A', CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 17, 51, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (252, N'12B', CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 17, 52, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (253, N'13A', CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), 18, 53, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (254, N'06D', CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), 19, 54, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (255, N'17A', CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), 20, 55, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (256, N'21G', CAST(N'2023-08-20T00:00:00.0000000' AS DateTime2), 21, 56, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (257, N'23C', CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), 22, 57, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (258, N'24A', CAST(N'2023-10-01T00:00:00.0000000' AS DateTime2), 23, 58, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (259, N'16F', CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), 24, 59, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (260, N'14B', CAST(N'2023-10-20T00:00:00.0000000' AS DateTime2), 25, 60, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (261, N'03A', CAST(N'2023-11-15T00:00:00.0000000' AS DateTime2), 26, 61, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (262, N'32A', CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), 27, 62, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (263, N'20A', CAST(N'2024-01-10T00:00:00.0000000' AS DateTime2), 101, 51, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (264, N'20B', CAST(N'2024-01-10T00:00:00.0000000' AS DateTime2), 101, 52, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (265, N'15C', CAST(N'2024-03-01T00:00:00.0000000' AS DateTime2), 102, 10, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (266, N'15D', CAST(N'2024-03-01T00:00:00.0000000' AS DateTime2), 102, 1, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (267, N'08A', CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2), 103, 51, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (268, N'08B', CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2), 103, 52, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (269, N'10A', CAST(N'2024-02-01T00:00:00.0000000' AS DateTime2), 104, 30, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (270, N'10B', CAST(N'2024-02-01T00:00:00.0000000' AS DateTime2), 104, 31, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (271, N'10C', CAST(N'2024-02-01T00:00:00.0000000' AS DateTime2), 104, 32, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (272, N'25F', CAST(N'2024-05-01T00:00:00.0000000' AS DateTime2), 105, 70, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (273, N'30A', CAST(N'2024-08-15T00:00:00.0000000' AS DateTime2), 106, 30, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (274, N'30B', CAST(N'2024-08-15T00:00:00.0000000' AS DateTime2), 106, 31, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (275, N'05A', CAST(N'2024-01-05T00:00:00.0000000' AS DateTime2), 107, 3, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (276, N'05B', CAST(N'2024-01-05T00:00:00.0000000' AS DateTime2), 107, 4, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (277, N'12C', CAST(N'2024-01-15T00:00:00.0000000' AS DateTime2), 108, 80, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (278, N'12D', CAST(N'2024-01-15T00:00:00.0000000' AS DateTime2), 108, 81, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (279, N'02A', CAST(N'2024-02-01T00:00:00.0000000' AS DateTime2), 109, 90, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (280, N'14A', CAST(N'2024-02-15T00:00:00.0000000' AS DateTime2), 110, 3, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (281, N'14B', CAST(N'2024-02-15T00:00:00.0000000' AS DateTime2), 110, 4, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (282, N'18C', CAST(N'2024-03-01T00:00:00.0000000' AS DateTime2), 111, 90, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (283, N'01A', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 112, 11, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (284, N'01B', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 112, 12, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (285, N'01C', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 112, 13, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (286, N'20F', CAST(N'2024-06-20T00:00:00.0000000' AS DateTime2), 113, 140, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (287, N'20G', CAST(N'2024-06-20T00:00:00.0000000' AS DateTime2), 113, 141, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (288, N'03A', CAST(N'2024-07-01T00:00:00.0000000' AS DateTime2), 114, 15, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (289, N'03B', CAST(N'2024-07-01T00:00:00.0000000' AS DateTime2), 114, 16, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (290, N'02A', CAST(N'2024-07-20T00:00:00.0000000' AS DateTime2), 115, 11, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (291, N'02B', CAST(N'2024-07-20T00:00:00.0000000' AS DateTime2), 115, 12, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (292, N'02C', CAST(N'2024-07-20T00:00:00.0000000' AS DateTime2), 115, 13, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (293, N'22A', CAST(N'2024-07-25T00:00:00.0000000' AS DateTime2), 116, 140, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (294, N'22B', CAST(N'2024-07-25T00:00:00.0000000' AS DateTime2), 116, 141, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (295, N'01A', CAST(N'2024-12-01T00:00:00.0000000' AS DateTime2), 117, 1, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (296, N'01B', CAST(N'2024-12-01T00:00:00.0000000' AS DateTime2), 117, 2, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (297, N'10A', CAST(N'2025-02-15T00:00:00.0000000' AS DateTime2), 118, 150, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (298, N'10B', CAST(N'2025-02-15T00:00:00.0000000' AS DateTime2), 118, 149, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (299, N'02A', CAST(N'2025-01-20T00:00:00.0000000' AS DateTime2), 119, 1, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (300, N'02B', CAST(N'2025-01-20T00:00:00.0000000' AS DateTime2), 119, 2, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (301, N'11A', CAST(N'2025-03-15T00:00:00.0000000' AS DateTime2), 120, 150, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (302, N'11B', CAST(N'2025-03-15T00:00:00.0000000' AS DateTime2), 120, 149, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (303, N'12A', CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 1, 133, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (304, N'12B', CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 1, 134, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (305, N'24D', CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 2, 135, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (306, N'18F', CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2), 3, 136, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (307, N'21B', CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2), 4, 137, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (308, N'33A', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 5, 138, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (309, N'33B', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 5, 139, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (310, N'08K', CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2), 6, 140, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (311, N'15D', CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2), 7, 141, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (312, N'28A', CAST(N'2023-04-01T00:00:00.0000000' AS DateTime2), 8, 142, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (313, N'05A', CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2), 9, 143, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (314, N'17C', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), 10, 144, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (315, N'22F', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 145, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (316, N'23A', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 146, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (317, N'11B', CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), 12, 147, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (318, N'34A', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 13, 148, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (319, N'34B', CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 13, 149, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (320, N'19C', CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), 14, 150, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (321, N'25F', CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), 15, 1, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (322, N'31D', CAST(N'2023-07-15T00:00:00.0000000' AS DateTime2), 16, 2, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (323, N'13A', CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 17, 3, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (324, N'13B', CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 17, 4, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (325, N'14A', CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), 18, 5, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (326, N'07D', CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), 19, 6, 3)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (327, N'18A', CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), 20, 7, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (328, N'22G', CAST(N'2023-08-20T00:00:00.0000000' AS DateTime2), 21, 8, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (329, N'24C', CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), 22, 9, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (330, N'25A', CAST(N'2023-10-01T00:00:00.0000000' AS DateTime2), 23, 10, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (331, N'17F', CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), 24, 11, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (332, N'15B', CAST(N'2023-10-20T00:00:00.0000000' AS DateTime2), 25, 12, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (333, N'04A', CAST(N'2023-11-15T00:00:00.0000000' AS DateTime2), 26, 13, 4)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (334, N'33A', CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), 27, 14, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (335, N'21A', CAST(N'2024-01-10T00:00:00.0000000' AS DateTime2), 101, 15, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (336, N'21B', CAST(N'2024-01-10T00:00:00.0000000' AS DateTime2), 101, 16, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (337, N'16C', CAST(N'2024-03-01T00:00:00.0000000' AS DateTime2), 102, 17, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (338, N'16D', CAST(N'2024-03-01T00:00:00.0000000' AS DateTime2), 102, 18, 2)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (339, N'09A', CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2), 103, 19, 1)
GO
INSERT [dbo].[Pasaje] ([id_pasaje], [asiento], [fecha_compra], [id_vuelo], [id_pasajero], [id_clase_pasaje]) VALUES (340, N'09B', CAST(N'2024-06-01T00:00:00.0000000' AS DateTime2), 103, 20, 1)
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (1, N'Juan', N'García', N'25123456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (2, N'María', N'Fernández', N'28789123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (3, N'Carlos', N'López', N'30123456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (4, N'Ana', N'Martínez', N'32789123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (5, N'Luis', N'González', N'27456789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (6, N'Sofía', N'Rodríguez', N'31987654')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (7, N'Javier', N'Sánchez', N'29876543')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (8, N'Elena', N'Pérez', N'33654321')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (9, N'Miguel', N'Gómez', N'26123789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (10, N'Lucía', N'Díaz', N'34987123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (11, N'Pedro', N'Moreno', N'24789456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (12, N'Carmen', N'Jiménez', N'31234890')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (13, N'David', N'Ruiz', N'30654789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (14, N'Isabel', N'Hernández', N'32123654')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (15, N'Fernando', N'Muñoz', N'28456123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (16, N'Marta', N'Álvarez', N'33789456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (17, N'Alejandro', N'Romero', N'29123789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (18, N'Cristina', N'Navarro', N'31654123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (19, N'Manuel', N'Torres', N'27987456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (20, N'Paula', N'Domínguez', N'34123788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (21, N'Francisco', N'Gutiérrez', N'26789122')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (22, N'Raquel', N'Vázquez', N'32987455')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (23, N'Daniel', N'Ramos', N'30456788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (24, N'Sara', N'Gil', N'33123457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (25, N'Jorge', N'Ramírez', N'28789655')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (26, N'Andrea', N'Serrano', N'31987322')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (27, N'Ricardo', N'Blanco', N'29654788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (28, N'Verónica', N'Suárez', N'32123986')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (29, N'Diego', N'Molina', N'27456320')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (30, N'Natalia', N'Morales', N'34789653')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (31, N'Sergio', N'Ortega', N'30987122')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (32, N'Camila', N'Castro', N'33654788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (33, N'Pablo', N'Soto', N'28123455')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (34, N'Valentina', N'Vega', N'31789653')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (35, N'Adrián', N'Reyes', N'29456122')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (36, N'Gabriela', N'Mendoza', N'32987457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (37, N'Mateo', N'Flores', N'30789124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (38, N'Daniela', N'Campos', N'33123787')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (39, N'Santiago', N'Guerrero', N'28456787')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (40, N'Valeria', N'Castillo', N'31987652')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (41, N'Agustín', N'Ortiz', N'29123457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (42, N'Carolina', N'Rojas', N'32789124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (43, N'Emilio', N'Medina', N'30123786')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (44, N'Jimena', N'Santos', N'33987457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (45, N'Andrés', N'Vargas', N'27654320')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (46, N'Martina', N'León', N'31123458')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (47, N'Roberto', N'Peña', N'29789653')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (48, N'Florencia', N'Cabrera', N'32654124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (49, N'Felipe', N'Paredes', N'30456124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (50, N'Victoria', N'Salazar', N'33123786')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (51, N'Benjamín', N'Acosta', N'35123456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (52, N'Julieta', N'Benítez', N'36789123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (53, N'Leonardo', N'Silva', N'34123456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (54, N'Micaela', N'Ríos', N'37789123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (55, N'Lucas', N'Herrera', N'35456789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (56, N'Renata', N'Paz', N'36987654')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (57, N'Maximiliano', N'Luna', N'33876543')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (58, N'Catalina', N'Figueroa', N'38654321')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (59, N'Nicolás', N'Correa', N'34123789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (60, N'Agustina', N'Cáceres', N'37987123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (61, N'Thiago', N'Sosa', N'32789456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (62, N'Guadalupe', N'Rivero', N'36234890')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (63, N'Bruno', N'Giménez', N'34654789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (64, N'Candelaria', N'Ledesma', N'35123654')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (65, N'Enzo', N'Ferreyra', N'33456123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (66, N'Delfina', N'Miranda', N'38789456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (67, N'Ignacio', N'Peralta', N'34123785')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (68, N'Valentino', N'Franco', N'36654123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (69, N'Bautista', N'Ojeda', N'32987458')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (70, N'Olivia', N'Medrano', N'37123789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (71, N'Joaquín', N'Ponce', N'34789124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (72, N'Emma', N'Valdez', N'35987456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (73, N'Santino', N'Quiroga', N'33456788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (74, N'Bianca', N'Páez', N'38123457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (75, N'Facundo', N'Villalba', N'32789654')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (76, N'Emilia', N'Bustos', N'36987321')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (77, N'Lorenzo', N'Acuña', N'34654788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (78, N'Pilar', N'Godoy', N'35123987')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (79, N'Dante', N'Pereyra', N'32456321')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (80, N'Malena', N'Ibarra', N'37789654')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (81, N'Simón', N'Juárez', N'33987123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (82, N'Juana', N'Ayala', N'38654789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (83, N'Franco', N'Roldán', N'32123456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (84, N'Isabella', N'Marín', N'36789653')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (85, N'Bastián', N'Cardozo', N'34456123')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (86, N'Tiziana', N'Nieto', N'35987457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (87, N'Matías', N'Carrizo', N'33789124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (88, N'Morena', N'Chávez', N'38123787')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (89, N'Lisandro', N'Escobar', N'32456789')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (90, N'Ambar', N'Farias', N'36987652')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (91, N'Ciro', N'Vallejos', N'34123457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (92, N'Romina', N'Maidana', N'35789124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (93, N'Ramiro', N'Aguirre', N'33123788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (94, N'Lola', N'Britez', N'38987456')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (95, N'Jeremías', N'Montenegro', N'32654320')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (96, N'Alma', N'Leguizamón', N'36123458')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (97, N'Gonzalo', N'Coronel', N'34789655')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (98, N'Trinidad', N'Núñez', N'35654124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (99, N'Ian', N'Orellana', N'33456124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (100, N'Josefina', N'Ponce', N'38123786')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (101, N'Alejo', N'Bravo', N'35123458')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (102, N'Luciana', N'Toledo', N'36789124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (103, N'Mateo', N'Molina', N'34123458')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (104, N'Abril', N'Villanueva', N'37789124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (105, N'Feliciano', N'Mansilla', N'35456788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (106, N'Rosario', N'Andrade', N'36987655')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (107, N'Gaspar', N'Pinto', N'33876542')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (108, N'Helena', N'Quiroga', N'38654320')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (109, N'Benicio', N'Vega', N'34123786')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (110, N'Martina', N'Ramos', N'37987124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (111, N'Elias', N'Galarza', N'32789457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (112, N'Jazmín', N'Paez', N'36234891')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (113, N'Vicente', N'Guzmán', N'34654786')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (114, N'Mora', N'Coria', N'35123655')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (115, N'Noah', N'Cabral', N'33456125')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (116, N'Amparo', N'Domínguez', N'38789457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (117, N'Theo', N'López', N'34123784')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (118, N'Paula', N'Méndez', N'36654124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (119, N'Gino', N'Castillo', N'32987459')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (120, N'Lara', N'Giménez', N'37123788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (121, N'Joaquín', N'Duarte', N'34789125')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (122, N'Violeta', N'Soria', N'35987458')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (123, N'Lino', N'Chávez', N'33456787')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (124, N'Clara', N'Cabrera', N'38123458')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (125, N'Silas', N'Arias', N'32789653')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (126, N'Zoe', N'Figueroa', N'36987320')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (127, N'Milo', N'Godoy', N'34654787')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (128, N'Regina', N'Morales', N'35123986')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (129, N'Teo', N'Rojas', N'32456320')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (130, N'Manuela', N'Basualdo', N'37789653')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (131, N'Aarón', N'Gómez', N'33987122')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (132, N'Alfonsina', N'Romero', N'38654788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (133, N'Salvador', N'Heredia', N'32123457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (134, N'Paulina', N'Ibáñez', N'36789655')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (135, N'Fermín', N'Alegre', N'34456124')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (136, N'India', N'Montiel', N'35987459')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (137, N'Baltazar', N'Méndez', N'33789125')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (138, N'Faustina', N'Acosta', N'38123785')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (139, N'Victorio', N'Vera', N'32456788')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (140, N'Miranda', N'Paz', N'36987656')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (141, N'Eliseo', N'Barrios', N'34123459')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (142, N'Elena', N'Bustos', N'35789125')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (143, N'Gael', N'Luna', N'33123785')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (144, N'Paloma', N'Zárate', N'38987457')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (145, N'Homero', N'Reynoso', N'32654322')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (146, N'Guillermina', N'Fernández', N'36123459')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (147, N'Oliver', N'García', N'34789656')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (148, N'Aitana', N'Silva', N'35654125')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (149, N'Galo', N'Moreno', N'33456126')
GO
INSERT [dbo].[Pasajero] ([id_pasajero], [nombre], [apellido], [DNI]) VALUES (150, N'Justina', N'Sánchez', N'38123784')
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (1, CAST(1.80 AS Decimal(5, 2)), CAST(120.50 AS Decimal(10, 2)), 9, 19, 1)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (2, CAST(3.50 AS Decimal(5, 2)), CAST(210.00 AS Decimal(10, 2)), 9, 18, 2)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (3, CAST(1.80 AS Decimal(5, 2)), CAST(120.50 AS Decimal(10, 2)), 19, 9, 1)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (4, CAST(3.50 AS Decimal(5, 2)), CAST(210.00 AS Decimal(10, 2)), 18, 9, 2)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (5, CAST(2.80 AS Decimal(5, 2)), CAST(450.20 AS Decimal(10, 2)), 1, 5, 3)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (6, CAST(2.80 AS Decimal(5, 2)), CAST(450.20 AS Decimal(10, 2)), 5, 1, 3)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (7, CAST(4.50 AS Decimal(5, 2)), CAST(450.20 AS Decimal(10, 2)), 1, 15, 3)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (8, CAST(4.50 AS Decimal(5, 2)), CAST(450.20 AS Decimal(10, 2)), 15, 1, 3)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (9, CAST(6.20 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 1, 16, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (10, CAST(6.20 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 16, 1, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (11, CAST(9.10 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 1, 10, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (12, CAST(9.10 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 10, 1, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (13, CAST(9.50 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 1, 3, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (14, CAST(9.50 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 3, 1, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (15, CAST(8.80 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 1, 20, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (16, CAST(8.80 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 20, 1, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (17, CAST(7.00 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 1, 17, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (18, CAST(7.00 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 17, 1, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (19, CAST(11.50 AS Decimal(5, 2)), CAST(1150.00 AS Decimal(10, 2)), 1, 2, 5)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (20, CAST(11.50 AS Decimal(5, 2)), CAST(1150.00 AS Decimal(10, 2)), 2, 1, 5)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (21, CAST(12.00 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 1, 4, 6)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (22, CAST(12.00 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 4, 1, 6)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (23, CAST(11.80 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 1, 6, 6)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (24, CAST(11.80 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 6, 1, 6)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (25, CAST(12.20 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 1, 12, 6)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (26, CAST(12.50 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 1, 13, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (27, CAST(12.50 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 13, 1, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (28, CAST(9.00 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 1, 14, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (29, CAST(9.00 AS Decimal(5, 2)), CAST(790.00 AS Decimal(10, 2)), 14, 1, 4)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (30, CAST(2.20 AS Decimal(5, 2)), CAST(1150.00 AS Decimal(10, 2)), 2, 11, 5)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (31, CAST(2.20 AS Decimal(5, 2)), CAST(1150.00 AS Decimal(10, 2)), 11, 2, 5)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (32, CAST(7.00 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 6, 7, 6)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (33, CAST(7.00 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 7, 6, 6)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (34, CAST(14.00 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 4, 8, 6)
GO
INSERT [dbo].[Ruta] ([id_ruta], [duracion_horas], [precio], [id_aeropuerto_origen], [id_aeropuerto_destino], [id_tarifa]) VALUES (35, CAST(14.00 AS Decimal(5, 2)), CAST(1450.80 AS Decimal(10, 2)), 8, 4, 6)
GO
INSERT [dbo].[Sector_Laboral] ([id_sector_laboral], [nombre_sector]) VALUES (5, N'Administración y Finanzas')
GO
INSERT [dbo].[Sector_Laboral] ([id_sector_laboral], [nombre_sector]) VALUES (6, N'Atención al Cliente (Aeropuerto)')
GO
INSERT [dbo].[Sector_Laboral] ([id_sector_laboral], [nombre_sector]) VALUES (3, N'Mantenimiento y Hangares')
GO
INSERT [dbo].[Sector_Laboral] ([id_sector_laboral], [nombre_sector]) VALUES (4, N'Operaciones en Tierra (Rampa)')
GO
INSERT [dbo].[Sector_Laboral] ([id_sector_laboral], [nombre_sector]) VALUES (2, N'Personal de Cabina (TCP)')
GO
INSERT [dbo].[Sector_Laboral] ([id_sector_laboral], [nombre_sector]) VALUES (1, N'Tripulación de Vuelo (Pilotos)')
GO
INSERT [dbo].[Tarifa] ([id_tarifa], [precio_tarifa]) VALUES (1, CAST(120.50 AS Decimal(10, 2)))
GO
INSERT [dbo].[Tarifa] ([id_tarifa], [precio_tarifa]) VALUES (2, CAST(210.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Tarifa] ([id_tarifa], [precio_tarifa]) VALUES (3, CAST(450.20 AS Decimal(10, 2)))
GO
INSERT [dbo].[Tarifa] ([id_tarifa], [precio_tarifa]) VALUES (4, CAST(790.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Tarifa] ([id_tarifa], [precio_tarifa]) VALUES (5, CAST(1150.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Tarifa] ([id_tarifa], [precio_tarifa]) VALUES (6, CAST(1450.80 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (1, N'Buenos Aires', N'Argentina')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (2, N'Madrid', N'España')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (3, N'Fort Worth, Texas', N'EEUU')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (4, N'París', N'Francia')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (5, N'Dubai', N'EAU')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (6, N'Santiago', N'Chile')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (7, N'Londres', N'Reino Unido')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (8, N'Frankfurt', N'Alemania')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (9, N'Atlanta, Georgia', N'EEUU')
GO
INSERT [dbo].[Ubicacion] ([id_ubicacion], [ciudad], [pais]) VALUES (10, N'Ciudad de Panamá', N'Panamá')
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (1, N'Buenos Aires', N'Argentina', CAST(-34.822200 AS Decimal(9, 6)), CAST(-58.535800 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (2, N'Madrid', N'España', CAST(40.493600 AS Decimal(9, 6)), CAST(-3.566800 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (3, N'New York', N'EEUU', CAST(40.639800 AS Decimal(9, 6)), CAST(-73.778900 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (4, N'París', N'Francia', CAST(49.009700 AS Decimal(9, 6)), CAST(2.547900 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (5, N'São Paulo', N'Brasil', CAST(-23.435600 AS Decimal(9, 6)), CAST(-46.473100 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (6, N'Londres', N'Reino Unido', CAST(51.470000 AS Decimal(9, 6)), CAST(-0.454300 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (7, N'Dubai', N'EAU', CAST(25.253200 AS Decimal(9, 6)), CAST(55.365700 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (8, N'Tokyo', N'Japón', CAST(35.552300 AS Decimal(9, 6)), CAST(139.779800 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (9, N'Buenos Aires', N'Argentina', CAST(-34.559200 AS Decimal(9, 6)), CAST(-58.415600 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (10, N'Miami', N'EEUU', CAST(25.795900 AS Decimal(9, 6)), CAST(-80.287000 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (11, N'Roma', N'Italia', CAST(41.800300 AS Decimal(9, 6)), CAST(12.238900 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (12, N'Frankfurt', N'Alemania', CAST(50.037900 AS Decimal(9, 6)), CAST(8.562200 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (13, N'Los Ángeles', N'EEUU', CAST(33.941600 AS Decimal(9, 6)), CAST(-118.408500 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (14, N'Ciudad de México', N'México', CAST(19.436300 AS Decimal(9, 6)), CAST(-99.072100 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (15, N'Lima', N'Perú', CAST(-12.021900 AS Decimal(9, 6)), CAST(-77.114300 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (16, N'Bogotá', N'Colombia', CAST(4.701600 AS Decimal(9, 6)), CAST(-74.146900 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (17, N'Ciudad de Panamá', N'Panamá', CAST(9.071400 AS Decimal(9, 6)), CAST(-79.383300 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (18, N'Ushuaia', N'Argentina', CAST(-54.843300 AS Decimal(9, 6)), CAST(-68.295000 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (19, N'Bariloche', N'Argentina', CAST(-41.151100 AS Decimal(9, 6)), CAST(-71.157900 AS Decimal(9, 6)))
GO
INSERT [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto], [ciudad], [pais], [latitud], [longitud]) VALUES (20, N'Cancún', N'México', CAST(21.036500 AS Decimal(9, 6)), CAST(-86.877100 AS Decimal(9, 6)))
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (1, CAST(N'2023-01-10T08:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (2, CAST(N'2023-01-12T10:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (3, CAST(N'2023-01-15T14:30:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (4, CAST(N'2023-02-05T09:15:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (5, CAST(N'2023-02-10T22:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (6, CAST(N'2023-03-01T07:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (7, CAST(N'2023-03-15T18:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (8, CAST(N'2023-04-02T12:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (9, CAST(N'2023-04-20T23:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (10, CAST(N'2023-05-10T08:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (11, CAST(N'2023-05-15T11:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (12, CAST(N'2023-06-01T15:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (13, CAST(N'2023-06-18T09:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (14, CAST(N'2023-07-04T10:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (15, CAST(N'2023-07-15T22:30:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (16, CAST(N'2023-07-20T14:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (17, CAST(N'2023-07-22T16:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (18, CAST(N'2023-07-25T08:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (19, CAST(N'2023-08-05T23:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (20, CAST(N'2023-08-15T10:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (21, CAST(N'2023-09-01T09:15:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (22, CAST(N'2023-09-10T22:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (23, CAST(N'2023-10-05T07:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (24, CAST(N'2023-10-15T18:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (25, CAST(N'2023-11-02T12:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (26, CAST(N'2023-11-20T23:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (27, CAST(N'2023-12-10T08:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (28, CAST(N'2023-12-15T11:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (29, CAST(N'2023-12-20T15:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (30, CAST(N'2023-12-22T09:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (31, CAST(N'2023-12-28T10:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (32, CAST(N'2023-12-30T22:30:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (33, CAST(N'2024-01-10T08:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (34, CAST(N'2024-01-12T10:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (35, CAST(N'2024-01-15T14:30:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (36, CAST(N'2024-02-05T09:15:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (37, CAST(N'2024-02-10T22:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (38, CAST(N'2024-03-01T07:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (39, CAST(N'2024-03-15T18:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (40, CAST(N'2024-04-02T12:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (41, CAST(N'2024-04-20T23:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (42, CAST(N'2024-05-10T08:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (43, CAST(N'2024-05-15T11:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (44, CAST(N'2024-06-01T15:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (45, CAST(N'2024-06-18T09:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (46, CAST(N'2024-07-04T10:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (47, CAST(N'2024-07-15T22:30:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (48, CAST(N'2024-07-20T14:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (49, CAST(N'2024-07-22T16:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (50, CAST(N'2024-07-25T08:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (51, CAST(N'2024-08-05T23:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (52, CAST(N'2024-08-15T10:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (53, CAST(N'2024-09-01T09:15:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (54, CAST(N'2024-09-10T22:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (55, CAST(N'2024-10-05T07:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (56, CAST(N'2024-10-15T18:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (57, CAST(N'2024-11-02T12:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (58, CAST(N'2024-11-20T23:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (59, CAST(N'2024-12-10T08:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (60, CAST(N'2024-12-15T11:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (61, CAST(N'2024-12-20T15:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (62, CAST(N'2024-12-22T09:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (63, CAST(N'2024-12-28T10:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (64, CAST(N'2024-12-30T22:30:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (65, CAST(N'2025-01-10T08:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (66, CAST(N'2025-01-12T10:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (67, CAST(N'2025-01-15T14:30:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (68, CAST(N'2025-02-05T09:15:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (69, CAST(N'2025-02-10T22:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (70, CAST(N'2025-03-01T07:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (71, CAST(N'2025-03-15T18:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (72, CAST(N'2025-04-02T12:00:00.0000000' AS DateTime2), 3)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (73, CAST(N'2025-04-20T23:00:00.0000000' AS DateTime2), 21)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (74, CAST(N'2025-05-10T08:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (75, CAST(N'2025-05-15T11:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (76, CAST(N'2025-06-01T15:00:00.0000000' AS DateTime2), 17)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (77, CAST(N'2025-06-18T09:00:00.0000000' AS DateTime2), 15)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (78, CAST(N'2025-07-04T10:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (79, CAST(N'2025-07-15T22:30:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (80, CAST(N'2025-07-20T14:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (81, CAST(N'2025-07-22T16:00:00.0000000' AS DateTime2), 13)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (82, CAST(N'2025-07-25T08:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (83, CAST(N'2025-08-05T23:00:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (84, CAST(N'2025-08-15T10:00:00.0000000' AS DateTime2), 2)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (85, CAST(N'2025-09-01T09:15:00.0000000' AS DateTime2), 5)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (86, CAST(N'2025-09-10T22:00:00.0000000' AS DateTime2), 23)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (87, CAST(N'2025-10-05T07:00:00.0000000' AS DateTime2), 4)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (88, CAST(N'2025-10-15T18:00:00.0000000' AS DateTime2), 14)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (89, CAST(N'2025-10-20T12:00:00.0000000' AS DateTime2), 6)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (90, CAST(N'2025-10-25T23:00:00.0000000' AS DateTime2), 22)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (91, CAST(N'2025-11-01T08:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (92, CAST(N'2025-11-05T11:00:00.0000000' AS DateTime2), 19)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (93, CAST(N'2025-11-10T15:00:00.0000000' AS DateTime2), 11)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (94, CAST(N'2025-11-15T09:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (95, CAST(N'2025-11-20T10:30:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (96, CAST(N'2025-11-25T22:30:00.0000000' AS DateTime2), 20)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (97, CAST(N'2025-12-01T08:00:00.0000000' AS DateTime2), 7)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (98, CAST(N'2025-12-05T14:00:00.0000000' AS DateTime2), 8)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (99, CAST(N'2025-12-10T09:15:00.0000000' AS DateTime2), 9)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (100, CAST(N'2025-12-15T18:00:00.0000000' AS DateTime2), 10)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (101, CAST(N'2024-01-20T22:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (102, CAST(N'2024-03-22T22:00:00.0000000' AS DateTime2), 26)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (103, CAST(N'2024-06-15T10:00:00.0000000' AS DateTime2), 27)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (104, CAST(N'2024-02-10T08:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (105, CAST(N'2024-05-18T08:00:00.0000000' AS DateTime2), 28)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (106, CAST(N'2024-09-01T10:00:00.0000000' AS DateTime2), 29)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (107, CAST(N'2024-01-15T09:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (108, CAST(N'2024-01-22T14:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (109, CAST(N'2024-02-15T09:00:00.0000000' AS DateTime2), 30)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (110, CAST(N'2024-02-22T14:00:00.0000000' AS DateTime2), 31)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (111, CAST(N'2024-03-10T09:00:00.0000000' AS DateTime2), 31)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (112, CAST(N'2024-07-01T15:00:00.0000000' AS DateTime2), 32)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (113, CAST(N'2024-07-08T15:00:00.0000000' AS DateTime2), 32)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (114, CAST(N'2024-07-15T15:00:00.0000000' AS DateTime2), 32)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (115, CAST(N'2024-08-01T23:00:00.0000000' AS DateTime2), 33)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (116, CAST(N'2024-08-08T23:00:00.0000000' AS DateTime2), 33)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (117, CAST(N'2025-01-05T13:00:00.0000000' AS DateTime2), 34)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (118, CAST(N'2025-03-05T13:00:00.0000000' AS DateTime2), 34)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (119, CAST(N'2025-02-10T10:00:00.0000000' AS DateTime2), 35)
GO
INSERT [dbo].[Vuelo] ([id_vuelo], [fecha_hora_salida], [id_ruta]) VALUES (120, CAST(N'2025-04-10T10:00:00.0000000' AS DateTime2), 35)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Aerolinea]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Aerolinea] ADD  CONSTRAINT [UQ_Aerolinea] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Aerolinea_Ubicacion]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Aerolinea_Ubicacion] ON [dbo].[Aerolinea]
(
	[id_ubicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_AA]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Aerolinea_Aeropuerto] ADD  CONSTRAINT [UQ_AA] UNIQUE NONCLUSTERED 
(
	[id_aerolinea] ASC,
	[id_aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AA_Aerolinea]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AA_Aerolinea] ON [dbo].[Aerolinea_Aeropuerto]
(
	[id_aerolinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AA_Aeropuerto]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AA_Aeropuerto] ON [dbo].[Aerolinea_Aeropuerto]
(
	[id_aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_AAv]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Aerolinea_Avion] ADD  CONSTRAINT [UQ_AAv] UNIQUE NONCLUSTERED 
(
	[id_aerolinea] ASC,
	[id_avion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AAv_Aerolinea]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AAv_Aerolinea] ON [dbo].[Aerolinea_Avion]
(
	[id_aerolinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AAv_Avion]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AAv_Avion] ON [dbo].[Aerolinea_Avion]
(
	[id_avion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_AP]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Aerolinea_Pasaje] ADD  CONSTRAINT [UQ_AP] UNIQUE NONCLUSTERED 
(
	[id_aerolinea] ASC,
	[id_pasaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AP_Aerolinea]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AP_Aerolinea] ON [dbo].[Aerolinea_Pasaje]
(
	[id_aerolinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AP_Pasaje]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AP_Pasaje] ON [dbo].[Aerolinea_Pasaje]
(
	[id_pasaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_AV]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Aerolinea_Vuelo] ADD  CONSTRAINT [UQ_AV] UNIQUE NONCLUSTERED 
(
	[id_aerolinea] ASC,
	[id_vuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AV_Aerolinea]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AV_Aerolinea] ON [dbo].[Aerolinea_Vuelo]
(
	[id_aerolinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AV_Vuelo]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AV_Vuelo] ON [dbo].[Aerolinea_Vuelo]
(
	[id_vuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Aeropuerto]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Aeropuerto] ADD  CONSTRAINT [UQ_Aeropuerto] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Aeropuerto_Ubicacion]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Aeropuerto_Ubicacion] ON [dbo].[Aeropuerto]
(
	[id_ubicacion_aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_AE]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Asignar_Empleado] ADD  CONSTRAINT [UQ_AE] UNIQUE NONCLUSTERED 
(
	[id_aerolinea] ASC,
	[id_aeropuerto] ASC,
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AE_Aerolinea]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AE_Aerolinea] ON [dbo].[Asignar_Empleado]
(
	[id_aerolinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AE_Aeropuerto]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AE_Aeropuerto] ON [dbo].[Asignar_Empleado]
(
	[id_aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AE_Empleado]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_AE_Empleado] ON [dbo].[Asignar_Empleado]
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Avion_Marca]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Avion_Marca] ON [dbo].[Avion]
(
	[id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Avion_Modelo]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Avion_Modelo] ON [dbo].[Avion]
(
	[id_modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cargo_Sector]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Cargo_Sector] ON [dbo].[Cargo]
(
	[id_sector_laboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_ClasePasaje]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Clase_Pasaje] ADD  CONSTRAINT [UQ_ClasePasaje] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Empleado_Cargo]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Empleado_Cargo] ON [dbo].[Empleado]
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Marca]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Marca] ADD  CONSTRAINT [UQ_Marca] UNIQUE NONCLUSTERED 
(
	[marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Modelo]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Modelo] ADD  CONSTRAINT [UQ_Modelo] UNIQUE NONCLUSTERED 
(
	[modelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Pasaje_Vuelo_Asiento]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Pasaje] ADD  CONSTRAINT [UQ_Pasaje_Vuelo_Asiento] UNIQUE NONCLUSTERED 
(
	[id_vuelo] ASC,
	[asiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pasaje_Clase]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Pasaje_Clase] ON [dbo].[Pasaje]
(
	[id_clase_pasaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pasaje_Pasajero]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Pasaje_Pasajero] ON [dbo].[Pasaje]
(
	[id_pasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Pasajero_DNI]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Pasajero] ADD  CONSTRAINT [UQ_Pasajero_DNI] UNIQUE NONCLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ruta_Destino]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Ruta_Destino] ON [dbo].[Ruta]
(
	[id_aeropuerto_destino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ruta_Origen]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Ruta_Origen] ON [dbo].[Ruta]
(
	[id_aeropuerto_origen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ruta_Tarifa]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Ruta_Tarifa] ON [dbo].[Ruta]
(
	[id_tarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Sector]    Script Date: 27/10/2025 16:59:55 ******/
ALTER TABLE [dbo].[Sector_Laboral] ADD  CONSTRAINT [UQ_Sector] UNIQUE NONCLUSTERED 
(
	[nombre_sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vuelo_Ruta]    Script Date: 27/10/2025 16:59:55 ******/
CREATE NONCLUSTERED INDEX [IX_Vuelo_Ruta] ON [dbo].[Vuelo]
(
	[id_ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aerolinea]  WITH CHECK ADD  CONSTRAINT [FK_Aerolinea_Ubicacion] FOREIGN KEY([id_ubicacion])
REFERENCES [dbo].[Ubicacion] ([id_ubicacion])
GO
ALTER TABLE [dbo].[Aerolinea] CHECK CONSTRAINT [FK_Aerolinea_Ubicacion]
GO
ALTER TABLE [dbo].[Aerolinea_Aeropuerto]  WITH CHECK ADD  CONSTRAINT [FK_AA_Aerolinea] FOREIGN KEY([id_aerolinea])
REFERENCES [dbo].[Aerolinea] ([id_aerolinea])
GO
ALTER TABLE [dbo].[Aerolinea_Aeropuerto] CHECK CONSTRAINT [FK_AA_Aerolinea]
GO
ALTER TABLE [dbo].[Aerolinea_Aeropuerto]  WITH CHECK ADD  CONSTRAINT [FK_AA_Aeropuerto] FOREIGN KEY([id_aeropuerto])
REFERENCES [dbo].[Aeropuerto] ([id_aeropuerto])
GO
ALTER TABLE [dbo].[Aerolinea_Aeropuerto] CHECK CONSTRAINT [FK_AA_Aeropuerto]
GO
ALTER TABLE [dbo].[Aerolinea_Avion]  WITH CHECK ADD  CONSTRAINT [FK_AAv_Aerolinea] FOREIGN KEY([id_aerolinea])
REFERENCES [dbo].[Aerolinea] ([id_aerolinea])
GO
ALTER TABLE [dbo].[Aerolinea_Avion] CHECK CONSTRAINT [FK_AAv_Aerolinea]
GO
ALTER TABLE [dbo].[Aerolinea_Avion]  WITH CHECK ADD  CONSTRAINT [FK_AAv_Avion] FOREIGN KEY([id_avion])
REFERENCES [dbo].[Avion] ([id_avion])
GO
ALTER TABLE [dbo].[Aerolinea_Avion] CHECK CONSTRAINT [FK_AAv_Avion]
GO
ALTER TABLE [dbo].[Aerolinea_Pasaje]  WITH CHECK ADD  CONSTRAINT [FK_AP_Aerolinea] FOREIGN KEY([id_aerolinea])
REFERENCES [dbo].[Aerolinea] ([id_aerolinea])
GO
ALTER TABLE [dbo].[Aerolinea_Pasaje] CHECK CONSTRAINT [FK_AP_Aerolinea]
GO
ALTER TABLE [dbo].[Aerolinea_Pasaje]  WITH CHECK ADD  CONSTRAINT [FK_AP_Pasaje] FOREIGN KEY([id_pasaje])
REFERENCES [dbo].[Pasaje] ([id_pasaje])
GO
ALTER TABLE [dbo].[Aerolinea_Pasaje] CHECK CONSTRAINT [FK_AP_Pasaje]
GO
ALTER TABLE [dbo].[Aerolinea_Vuelo]  WITH CHECK ADD  CONSTRAINT [FK_AV_Aerolinea] FOREIGN KEY([id_aerolinea])
REFERENCES [dbo].[Aerolinea] ([id_aerolinea])
GO
ALTER TABLE [dbo].[Aerolinea_Vuelo] CHECK CONSTRAINT [FK_AV_Aerolinea]
GO
ALTER TABLE [dbo].[Aerolinea_Vuelo]  WITH CHECK ADD  CONSTRAINT [FK_AV_Vuelo] FOREIGN KEY([id_vuelo])
REFERENCES [dbo].[Vuelo] ([id_vuelo])
GO
ALTER TABLE [dbo].[Aerolinea_Vuelo] CHECK CONSTRAINT [FK_AV_Vuelo]
GO
ALTER TABLE [dbo].[Aeropuerto]  WITH CHECK ADD  CONSTRAINT [FK_Aeropuerto_Ubicacion] FOREIGN KEY([id_ubicacion_aeropuerto])
REFERENCES [dbo].[Ubicacion_Aeropuerto] ([id_ubicacion_aeropuerto])
GO
ALTER TABLE [dbo].[Aeropuerto] CHECK CONSTRAINT [FK_Aeropuerto_Ubicacion]
GO
ALTER TABLE [dbo].[Asignar_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_AE_Aerolinea] FOREIGN KEY([id_aerolinea])
REFERENCES [dbo].[Aerolinea] ([id_aerolinea])
GO
ALTER TABLE [dbo].[Asignar_Empleado] CHECK CONSTRAINT [FK_AE_Aerolinea]
GO
ALTER TABLE [dbo].[Asignar_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_AE_Aeropuerto] FOREIGN KEY([id_aeropuerto])
REFERENCES [dbo].[Aeropuerto] ([id_aeropuerto])
GO
ALTER TABLE [dbo].[Asignar_Empleado] CHECK CONSTRAINT [FK_AE_Aeropuerto]
GO
ALTER TABLE [dbo].[Asignar_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_AE_Empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[Asignar_Empleado] CHECK CONSTRAINT [FK_AE_Empleado]
GO
ALTER TABLE [dbo].[Avion]  WITH CHECK ADD  CONSTRAINT [FK_Avion_Marca] FOREIGN KEY([id_marca])
REFERENCES [dbo].[Marca] ([id_marca])
GO
ALTER TABLE [dbo].[Avion] CHECK CONSTRAINT [FK_Avion_Marca]
GO
ALTER TABLE [dbo].[Avion]  WITH CHECK ADD  CONSTRAINT [FK_Avion_Modelo] FOREIGN KEY([id_modelo])
REFERENCES [dbo].[Modelo] ([id_modelo])
GO
ALTER TABLE [dbo].[Avion] CHECK CONSTRAINT [FK_Avion_Modelo]
GO
ALTER TABLE [dbo].[Cargo]  WITH CHECK ADD  CONSTRAINT [FK_Cargo_Sector] FOREIGN KEY([id_sector_laboral])
REFERENCES [dbo].[Sector_Laboral] ([id_sector_laboral])
GO
ALTER TABLE [dbo].[Cargo] CHECK CONSTRAINT [FK_Cargo_Sector]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Cargo] FOREIGN KEY([id_cargo])
REFERENCES [dbo].[Cargo] ([id_cargo])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Cargo]
GO
ALTER TABLE [dbo].[Pasaje]  WITH CHECK ADD  CONSTRAINT [FK_Pasaje_Clase] FOREIGN KEY([id_clase_pasaje])
REFERENCES [dbo].[Clase_Pasaje] ([id_clase_pasaje])
GO
ALTER TABLE [dbo].[Pasaje] CHECK CONSTRAINT [FK_Pasaje_Clase]
GO
ALTER TABLE [dbo].[Pasaje]  WITH CHECK ADD  CONSTRAINT [FK_Pasaje_Pasajero] FOREIGN KEY([id_pasajero])
REFERENCES [dbo].[Pasajero] ([id_pasajero])
GO
ALTER TABLE [dbo].[Pasaje] CHECK CONSTRAINT [FK_Pasaje_Pasajero]
GO
ALTER TABLE [dbo].[Pasaje]  WITH CHECK ADD  CONSTRAINT [FK_Pasaje_Vuelo] FOREIGN KEY([id_vuelo])
REFERENCES [dbo].[Vuelo] ([id_vuelo])
GO
ALTER TABLE [dbo].[Pasaje] CHECK CONSTRAINT [FK_Pasaje_Vuelo]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Destino] FOREIGN KEY([id_aeropuerto_destino])
REFERENCES [dbo].[Aeropuerto] ([id_aeropuerto])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Destino]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Origen] FOREIGN KEY([id_aeropuerto_origen])
REFERENCES [dbo].[Aeropuerto] ([id_aeropuerto])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Origen]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Tarifa] FOREIGN KEY([id_tarifa])
REFERENCES [dbo].[Tarifa] ([id_tarifa])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Tarifa]
GO
ALTER TABLE [dbo].[Vuelo]  WITH CHECK ADD  CONSTRAINT [FK_Vuelo_Ruta] FOREIGN KEY([id_ruta])
REFERENCES [dbo].[Ruta] ([id_ruta])
GO
ALTER TABLE [dbo].[Vuelo] CHECK CONSTRAINT [FK_Vuelo_Ruta]
GO
ALTER TABLE [dbo].[Clase_Pasaje]  WITH CHECK ADD CHECK  (([precio]>=(0)))
GO
ALTER TABLE [dbo].[Modelo]  WITH CHECK ADD CHECK  (([capacidad]>(0)))
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD CHECK  (([duracion_horas]>(0)))
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD CHECK  (([precio]>=(0)))
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [CK_Ruta_OrigenDestino] CHECK  (([id_aeropuerto_origen]<>[id_aeropuerto_destino]))
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [CK_Ruta_OrigenDestino]
GO
ALTER TABLE [dbo].[Tarifa]  WITH CHECK ADD CHECK  (([precio_tarifa]>=(0)))
GO
USE [master]
GO
ALTER DATABASE [AEROPUERTO] SET  READ_WRITE 
GO
