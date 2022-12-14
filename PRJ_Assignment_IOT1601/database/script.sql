USE [master]
GO
/****** Object:  Database [ASM-PRJ301-IOT1601-583]    Script Date: 10/11/2022 02:53:16 ******/
CREATE DATABASE [ASM-PRJ301-IOT1601-583]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASM-PRJ301-IOT1601-583', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASM-PRJ301-IOT1601-583.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASM-PRJ301-IOT1601-583_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASM-PRJ301-IOT1601-583_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASM-PRJ301-IOT1601-583].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET  MULTI_USER 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET QUERY_STORE = OFF
GO
USE [ASM-PRJ301-IOT1601-583]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attandance]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attandance](
	[sesid] [int] NOT NULL,
	[stdid] [varchar](150) NOT NULL,
	[present] [bit] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[record_time] [datetime] NOT NULL,
 CONSTRAINT [PK_Attandance_1] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [varchar](150) NOT NULL,
	[lid] [varchar](150) NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group_1] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [varchar](150) NOT NULL,
	[lname] [nvarchar](150) NOT NULL,
	[lgmail] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer_1] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[rid] [int] NOT NULL,
	[usename] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role_Account] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[usename] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[lid] [varchar](150) NOT NULL,
	[attanded] [bit] NOT NULL,
 CONSTRAINT [PK_Session00] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [varchar](150) NOT NULL,
	[stdcode] [varchar](150) NOT NULL,
	[stdfirstname] [nvarchar](150) NOT NULL,
	[stdmidname] [nvarchar](150) NOT NULL,
	[stdlastname] [nvarchar](150) NOT NULL,
	[stdfullname] [nvarchar](150) NOT NULL,
	[stdgmail] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[stdid] [varchar](150) NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Studen_Group] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [varchar](150) NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time_Slot]    Script Date: 10/11/2022 02:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time_Slot](
	[tid] [int] NOT NULL,
	[tdescription] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Time_Slot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'datdthe16170', N'123', N'Doan Tien Dat')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'guest', N'123', N'Guest583')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'keiichiro', N'123', N'Someya Keiichiro')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt5', N'123', N'Ngo Tung Son')
