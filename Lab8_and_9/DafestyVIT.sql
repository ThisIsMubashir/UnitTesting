USE [master]
GO
/****** Object:  Database [Dafesty]    Script Date: 8/05/2020 12:57:19 AM ******/
CREATE DATABASE [Dafesty]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dafesty', FILENAME = N'C:\Users\Mubashir Hussain\Dafesty.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dafesty_log', FILENAME = N'C:\Users\Mubashir Hussain\Dafesty_1.ldf' , SIZE = 6272KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dafesty] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dafesty].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [Dafesty] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dafesty] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dafesty] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dafesty] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dafesty] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dafesty] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dafesty] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dafesty] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dafesty] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dafesty] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dafesty] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dafesty] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dafesty] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dafesty] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dafesty] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dafesty] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dafesty] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dafesty] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dafesty] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dafesty] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dafesty] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dafesty] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dafesty] SET RECOVERY FULL 
GO
ALTER DATABASE [Dafesty] SET  MULTI_USER 
GO
ALTER DATABASE [Dafesty] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dafesty] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dafesty] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dafesty] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Dafesty] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dafesty] SET QUERY_STORE = OFF
GO
USE [Dafesty]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Dafesty]
GO
/****** Object:  Table [dbo].[ControlTable]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControlTable](
	[NumberType] [nvarchar](10) NOT NULL,
	[FirstFreeNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryCode] [nvarchar](3) NOT NULL,
	[CountryName] [nvarchar](20) NULL,
	[Currency] [nvarchar](4) NULL,
	[TimeZone] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerContact]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerContact](
	[CustomerID] [nvarchar](4) NOT NULL,
	[CustomeName] [nvarchar](50) NOT NULL,
	[TelephoneNo] [nvarchar](10) NULL,
 CONSTRAINT [PK_CustomerContact] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [nvarchar](4) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[MemberCategory] [nvarchar](2) NULL,
	[Age] [int] NULL,
	[AmountSpent] [decimal](8, 2) NULL,
	[Address] [nvarchar](65) NULL,
	[City] [nvarchar](30) NULL,
	[PostalCode] [nvarchar](4) NULL,
	[PostalCodeEnhanced] [nvarchar](6) NULL,
	[CountryCode] [nvarchar](3) NULL,
	[ContactTitle] [nvarchar](2) NULL,
	[PhoneNumber] [nvarchar](9) NULL,
	[Extension] [nvarchar](5) NULL,
	[FaxNumber] [nvarchar](30) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Notes] [nvarchar](255) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documentaries]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documentaries](
	[VideoCode] [smallint] NOT NULL,
	[VideoTitle] [nvarchar](50) NULL,
	[MovieType] [nvarchar](30) NULL,
	[Rating] [nvarchar](3) NULL,
	[Price] [real] NULL,
	[Producer] [nvarchar](50) NULL,
	[Director] [nvarchar](50) NULL,
	[Media] [nvarchar](50) NULL,
	[TotalStock] [smallint] NULL,
	[NumberRented] [smallint] NULL,
	[PreviousEpisode] [smallint] NULL,
 CONSTRAINT [PK_Documentaries] PRIMARY KEY CLUSTERED 
(
	[VideoCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](10) NULL,
	[Age] [int] NULL,
	[Salary] [float] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesBackup]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesBackup](
	[EmployeeID] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](10) NULL,
	[Age] [int] NULL,
	[Salary] [float] NULL,
 CONSTRAINT [PK_EmployeesBackup] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueTran]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueTran](
	[TransactionID] [smallint] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nvarchar](4) NULL,
	[VideoCode] [smallint] NULL,
	[DateIssue] [datetime] NULL,
	[DateDue] [datetime] NULL,
	[DateActualReturn] [datetime] NULL,
	[RentalStatus] [nvarchar](3) NULL,
	[Remarks] [nvarchar](255) NULL,
 CONSTRAINT [PK_IssueTran] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberCategories]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberCategories](
	[MemberCategory] [nvarchar](2) NOT NULL,
	[MemberCatDescription] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_MemberCategories] PRIMARY KEY CLUSTERED 
(
	[MemberCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[VideoCode] [smallint] NOT NULL,
	[MovieTitle] [nvarchar](50) NULL,
	[MovieType] [nvarchar](10) NULL,
	[Rating] [nvarchar](3) NULL,
	[RentalPrice] [real] NULL,
	[ProducerID] [nvarchar](50) NULL,
	[Director] [nvarchar](50) NULL,
	[Media] [nvarchar](50) NULL,
	[TotalStock] [smallint] NULL,
	[NumberRented] [smallint] NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[VideoCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producers]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[ProducerID] [nvarchar](50) NOT NULL,
	[ProducerName] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](3) NULL,
 CONSTRAINT [PK_Producers] PRIMARY KEY CLUSTERED 
(
	[ProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProducerWebSite]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerWebSite](
	[ProducerID] [nvarchar](50) NOT NULL,
	[Website] [nvarchar](200) NULL,
 CONSTRAINT [PK_ProducerWebSite] PRIMARY KEY CLUSTERED 
(
	[ProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryHistory]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryHistory](
	[EmployeeID] [nvarchar](10) NOT NULL,
	[Salary] [float] NULL,
	[DateArchived] [datetime] NULL,
 CONSTRAINT [PK_SalaryHistory] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockAdjustment]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockAdjustment](
	[VideoCode] [smallint] NOT NULL,
	[AdjustmentQty] [int] NULL,
	[DateAdjusted] [datetime] NOT NULL,
	[WhoAdjust] [nvarchar](20) NULL,
	[AdjustReason] [nvarchar](50) NULL,
 CONSTRAINT [PK_StockAdjustment] PRIMARY KEY CLUSTERED 
(
	[VideoCode] ASC,
	[DateAdjusted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[Cd] [nvarchar](4) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[PCd] [nvarchar](50) NULL,
	[Nm] [nvarchar](100) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_2](
	[F1] [nchar](10) NOT NULL,
	[F2] [nchar](10) NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[F1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[LoginName] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerContact]  WITH CHECK ADD  CONSTRAINT [FK_CustomerContact_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerContact] CHECK CONSTRAINT [FK_CustomerContact_Customers]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Country]
GO
ALTER TABLE [dbo].[IssueTran]  WITH CHECK ADD  CONSTRAINT [FK_IssueTran_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[IssueTran] CHECK CONSTRAINT [FK_IssueTran_Customers]
GO
ALTER TABLE [dbo].[IssueTran]  WITH CHECK ADD  CONSTRAINT [FK_IssueTran_Movies1] FOREIGN KEY([VideoCode])
REFERENCES [dbo].[Movies] ([VideoCode])
GO
ALTER TABLE [dbo].[IssueTran] CHECK CONSTRAINT [FK_IssueTran_Movies1]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Producers] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producers] ([ProducerID])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Producers]
GO
ALTER TABLE [dbo].[ProducerWebSite]  WITH CHECK ADD  CONSTRAINT [FK_ProducerWebSite_Producers] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producers] ([ProducerID])
GO
ALTER TABLE [dbo].[ProducerWebSite] CHECK CONSTRAINT [FK_ProducerWebSite_Producers]
GO
ALTER TABLE [dbo].[StockAdjustment]  WITH CHECK ADD  CONSTRAINT [FK_StockAdjustment_Movies] FOREIGN KEY([VideoCode])
REFERENCES [dbo].[Movies] ([VideoCode])
GO
ALTER TABLE [dbo].[StockAdjustment] CHECK CONSTRAINT [FK_StockAdjustment_Movies]
GO
ALTER TABLE [dbo].[Table_2]  WITH CHECK ADD  CONSTRAINT [CK_Table_2] CHECK  (([F2]='A' OR [F2]='B'))
GO
ALTER TABLE [dbo].[Table_2] CHECK CONSTRAINT [CK_Table_2]
GO
/****** Object:  StoredProcedure [dbo].[MyProc]    Script Date: 8/05/2020 12:57:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MyProc] ( @MC nvarchar(2),  @CID nvarchar(4))
as
begin
UPDATE CUSTOMERS SET MEMBERCATEGORY=@MC Where customerid =@CID
end
GO
USE [master]
GO
ALTER DATABASE [Dafesty] SET  READ_WRITE 
GO
