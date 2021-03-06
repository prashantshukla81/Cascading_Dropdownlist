USE [master]
GO
/****** Object:  Database [Castcadding_List]    Script Date: 3/8/2022 2:45:39 PM ******/
CREATE DATABASE [Castcadding_List]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Castcadding_List', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Castcadding_List.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Castcadding_List_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Castcadding_List_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Castcadding_List] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Castcadding_List].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Castcadding_List] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Castcadding_List] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Castcadding_List] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Castcadding_List] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Castcadding_List] SET ARITHABORT OFF 
GO
ALTER DATABASE [Castcadding_List] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Castcadding_List] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Castcadding_List] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Castcadding_List] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Castcadding_List] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Castcadding_List] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Castcadding_List] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Castcadding_List] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Castcadding_List] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Castcadding_List] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Castcadding_List] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Castcadding_List] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Castcadding_List] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Castcadding_List] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Castcadding_List] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Castcadding_List] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Castcadding_List] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Castcadding_List] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Castcadding_List] SET  MULTI_USER 
GO
ALTER DATABASE [Castcadding_List] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Castcadding_List] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Castcadding_List] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Castcadding_List] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Castcadding_List] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Castcadding_List] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Castcadding_List] SET QUERY_STORE = OFF
GO
USE [Castcadding_List]
GO
/****** Object:  Table [dbo].[City_tbl]    Script Date: 3/8/2022 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City_tbl](
	[City_id] [int] IDENTITY(1,1) NOT NULL,
	[State_id] [int] NOT NULL,
	[City_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State_table] PRIMARY KEY CLUSTERED 
(
	[City_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country_tbl]    Script Date: 3/8/2022 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country_tbl](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](50) NULL,
 CONSTRAINT [PK_country_tbl] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State_tbl]    Script Date: 3/8/2022 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State_tbl](
	[State_id] [int] IDENTITY(1,1) NOT NULL,
	[Country_id] [int] NOT NULL,
	[State_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State_tbl] PRIMARY KEY CLUSTERED 
(
	[State_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City_tbl] ON 

INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (1, 1, N'jeevan Beema nagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (2, 1, N'Indiranagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (3, 1, N'Whitefield')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (4, 2, N'Vikash nagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (5, 2, N'Indiranagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (6, 2, N'Alambagh')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (7, 3, N'jeevan Beema nagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (8, 3, N'Indiranagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (9, 3, N'Haidrabad')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (10, 4, N'jeevan Beema nagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (11, 1, N'Indiranagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (12, 4, N'Barghar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (13, 5, N'jeevan Beema nagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (14, 1, N'Indiranagar')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (15, 1, N'Whitefield')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (16, 6, N'ta-nu')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (17, 6, N'shin-chan')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (18, 6, N'ching-chu')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (19, 7, N'ta-nu')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (20, 7, N'shin-chan')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (21, 7, N'ching-chu')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (22, 8, N'ta-nu')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (23, 8, N'shin-chan')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (24, 8, N'ching-chu')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (25, 9, N'ta-nu')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (26, 9, N'shin-chan')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (27, 9, N'ching-chu')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (28, 10, N'parsia')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (29, 10, N'moracco')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (30, 10, N'los angle')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (31, 11, N'parsia')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (32, 11, N'moracco')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (33, 11, N'los angle')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (34, 12, N'parsia')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (35, 12, N'moracco')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (36, 12, N'los angle')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (37, 13, N'parsia')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (38, 13, N'moracco')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (39, 13, N'los angle')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (40, 14, N'sindha')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (41, 14, N'alahabad')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (42, 14, N'abludah')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (43, 15, N'sindha')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (44, 15, N'alahabad')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (45, 15, N'abludah')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (46, 16, N'sindha')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (47, 16, N'alahabad')
INSERT [dbo].[City_tbl] ([City_id], [State_id], [City_name]) VALUES (48, 16, N'abludah')
SET IDENTITY_INSERT [dbo].[City_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[country_tbl] ON 

INSERT [dbo].[country_tbl] ([country_id], [country_name]) VALUES (1, N'India')
INSERT [dbo].[country_tbl] ([country_id], [country_name]) VALUES (2, N'Japan')
INSERT [dbo].[country_tbl] ([country_id], [country_name]) VALUES (3, N'America')
INSERT [dbo].[country_tbl] ([country_id], [country_name]) VALUES (4, N'Pakistan')
SET IDENTITY_INSERT [dbo].[country_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[State_tbl] ON 

INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (1, 1, N'Karnataka')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (2, 1, N'Uttar pradesh')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (3, 1, N'Telangan')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (4, 1, N'Odisha')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (5, 1, N'Banglore')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (6, 2, N'Aomori')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (7, 2, N'Hiroshima')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (8, 2, N'Nagasaki')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (9, 2, N'Ishikawa')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (10, 3, N' New Mexico')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (11, 3, N' Alaska')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (12, 3, N' 	Juneau')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (13, 3, N'Maryland')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (14, 4, N'Islamabad')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (15, 4, N'Lahore')
INSERT [dbo].[State_tbl] ([State_id], [Country_id], [State_Name]) VALUES (16, 4, N'Baluchistan')
SET IDENTITY_INSERT [dbo].[State_tbl] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_City]    Script Date: 3/8/2022 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_City]
@State_id int
AS
BEGIN
select * from City_tbl where State_id=@State_id 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Country]    Script Date: 3/8/2022 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Country]
AS
BEGIN
select * from country_tbl
END
GO
/****** Object:  StoredProcedure [dbo].[sp_State]    Script Date: 3/8/2022 2:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_State]
@country_id int
AS
BEGIN
select * from State_tbl where Country_id=@country_id
END
GO
USE [master]
GO
ALTER DATABASE [Castcadding_List] SET  READ_WRITE 
GO