GO
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE140145', 0, N'', CAST(N'2022-11-10T02:28:03.050' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE140739', 0, N'', CAST(N'2022-11-10T02:28:03.050' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE141088', 0, N'', CAST(N'2022-11-10T02:28:03.050' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE141428', 0, N'', CAST(N'2022-11-10T02:28:03.050' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE141476', 0, N'', CAST(N'2022-11-10T02:28:03.053' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE141499', 0, N'', CAST(N'2022-11-10T02:28:03.053' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE141560', 0, N'', CAST(N'2022-11-10T02:28:03.053' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE150798', 0, N'', CAST(N'2022-11-10T02:28:03.060' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE151023', 0, N'', CAST(N'2022-11-10T02:28:03.060' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE151027', 0, N'', CAST(N'2022-11-10T02:28:03.060' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE151169', 0, N'', CAST(N'2022-11-10T02:28:03.063' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE153274', 0, N'', CAST(N'2022-11-10T02:28:03.063' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE153575', 0, N'', CAST(N'2022-11-10T02:28:03.063' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE153594', 0, N'', CAST(N'2022-11-10T02:28:03.063' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE153605', 0, N'', CAST(N'2022-11-10T02:28:03.067' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE153694', 0, N'', CAST(N'2022-11-10T02:28:03.067' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE160023', 0, N'', CAST(N'2022-11-10T02:28:03.067' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE160107', 0, N'', CAST(N'2022-11-10T02:28:03.067' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE160117', 0, N'', CAST(N'2022-11-10T02:28:03.067' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE160133', 0, N'', CAST(N'2022-11-10T02:28:03.067' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE160200', 0, N'', CAST(N'2022-11-10T02:28:03.070' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE160537', 0, N'', CAST(N'2022-11-10T02:28:03.070' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE160717', 0, N'', CAST(N'2022-11-10T02:28:03.070' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE161160', 0, N'', CAST(N'2022-11-10T02:28:03.080' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE161701', 0, N'', CAST(N'2022-11-10T02:28:03.080' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE161767', 0, N'', CAST(N'2022-11-10T02:28:03.080' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE162003', 0, N'', CAST(N'2022-11-10T02:28:03.083' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE163208', 0, N'', CAST(N'2022-11-10T02:28:03.083' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'HE163444', 0, N'', CAST(N'2022-11-10T02:28:03.087' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'SE06160', 0, N'', CAST(N'2022-11-10T02:28:03.087' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE140145', 0, N'', CAST(N'2022-11-10T02:29:08.910' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE140739', 0, N'', CAST(N'2022-11-10T02:29:08.910' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE141088', 0, N'', CAST(N'2022-11-10T02:29:08.913' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE141428', 1, N'', CAST(N'2022-11-10T02:29:08.913' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE141476', 1, N'', CAST(N'2022-11-10T02:29:08.913' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE141499', 0, N'', CAST(N'2022-11-10T02:29:08.913' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE141560', 0, N'', CAST(N'2022-11-10T02:29:08.913' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE150798', 0, N'', CAST(N'2022-11-10T02:29:08.913' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE151023', 0, N'', CAST(N'2022-11-10T02:29:08.913' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE151027', 0, N'', CAST(N'2022-11-10T02:29:08.917' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE151169', 0, N'', CAST(N'2022-11-10T02:29:08.917' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE153274', 0, N'', CAST(N'2022-11-10T02:29:08.917' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE153575', 0, N'', CAST(N'2022-11-10T02:29:08.917' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE153594', 0, N'', CAST(N'2022-11-10T02:29:08.917' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE153605', 0, N'', CAST(N'2022-11-10T02:29:08.917' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE153694', 0, N'', CAST(N'2022-11-10T02:29:08.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE160023', 0, N'', CAST(N'2022-11-10T02:29:08.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE160107', 1, N'', CAST(N'2022-11-10T02:29:08.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE160117', 1, N'', CAST(N'2022-11-10T02:29:08.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE160133', 1, N'', CAST(N'2022-11-10T02:29:08.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE160200', 1, N'', CAST(N'2022-11-10T02:29:08.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE160537', 0, N'', CAST(N'2022-11-10T02:29:08.920' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE160717', 0, N'', CAST(N'2022-11-10T02:29:08.923' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE161160', 0, N'', CAST(N'2022-11-10T02:29:08.923' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE161701', 0, N'', CAST(N'2022-11-10T02:29:08.923' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE161767', 0, N'', CAST(N'2022-11-10T02:29:08.927' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE162003', 0, N'', CAST(N'2022-11-10T02:29:08.927' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE163208', 0, N'', CAST(N'2022-11-10T02:29:08.927' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'HE163444', 0, N'', CAST(N'2022-11-10T02:29:08.927' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, N'SE06160', 0, N'', CAST(N'2022-11-10T02:29:08.930' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE140145', 1, N'', CAST(N'2022-11-10T02:52:08.390' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE140739', 1, N'', CAST(N'2022-11-10T02:52:08.390' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE141088', 1, N'', CAST(N'2022-11-10T02:52:08.390' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE141428', 1, N'', CAST(N'2022-11-10T02:52:08.393' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE141476', 1, N'', CAST(N'2022-11-10T02:52:08.393' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE141499', 0, N'', CAST(N'2022-11-10T02:52:08.393' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE141560', 0, N'', CAST(N'2022-11-10T02:52:08.393' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE150798', 1, N'', CAST(N'2022-11-10T02:52:08.393' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE151023', 0, N'', CAST(N'2022-11-10T02:52:08.397' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE151027', 0, N'', CAST(N'2022-11-10T02:52:08.397' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE151169', 0, N'', CAST(N'2022-11-10T02:52:08.397' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE153274', 0, N'', CAST(N'2022-11-10T02:52:08.397' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE153575', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE153594', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE153605', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE153694', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE160023', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE160107', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE160117', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE160133', 1, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE160200', 1, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE160537', 1, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE160717', 1, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE161160', 1, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE161701', 1, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE161767', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE162003', 0, N'', CAST(N'2022-11-10T02:52:08.400' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE163208', 0, N'', CAST(N'2022-11-10T02:52:08.403' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'HE163444', 0, N'', CAST(N'2022-11-10T02:52:08.403' AS DateTime))
INSERT [dbo].[Attandance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, N'SE06160', 0, N'', CAST(N'2022-11-10T02:52:08.403' AS DateTime))
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'IOT1601', N'PRJ301', N'sonnt5', N'Fall', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'SE1633', N'JPD123', N'keiichiro', N'Fall', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'IOT1601', N'CSD201', N'sonhx', N'Summer', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'SE1633', N'MAS291', N'thulx', N'Spring', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (5, N'IOT1601', N'SWE201c', N'trungnt', N'Summer', 2022)
GO
INSERT [dbo].[Lecturer] ([lid], [lname], [lgmail]) VALUES (N'hongdt30', N'Dương Thị Hồng', N'hongdt30@fpt.edu.vn')
INSERT [dbo].[Lecturer] ([lid], [lname], [lgmail]) VALUES (N'keiichiro', N'Someya Keiichiro', N'Keiichiro@fe.edu.vn')
INSERT [dbo].[Lecturer] ([lid], [lname], [lgmail]) VALUES (N'sonhx', N'Hoàng Xuân Sơn', N'SonHX@fe.edu.vn')
INSERT [dbo].[Lecturer] ([lid], [lname], [lgmail]) VALUES (N'sonnt5', N'Ngô Tùng Sơn', N'sonnt69@fe.edu.vn')
INSERT [dbo].[Lecturer] ([lid], [lname], [lgmail]) VALUES (N'thulx', N'Lại Xuân Thu', N'ThuLX@fe.edu.vn')
INSERT [dbo].[Lecturer] ([lid], [lname], [lgmail]) VALUES (N'trungnt', N'Nguyễn Tất Trung', N'TrungNT77@fe.edu.vn')
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'DE-416')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'DE-203')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'DE-204')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'AL-R202')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (1, 1, 1, CAST(N'2022-09-06' AS Date), 3, N'sonnt5', 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (2, 1, 1, CAST(N'2022-09-08' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (3, 1, 1, CAST(N'2022-09-08' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (4, 1, 1, CAST(N'2022-09-13' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (5, 1, 1, CAST(N'2022-09-15' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (6, 1, 1, CAST(N'2022-09-15' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (7, 1, 1, CAST(N'2022-09-20' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (8, 1, 1, CAST(N'2022-09-22' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (9, 1, 1, CAST(N'2022-09-22' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (10, 1, 1, CAST(N'2022-09-27' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (11, 1, 1, CAST(N'2022-09-29' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (12, 1, 1, CAST(N'2022-09-29' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (13, 1, 1, CAST(N'2022-10-04' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (14, 1, 1, CAST(N'2022-10-06' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (15, 1, 1, CAST(N'2022-10-06' AS Date), 3, N'sonnt5', 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (16, 1, 1, CAST(N'2022-10-11' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (17, 1, 1, CAST(N'2022-10-13' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (18, 1, 1, CAST(N'2022-10-13' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (19, 1, 1, CAST(N'2022-10-18' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (20, 1, 1, CAST(N'2022-10-20' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (21, 1, 1, CAST(N'2022-10-20' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (22, 1, 1, CAST(N'2022-10-25' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (23, 1, 1, CAST(N'2022-10-27' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (24, 1, 1, CAST(N'2022-10-27' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (25, 1, 1, CAST(N'2022-11-01' AS Date), 3, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (26, 1, 1, CAST(N'2022-11-03' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (27, 1, 1, CAST(N'2022-11-03' AS Date), 3, N'sonnt5', 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (28, 1, 1, CAST(N'2022-11-08' AS Date), 3, N'sonnt5', 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (29, 1, 1, CAST(N'2022-11-10' AS Date), 2, N'sonnt5', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (30, 2, 2, CAST(N'2022-09-05' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (31, 2, 2, CAST(N'2022-09-07' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (32, 2, 2, CAST(N'2022-09-09' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (33, 2, 2, CAST(N'2022-09-12' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (34, 2, 2, CAST(N'2022-09-14' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (35, 2, 2, CAST(N'2022-09-16' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (36, 2, 2, CAST(N'2022-09-19' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (37, 2, 2, CAST(N'2022-09-21' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (38, 2, 2, CAST(N'2022-09-23' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (39, 2, 2, CAST(N'2022-09-26' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (40, 2, 2, CAST(N'2022-09-28' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (41, 2, 2, CAST(N'2022-09-30' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (42, 2, 2, CAST(N'2022-10-03' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (43, 2, 2, CAST(N'2022-10-05' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (44, 2, 2, CAST(N'2022-10-07' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (45, 2, 2, CAST(N'2022-10-10' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (46, 2, 2, CAST(N'2022-10-12' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (47, 2, 2, CAST(N'2022-10-14' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (48, 2, 2, CAST(N'2022-10-17' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (49, 2, 2, CAST(N'2022-10-19' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (50, 2, 2, CAST(N'2022-10-21' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (51, 2, 2, CAST(N'2022-10-24' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (52, 2, 2, CAST(N'2022-10-26' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (53, 2, 2, CAST(N'2022-10-28' AS Date), 4, N'keiichiro', 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (54, 2, 2, CAST(N'2022-10-31' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (55, 2, 2, CAST(N'2022-11-02' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (56, 2, 2, CAST(N'2022-11-04' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (57, 2, 2, CAST(N'2022-11-07' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (58, 2, 2, CAST(N'2022-11-09' AS Date), 4, N'keiichiro', 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [lid], [attanded]) VALUES (59, 2, 2, CAST(N'2022-11-11' AS Date), 4, N'keiichiro', 0)
GO
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE140145', N'TungPHHE140145', N'Phan', N'Hoàng', N'Tùng', N'Phan Hoàng Tùng', N'TungPHHE140145@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE140739', N'TuanNMHE140739', N'Nguyễn', N'Minh', N'Tuấn', N'Nguyễn Minh Tuấn', N'TuanNMHE140739@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE141088', N'HoangNMHE141088', N'Nguyễn', N'Minh', N'Hoàng', N'Nguyễn Minh Hoàng', N'HoangNMHE141088@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE141428', N'MinhNPBHE141428', N'Nguyễn', N'Phạm Bình', N'Minh', N'Nguyễn Phạm Bình Minh', N'MinhNPBHE141428@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE141476', N'ThaiNTHE141476', N'Nguyễn', N'Thế', N'Thái', N'Nguyễn Thế Thái', N'ThaiNTHE141476@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE141499', N'NamNHHE141499', N'Nguyễn', N'Hữu', N'Nam', N'Nguyễn Hữu Nam', N'NamNHHE141499@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE141560', N'KietHTHE141560', N'Hoàng', N'Tuấn', N'Kiệt', N'Hoàng Tuấn Kiệt', N'KietHTHE141560@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE150798', N'VuCQHE150798', N'Chu', N'Quang', N'Vũ', N'Chu Quang Vũ', N'VuCQHE150798@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE151023', N'ToanVDHE151023', N'Vũ', N'Đức', N'Toàn', N'Vũ Đức Toàn', N'ToanVDHE151023@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE151027', N'TuanTVHE151027', N'Trần', N'Văn', N'Tuấn', N'Trần Văn Tuấn', N'TuanTVHE151027@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE151169', N'ThinhNHHE151169', N'Nguyễn', N'Hưng', N'Thịnh', N'Nguyễn Hưng Thịnh', N'ThinhNHHE151169@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE153274', N'ChienNMHE153274', N'Nguyễn', N'Minh', N'Chiến', N'Nguyễn Minh Chiến', N'ChienNMHE153274@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE153575', N'TrungDQHE153575', N'Đường', N'Quang', N'Trung', N'Đường Quang Trung', N'TrungDQHE153575@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE153594', N'VietNQHE153594', N'Nguyễn', N'Quốc', N'Việt', N'Nguyễn Quốc Việt', N'VietNQHE153594@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE153605', N'HungPVHE153605', N'Phạm', N'Văn', N'Hưng', N'Phạm Văn Hưng', N'HungPVHE153605@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE153694', N'AnhTHHE153694', N'Trịnh', N'Hoàng', N'Anh', N'Trịnh Hoàng Anh', N'AnhTHHE153694@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE160023', N'QuanVMHE160023', N'Vũ', N'Minh', N'Quân', N'Vũ Minh Quân', N'QuanVMHE160023@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE160107', N'HoanNBHE160107', N'Nguyễn', N'Bá', N'Hoàn', N'Nguyễn Bá Hoàn', N'HoanNBHE160107@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE160117', N'DungLTHE160117', N'Lê', N'Trung', N'Dũng', N'Lê Trung Dũng', N'DungLTHE160117@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE160133', N'DuyNAHE160133', N'Ngô', N'Anh', N'Duy', N'Ngô Anh Duy', N'DuyNAHE160133@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE160200', N'MinhTHHE160200', N'Trần', N'Hiểu', N'Minh', N'Trần Hiểu Minh', N'MinhTHHE160200@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE160537', N'BinhPHHE160537', N'Phạm', N'Hải', N'Bình', N'Phạm Hải Bình', N'BinhPHHE160537@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE160717', N'VuongDVHE160717', N'Đoàn', N'Việt', N'Vương', N'Đoàn Việt Vương', N'VuongDVHE160717@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE161160', N'ThinhKCHE161160', N'Kiều', N'Công', N'Thịnh', N'Kiều Công Thịnh', N'ThinhKCHE161160@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE161699', N'HungTQHE161699', N'Trần', N'Quốc', N'Hưng', N'Trần Quốc Hưng', N'HungTQHE161699@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE161701', N'DatDTHE161701', N'Đoàn', N'Tiến', N'Đạt', N'Đoàn Tiến Đạt', N'DatDTHE161701@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE161767', N'HuyTQHE161767', N'Trần', N'Quang', N'Huy', N'Trần Quang Huy', N'HuyTQHE161767@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE161888', N'SonKAHE161888', N'Kiều', N'Anh', N'Sơn', N'Kiều Anh Sơn', N'SonKAHE161888@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE162003', N'LamPTHE162003', N'Phạm', N'Thanh', N'Lâm', N'Phạm Thanh Lâm', N'LamPTHE162003@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE162004', N'SonNHHE162004', N'Nguyễn', N'Hồng', N'Sơn', N'Nguyễn Hồng Sơn', N'SonNHHE162004@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE163208', N'DucVNHE163208', N'Vũ', N'Ngọc', N'Đức', N'Vũ Ngọc Đức', N'DucVNHE163208@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE163444', N'DucDHHE163444', N'Dương', N'Hải', N'Đức', N'Dương Hải Đức', N'DucDHHE163444@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'HE164016', N'NguyenPDTHE164016', N'Phạm', N'Danh Trung', N'Nguyên', N'Phạm Danh Trung Nguyên', N'NguyenPDTHE164016@fpt.edu.vn')
INSERT [dbo].[Student] ([stdid], [stdcode], [stdfirstname], [stdmidname], [stdlastname], [stdfullname], [stdgmail]) VALUES (N'SE06160', N'VuLLSE06160', N'Lương', N'Long', N'Vũ', N'Lương Long Vũ', N'VuLLSE06160@fpt.edu.vn')
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE140145', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE140145', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE140739', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE140739', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141088', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141088', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141428', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141428', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141476', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141476', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141499', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141499', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141560', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE141560', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE150798', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE150798', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE151023', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE151023', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE151027', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE151027', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE151169', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE151169', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153274', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153274', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153575', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153575', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153594', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153594', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153605', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153605', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153694', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE153694', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160023', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160023', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160107', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160107', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160117', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160117', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160133', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160133', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160200', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160200', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160537', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160537', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160717', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE160717', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161160', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161160', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161699', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161701', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161701', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161767', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161767', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE161888', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE162003', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE162004', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE163208', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE163444', 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'HE164016', 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'SE06160', 1)
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'CSD201', N'Data Structures and Algorithms')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'DBI202', N'Introduction to Databases')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'IOT102', N'Internet of Things')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'JPD113', N'Elementary Japanese 1-A1.1')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'JPD123', N'Elementary Japanese 1-A1.2')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'LAB211', N'OOP with Java Lab')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'MAS291', N'Statistics and Probability')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'PRO192', N'Object-Oriented Programming')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'SWE201c', N'Introduction to Software Engineering')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (N'WED201c', N'Web Design')
GO
INSERT [dbo].[Time_Slot] ([tid], [tdescription]) VALUES (1, N'7:30-9:00')
INSERT [dbo].[Time_Slot] ([tid], [tdescription]) VALUES (2, N'9:10-10:40')
INSERT [dbo].[Time_Slot] ([tid], [tdescription]) VALUES (3, N'10:50-12:20')
INSERT [dbo].[Time_Slot] ([tid], [tdescription]) VALUES (4, N'12:50-14:20')
INSERT [dbo].[Time_Slot] ([tid], [tdescription]) VALUES (5, N'14:30-16:00')
INSERT [dbo].[Time_Slot] ([tid], [tdescription]) VALUES (6, N'16:10-17:40')
INSERT [dbo].[Time_Slot] ([tid], [tdescription]) VALUES (7, N'17:50-19:20')
INSERT [dbo].[Time_Slot] ([tid], [tdescription]) VALUES (8, N'19:30-21:00')
GO
ALTER TABLE [dbo].[Attandance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attandance] CHECK CONSTRAINT [FK_Attandance_Session]
GO
ALTER TABLE [dbo].[Attandance]  WITH CHECK ADD  CONSTRAINT [FK_Attandance_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attandance] CHECK CONSTRAINT [FK_Attandance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([usename])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Time_Slot] FOREIGN KEY([tid])
REFERENCES [dbo].[Time_Slot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Time_Slot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Studen_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Studen_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Studen_Group_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Studen_Group_Student]
GO
USE [master]
GO
ALTER DATABASE [ASM-PRJ301-IOT1601-583] SET  READ_WRITE 
GO
