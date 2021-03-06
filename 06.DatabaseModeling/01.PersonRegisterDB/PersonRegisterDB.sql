USE [master]
GO
/****** Object:  Database [NewPersonRegister]    Script Date: 2.10.2015 г. 13:05:05 ч. ******/
CREATE DATABASE [NewPersonRegister]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewPersonRegister', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NewPersonRegister.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NewPersonRegister_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NewPersonRegister_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NewPersonRegister] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewPersonRegister].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewPersonRegister] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewPersonRegister] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewPersonRegister] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewPersonRegister] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewPersonRegister] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewPersonRegister] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NewPersonRegister] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewPersonRegister] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewPersonRegister] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewPersonRegister] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewPersonRegister] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewPersonRegister] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewPersonRegister] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewPersonRegister] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewPersonRegister] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NewPersonRegister] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewPersonRegister] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewPersonRegister] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewPersonRegister] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewPersonRegister] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewPersonRegister] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NewPersonRegister] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewPersonRegister] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NewPersonRegister] SET  MULTI_USER 
GO
ALTER DATABASE [NewPersonRegister] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewPersonRegister] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewPersonRegister] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewPersonRegister] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NewPersonRegister] SET DELAYED_DURABILITY = DISABLED 
GO
USE [NewPersonRegister]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2.10.2015 г. 13:05:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[AddressText] [nvarchar](200) NOT NULL,
	[TownId] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Continent]    Script Date: 2.10.2015 г. 13:05:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continent](
	[ContinentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Continent] PRIMARY KEY CLUSTERED 
(
	[ContinentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 2.10.2015 г. 13:05:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ContinentId] [int] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 2.10.2015 г. 13:05:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[AddressId] [int] NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Town]    Script Date: 2.10.2015 г. 13:05:06 ч. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[TownId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[TownId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressId], [AddressText], [TownId]) VALUES (1, N'22 Jump Street', 3)
INSERT [dbo].[Address] ([AddressId], [AddressText], [TownId]) VALUES (2, N'21 Jump Street', 2)
INSERT [dbo].[Address] ([AddressId], [AddressText], [TownId]) VALUES (3, N'Wall Street 19', 1)
INSERT [dbo].[Address] ([AddressId], [AddressText], [TownId]) VALUES (4, N'23 Jump Wall Street', 3)
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[Continent] ON 

INSERT [dbo].[Continent] ([ContinentId], [Name]) VALUES (1, N'Europe')
INSERT [dbo].[Continent] ([ContinentId], [Name]) VALUES (2, N'North America')
INSERT [dbo].[Continent] ([ContinentId], [Name]) VALUES (3, N'South America')
INSERT [dbo].[Continent] ([ContinentId], [Name]) VALUES (4, N'Asia')
INSERT [dbo].[Continent] ([ContinentId], [Name]) VALUES (5, N'Africa')
INSERT [dbo].[Continent] ([ContinentId], [Name]) VALUES (6, N'Antarctica')
INSERT [dbo].[Continent] ([ContinentId], [Name]) VALUES (7, N'Australia')
SET IDENTITY_INSERT [dbo].[Continent] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryId], [Name], [ContinentId]) VALUES (1, N'Bulgaria', 1)
INSERT [dbo].[Country] ([CountryId], [Name], [ContinentId]) VALUES (2, N'Brazil', 3)
INSERT [dbo].[Country] ([CountryId], [Name], [ContinentId]) VALUES (3, N'Canada', 2)
INSERT [dbo].[Country] ([CountryId], [Name], [ContinentId]) VALUES (4, N'Beijing', 4)
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [AddressId]) VALUES (1, N'Dwayne', N'Johnson', 1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [AddressId]) VALUES (2, N'Stone', N'Cold', 2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [AddressId]) VALUES (3, N'Pesho', N'Peshov', 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [AddressId]) VALUES (4, N'Gosho', N'Goshov', 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [AddressId]) VALUES (5, N'John', N'Dwaynson', 1)
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[Town] ON 

INSERT [dbo].[Town] ([TownId], [Name], [CountryId]) VALUES (1, N'Rio de Janeiro', 2)
INSERT [dbo].[Town] ([TownId], [Name], [CountryId]) VALUES (2, N'Ottawa', 3)
INSERT [dbo].[Town] ([TownId], [Name], [CountryId]) VALUES (3, N'Sofia', 1)
SET IDENTITY_INSERT [dbo].[Town] OFF
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Town] FOREIGN KEY([TownId])
REFERENCES [dbo].[Town] ([TownId])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Town]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Continent] FOREIGN KEY([ContinentId])
REFERENCES [dbo].[Continent] ([ContinentId])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Continent]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([AddressId])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Address]
GO
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_Country]
GO
USE [master]
GO
ALTER DATABASE [NewPersonRegister] SET  READ_WRITE 
GO
