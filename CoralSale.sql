USE [master]
GO
/****** Object:  Database [CoralSale]    Script Date: 10.01.2023 20:15:35 ******/
CREATE DATABASE [CoralSale]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CoralSale', FILENAME = N'D:\sqlll123\MSSQL15.SQLEXPRESS01\MSSQL\DATA\CoralSale.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CoralSale_log', FILENAME = N'D:\sqlll123\MSSQL15.SQLEXPRESS01\MSSQL\DATA\CoralSale_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CoralSale] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CoralSale].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CoralSale] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CoralSale] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CoralSale] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CoralSale] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CoralSale] SET ARITHABORT OFF 
GO
ALTER DATABASE [CoralSale] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CoralSale] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CoralSale] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CoralSale] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CoralSale] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CoralSale] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CoralSale] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CoralSale] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CoralSale] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CoralSale] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CoralSale] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CoralSale] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CoralSale] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CoralSale] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CoralSale] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CoralSale] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CoralSale] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CoralSale] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CoralSale] SET  MULTI_USER 
GO
ALTER DATABASE [CoralSale] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CoralSale] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CoralSale] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CoralSale] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CoralSale] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CoralSale] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CoralSale] SET QUERY_STORE = OFF
GO
USE [CoralSale]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10.01.2023 20:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tovari]    Script Date: 10.01.2023 20:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tovari](
	[TovarID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Proizv] [nvarchar](50) NULL,
	[IsActual] [nvarchar](50) NULL,
	[Cost] [int] NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tovari] PRIMARY KEY CLUSTERED 
(
	[TovarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10.01.2023 20:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Manager')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'User')
GO
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (1, N'Моторное масло Motor Oil KE900-90042-RRR', N' Nissan
', N'нет', 6666, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (2, N'Моторное масло Helix Ultra 550046361', N' Shell
', N'да', 250, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (3, N'Моторное масло Super 3000 X1 152566', N' Mobil2
', N'нет', 150, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (5, N'Моторное масло Dexos 2 95599405', N' Mobil
', N'нет', 500, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (6, N'Моторное масло Molygen New Generation 90541', N' Mobil
', N'да', 200, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (7, N'Моторное масло Top Tec 4600 8033', N' Liqui Moly
', N'да', 2700, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (8, N'Моторное масло ENGINE OIL 08880-80375-GO', N' Liqui Moly
', N'да', 1410, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (9, N'Моторное масло Mobil 1 ESP 154285', N' VAG
', N'да', 1500, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (10, N'Моторное масло Dexos 2 93165557', N' Elf
', N'да', 2420, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (11, N'Моторное масло Super 3000 X1 Diesel 152572', N' Toyota
', N'да', 1300, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (12, N'Моторное масло ENGINE OIL MZ 320754', N' Total
', N'да', 1650, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (13, N'Моторное масло Genesis Armortech 3148675', N' Elf
', N'нет', 2020, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (14, N'Моторное масло Optimal Synth 3926', N' Castrol
', N'нет', 350, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (15, N'Моторное масло Optimal Synth 2293', N' Motul
', N'нет', 2130, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (16, N'Моторное масло Evolution 900 SXR 194878', N' Total
', N'нет', 2220, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (17, N'Моторное масло Special C G 055 167 M4', N' Castrol
', N'да', 1820, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (18, N'Моторное масло Longlife III G 052 195 M2', N' Castrol
', N'да', 1560, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (19, N'Моторное масло Special Tec LL 8055', N' Opel
', N'да', 1590, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (20, N'Моторное масло Dexos 2 19 42 002', N' Suzuki
', N'да', 2090, N'/Resources/maslo.jpg')
INSERT [dbo].[Tovari] ([TovarID], [Name], [Proizv], [IsActual], [Cost], [photo]) VALUES (22, N'Моторное масло Formula F 15595E', N' Suzuki
', N'нет', 2920, N'/Resources/maslo.jpg')
GO
INSERT [dbo].[Users] ([ID], [Login], [Password], [RoleID], [photo]) VALUES (1, N'admin', N'123', 1, N'Resources\user.jpg')
INSERT [dbo].[Users] ([ID], [Login], [Password], [RoleID], [photo]) VALUES (2, N'manager', N'12345', 2, N'\Resources\userphoto.jpg')
INSERT [dbo].[Users] ([ID], [Login], [Password], [RoleID], [photo]) VALUES (3, N'usermiha', N'111111', 3, NULL)
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [CoralSale] SET  READ_WRITE 
GO
