USE [master]
GO
/****** Object:  Database [CommunityMedicine_DB]    Script Date: 7/3/2015 11:32:28 AM ******/
CREATE DATABASE [CommunityMedicine_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CommunityMedicine_DB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CommunityMedicine_DB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CommunityMedicine_DB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CommunityMedicine_DB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CommunityMedicine_DB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CommunityMedicine_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CommunityMedicine_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CommunityMedicine_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CommunityMedicine_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CommunityMedicine_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CommunityMedicine_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CommunityMedicine_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CommunityMedicine_DB] SET  MULTI_USER 
GO
ALTER DATABASE [CommunityMedicine_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CommunityMedicine_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CommunityMedicine_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CommunityMedicine_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CommunityMedicine_DB]
GO
/****** Object:  Table [dbo].[Center_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Center_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Code] [varchar](500) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[ThanaID] [int] NOT NULL,
 CONSTRAINT [PK_Center_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Disease_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Disease_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Description] [varchar](5000) NOT NULL,
	[Treatment] [varchar](5000) NOT NULL,
 CONSTRAINT [PK_Disease_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Population] [int] NULL,
 CONSTRAINT [PK_District_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Degree] [varchar](500) NOT NULL,
	[Specialization] [varchar](500) NOT NULL,
	[CenterID] [int] NOT NULL,
 CONSTRAINT [PK_Doctor_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MedicineList_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MedicineList_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicineNameWithML] [varchar](500) NOT NULL,
 CONSTRAINT [PK_MedicineList_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prescription_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prescription_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicineID] [int] NOT NULL,
	[DiseaseID] [int] NOT NULL,
	[Dose] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[MealTime] [varchar](50) NOT NULL,
	[Note] [varchar](50) NOT NULL,
	[TreatmentID] [int] NOT NULL,
 CONSTRAINT [PK_Prescription_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quantity_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quantity_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CenterID] [int] NOT NULL,
	[MedicineID] [int] NOT NULL,
 CONSTRAINT [PK_Quantity_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thana_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thana_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DistrictID] [int] NOT NULL,
 CONSTRAINT [PK_Thana_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CenterID] [int] NOT NULL,
	[voterID] [varchar](50) NOT NULL,
	[DoctorID] [int] NOT NULL,
	[TreatmentDate] [date] NOT NULL,
	[Observation] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Treatment_tbl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Center_tbl] ON 

INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (1, N'Donia', N'Donia-05-01', N'lEXhLbBFXplNwt5Ejf2FoILw/9/Ex7jqKa8By7TWYsk=', 5)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (2, N'Jalkuri', N'Jalkuri-038-07', N'4HNTRx3HMIn1+jjQ8I+qx4RnrWeJvvVen9vsQ3XHbMM=', 38)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (3, N'Baligao', N'Baligao-035-06', N'Dmj8zCKZ22AbuHprnlpt2rs4de+4XrWrakI51b9zXds=', 35)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (4, N'Nobabpur', N'Nobabpur-06-01', N'gs6Ojf/IQlFdRiRcAl0PmuUOReB0p/RPrwebfFMoMdY=', 6)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (5, N'Katherpul', N'Katherpul-05-01', N'ewqMPbMpKrbprVKMMJ/ImNeS9gT3NuRUjYjtlTvoSHk=', 5)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (6, N'Chasara', N'Chasara-036-07', N'NIOUhr3d8VeG7eoSTy6IK5EgoAzzlHgT6C7fzNKMQWA=', 36)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (7, N'Misir-Ali-College', N'Misir-Ali-College-040-07', N'CWL82QCPdTiNbzjnHPJuAFzbWUpi2mvmVQV+AjKbnU0=', 40)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (8, N'Sadar', N'Sadar-010-02', N'5Gkcr3TY/DWVt0ZwIlewSPRN8Oo9+9MI/IWBjGhvAIs=', 10)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (9, N'Kutubkhali', N'Kutubkhali-05-01', N'XmK6ehTcW67P6/PBMeWkojsEzZJrb/zE2y8o4zw2R7s=', 5)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (10, N'Mohammadpur', N'Mohammadpur-01-01', N'QP8oyYOj7HzVdwPYsCzqvvzE4nAHRDvEneuxgcyIR8w=', 1)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (11, N'Sutrapur', N'Sutrapur-06-01', N'LpcSv8wTIvy5HK5+qGlGqj1vDtD7gPNGf/yXyPewMUo=', 6)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (12, N'Keraniganj-High-School', N'Keraniganj-High-School-094-01', N'h2WcrbnF1nrh9+6xELXwfzJPzL9SEgg+PykJpNz3TBg=', 94)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (13, N'Turag-Par', N'Turag-Par-018-03', N'EXSqdjuDUVS6xaNlqD7pjTzOgjh9f9BLkZ1Om1CJnPw=', 18)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (14, N'Rupganj K P High School', N'Rupganj K P High School-037-07', N'qV4PiZkKVVxEiHgpnDw90Au4CgA8QQzEQUsUCvplvD8=', 37)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (15, N'A K School', N'A K School-05-01', N'p8nrvbbnvIIUmxqKt0+gqr3+SDfIPBngQTxuKmpgGZI=', 5)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (16, N'Bhanga South-East', N'Bhanga South-East-09-02', N'scbBRjj63g/CE/X39qQ46eaAbL1MUpd8IBuU1cxUNRA=', 9)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (17, N'Bhanga East', N'Bhanga East-09-02', N'fumjuzPMWnnCpemnMH7Xu9NtbfsOpwdB4Iq3wwStbRQ=', 9)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (18, N'Sadar High School', N'Sadar High School-010-02', N'i82A1swAaCr6LSrA3e2YCS+H87zybvRRE9xXJ0j7APM=', 10)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (19, N'Boalmari South', N'Boalmari South-012-02', N'SqyBise1FzQ87dGteEl1923Q/jpiD61ZhgNtV5N4mTc=', 12)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (20, N'East Alfadanga', N'East Alfadanga-097-02', N'hnL/ZZRpVUXjGIMAM2yCNYAl4ggdSOODeKBm+CTTczs=', 97)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (21, N'West Alfadanga', N'West Alfadanga-097-02', N'E31T+DF+MhDSedfsZFABygwtFfuSKCvfYklQTGMkiUQ=', 97)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (22, N'Nuhashpolli', N'Nuhashpolli-015-03', N'b9FYbTYoXwQbRdv5JrsWhKrKwT8/OdFcOfMDe4g1lNM=', 15)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (23, N'East Gazipur', N'East Gazipur-015-03', N'dzD8CJwUAbyF/RHUqm0Hv9f5dbtflh0umo/RVmRM5/o=', 15)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (24, N'Kapasia Moddhopara', N'Kapasia Moddhopara-017-03', N'dDEhbJ7KF94x8kMicXlHBbFC9LoTBmIrwJAb1IccHks=', 17)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (25, N'Puran Tungipara ', N'Puran Tungipara -024-04', N'yx8b27qtNIS11tol4hdPCchH+iso0fEZsyya+FxKnxc=', 24)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (26, N'Kotali', N'Kotali-023-04', N'5lavvstZpBCK8f9dXPfUnw5f8f6b2/Nqq013ypJbKVE=', 23)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (27, N'Islampur High School', N'Islampur High School-028-05', N'1OjUKUMCa4L1xAtiLa3myTemJCtHllvdBQtgs1ayy78=', 28)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (28, N'Araihazar Bazar', N'Araihazar Bazar-047-07', N'hDkhnzwt1BTHhpqLBQqr9prkd/ufZSog2i53BdGsbP8=', 47)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (29, N'MizMizi', N'MizMizi-038-07', N'81Kx4bKt5nIUTM4FyuB8pLI57aqsr1IwMkFMmuqd2dY=', 38)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (30, N'Nitaiganj', N'Nitaiganj-048-07', N'gEyBD4jvQyaCMyhJ2CYwOQDHNRZ+fIltWZqwYOxB5fc=', 48)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (31, N'Bank-Colony', N'Bank-Colony-05-01', N'o+y4/bienpiKAYGZSQ0CLAKAeMgHHtlwxFMjhTBmkXk=', 5)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (32, N'savar', N'savar-095-01', N'Z5UeSIsAeQbHrOFMUEJRI40kjBeyQ/7goRIWP1wKi9A=', 95)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (33, N'Dohar', N'Dohar-08-01', N't/u4YQcY9cGZcAyYkHGBv5wOIxGYLtxWuvZU8UwL25E=', 8)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (34, N'ASDD', N'ASDD-01-01', N'mrsbNT6gvfEeUdeq8p1a1Ktd1AiR4xzCe8E0cCsrljQ=', 1)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (35, N'Lakhmibazar', N'Lakhmibazar-06-01', N'/qkDO7dCbKID8osAuSmNhImAGk37WhL3uAaXYaS8EWg=', 6)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (36, N'Chasara', N'Chasara-04-01', N'QyWCmlPgP0crexgZ0a1uPbRs/wZZh3x1dCRM48m0H60=', 4)
INSERT [dbo].[Center_tbl] ([ID], [Name], [Code], [Password], [ThanaID]) VALUES (37, N'Nitaipur', N'Nitaipur-037-07', N'64KahfcG89XiD6A0xE8zLc59Zb2duB4ZIEDJxESTV20=', 37)
SET IDENTITY_INSERT [dbo].[Center_tbl] OFF
SET IDENTITY_INSERT [dbo].[Disease_tbl] ON 

INSERT [dbo].[Disease_tbl] ([ID], [Name], [Description], [Treatment]) VALUES (1, N'Diarrhoea', N'Decreases level of water in body', N'saline,Flagyl')
INSERT [dbo].[Disease_tbl] ([ID], [Name], [Description], [Treatment]) VALUES (2, N'Diabetes', N'High blood sugar ', N'oramate,insuline')
INSERT [dbo].[Disease_tbl] ([ID], [Name], [Description], [Treatment]) VALUES (3, N'Dengu', N'Sudden, high fever
Severe headaches
Pain behind the eyes', N'There is no specific medicine to treat dengue infection. If you think you may have dengue fever, you should use pain relievers with acetaminophen and avoid medicines with aspirin, which could worsen bleeding. ')
INSERT [dbo].[Disease_tbl] ([ID], [Name], [Description], [Treatment]) VALUES (4, N'Fever', N'High Temperature', N'Paracitamol')
INSERT [dbo].[Disease_tbl] ([ID], [Name], [Description], [Treatment]) VALUES (5, N'Malaria', N'High fever (up to 105 degrees Fahrenheit) with shaking chills
Profuse sweating when the fever suddenly drops
Fatigue', N'Chloroquine
Quinine
Hydroxychloroquine (Plaquenil)')
INSERT [dbo].[Disease_tbl] ([ID], [Name], [Description], [Treatment]) VALUES (6, N'Cholera', N'Rapid heart rate
Loss of skin elasticity (the ability to return to original position quickly if pinched)
Dry mucous membranes, including the inside of the mouth, throat, nose, and eyelids
Low blood pressure
Thirst
Muscle cramps', N'Drinking
Preparing food or drinks
Making ice
Brushing your teeth
Washing your face and hands
Washing dishes and utensils that you use to eat or prepare food
Washing fruits and vegetables')
INSERT [dbo].[Disease_tbl] ([ID], [Name], [Description], [Treatment]) VALUES (7, N'Remotive Fever ', N'sore throat or sore throat with tender and swollen lymph nodes
rash
trouble swallowing
thick, bloody discharge from nose', N'Antibiotics, Anticonvulsant Medications')
INSERT [dbo].[Disease_tbl] ([ID], [Name], [Description], [Treatment]) VALUES (8, N'Acupuncture', N'he practice of acupuncture to treat identifiable pathophysiological (disease) conditions in American medicine was rare until the visit of President Richard M. Nixon to China in 1972. Since that time, there has been an explosion of interest in the United States and Europe in the application of the technique of acupuncture to Western medicine.', N'fter reviewing the existing body of knowledge, the U.S. Food and Drug Administration (FDA) removed acupuncture needles from the category of "experimental medical devices."')
SET IDENTITY_INSERT [dbo].[Disease_tbl] OFF
SET IDENTITY_INSERT [dbo].[District_tbl] ON 

INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (1, N'Dhaka', 12043977)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (2, N'Faridpur', 1912969)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (3, N'Gazipur', 3403912)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (4, N'Gopalgonj', 1172415)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (5, N'Jamalpur', 2292674)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (6, N'Munshiganj', 1445660)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (7, N'Narayanganj', 2948217)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (8, N'Narsingdi', 2224944)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (9, N'Tangail', 3605083)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (10, N'Rajbari', 1049778)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (11, N'Netrakona', 2229642)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (12, N'Sherpur', 1358325)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (13, N'Mymensingh', 5110272)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (14, N'Manikgonj', 1392867)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (15, N'Madaripur', 1165952)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (16, N'Shariatpur', 1155824)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (17, N'Kishoreganj', 2911907)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (18, N'Meherpur', 655392)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (19, N'Jhenaidah', 1771304)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (20, N'Satkhira', 1985959)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (21, N'Narail', 721668)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (22, N'Magura', 918419)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (23, N'Kushtia', 1946838)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (24, N'Khulna', 2318527)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (25, N'Jessore', 2764547)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (26, N'Chuadanga', 1129015)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (27, N'Bagerhat', 1476090)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (28, N'Bandarban', 388335)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (29, N'Feni', 1437371)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (30, N'Cox-bazar', 2289990)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (31, N'Chittagong', 7616352)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (32, N'Comilla', 5387288)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (33, N'Rangamati', 595979)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (34, N'Chandpur', 2416018)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (35, N'Khagrachari', 613917)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (36, N'Lakshmipur', 1729188)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (37, N'Noakhali', 3108083)
INSERT [dbo].[District_tbl] ([ID], [Name], [Population]) VALUES (38, N'Brahmanbaria', NULL)
SET IDENTITY_INSERT [dbo].[District_tbl] OFF
SET IDENTITY_INSERT [dbo].[Doctor_tbl] ON 

INSERT [dbo].[Doctor_tbl] ([ID], [Name], [Degree], [Specialization], [CenterID]) VALUES (1, N'Khaled', N'MBBS', N'Child Specialist', 31)
INSERT [dbo].[Doctor_tbl] ([ID], [Name], [Degree], [Specialization], [CenterID]) VALUES (2, N'Dr. Khaled', N'MBBS, FCPS', N'Skin', 35)
INSERT [dbo].[Doctor_tbl] ([ID], [Name], [Degree], [Specialization], [CenterID]) VALUES (3, N'Dr. Raju Ahmed', N'MBBS , FCPS', N'Child Specialist', 35)
INSERT [dbo].[Doctor_tbl] ([ID], [Name], [Degree], [Specialization], [CenterID]) VALUES (4, N'Dr. Raju Ahmed', N'MBBS, FCPS', N'Skin', 36)
INSERT [dbo].[Doctor_tbl] ([ID], [Name], [Degree], [Specialization], [CenterID]) VALUES (5, N'Dr Moinuddin Ahmed', N'MBBS', N'Child Specialist', 36)
INSERT [dbo].[Doctor_tbl] ([ID], [Name], [Degree], [Specialization], [CenterID]) VALUES (6, N'Dr. Taher Ahmed', N'FCPS', N'Skin', 36)
INSERT [dbo].[Doctor_tbl] ([ID], [Name], [Degree], [Specialization], [CenterID]) VALUES (7, N'Dr. Kasem', N'FCPS', N'Child Specialist', 37)
INSERT [dbo].[Doctor_tbl] ([ID], [Name], [Degree], [Specialization], [CenterID]) VALUES (8, N'Dr Moinuddin Ahmed', N'FCPS', N'Eye', 37)
SET IDENTITY_INSERT [dbo].[Doctor_tbl] OFF
SET IDENTITY_INSERT [dbo].[MedicineList_tbl] ON 

INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (3, N'Ace plus 500mg')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (11, N'Alatrol 10mg')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (8, N'Alatrol 150ml')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (12, N'Benadryl 25mg')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (6, N'Dexpotin 250ml')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (9, N'Imotil 5mg')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (5, N'Losectil 250mg')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (1, N'Napa 500mg')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (4, N'Orament')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (10, N'Orsaline-M')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (2, N'Parapyrol 500mg')
INSERT [dbo].[MedicineList_tbl] ([ID], [MedicineNameWithML]) VALUES (7, N'Relaxin 100mg')
SET IDENTITY_INSERT [dbo].[MedicineList_tbl] OFF
SET IDENTITY_INSERT [dbo].[Prescription_tbl] ON 

INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (5, 3, 1, N'10', 10, N'After Meal', N'Take rest', 3)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (6, 11, 1, N'10', 5, N'Before Meal', N'Take rest', 3)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (7, 3, 1, N'10', 10, N'After Meal', N'Take rest', 4)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (8, 11, 1, N'10', 5, N'Before Meal', N'Take rest', 4)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (9, 3, 1, N'10', 10, N'After Meal', N'Take rest', 5)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (10, 11, 1, N'10', 5, N'Before Meal', N'Take rest', 5)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (11, 12, 2, N'1+1+1', 5, N'After Meal', N'Take rest', 6)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (12, 6, 2, N'1+1+1', 5, N'Before Meal', N'Take rest', 6)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (13, 3, 3, N'1+1+1', 10, N'After Meal', N'Take rest', 7)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (14, 3, 4, N'1+1+1', 5, N'After Meal', N'Take rest', 7)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (15, 3, 3, N'1+1+1', 30, N'After Meal', N'Take rest', 8)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (16, 11, 4, N'1+1+1', 10, N'After Meal', N'Take rest', 8)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (17, 3, 4, N'1+1+1', 10, N'After Meal', N'Take rest', 8)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (18, 6, 7, N'5', 10, N'After Meal', N'Sleep', 9)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (19, 12, 7, N'5', 10, N'Before Meal', N'Sleep', 9)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (20, 3, 2, N'11', 5, N'After Meal', N'Take rest', 10)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (21, 11, 2, N'11', 5, N'Before Meal', N'Take rest', 10)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (22, 3, 1, N'5', 5, N'After Meal', N'Take rest', 11)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (23, 3, 8, N'5', 5, N'After Meal', N'Take rest', 12)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (24, 12, 6, N'1+1+1', 10, N'Before Meal', N'Take rest', 13)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (25, 2, 6, N'1+1+1', 10, N'Before Meal', N'Take rest', 13)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (26, 3, 5, N'1+1+1', 10, N'Before Meal', N'Take rest', 13)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (27, 3, 6, N'11', 10, N'After Meal', N'Take rest', 14)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (28, 3, 5, N'11', 10, N'Before Meal', N'Take rest', 14)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (29, 3, 7, N'11', 10, N'Before Meal', N'Take rest', 14)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (30, 3, 8, N'11', 10, N'After Meal', N'Take rest', 14)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (31, 3, 7, N'10', 10, N'After Meal', N'Sleep', 15)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (32, 3, 6, N'10', 10, N'After Meal', N'Sleep', 15)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (33, 3, 8, N'10', 10, N'After Meal', N'Sleep', 15)
INSERT [dbo].[Prescription_tbl] ([ID], [MedicineID], [DiseaseID], [Dose], [Quantity], [MealTime], [Note], [TreatmentID]) VALUES (34, 3, 3, N'10', 10, N'After Meal', N'Sleep', 15)
SET IDENTITY_INSERT [dbo].[Prescription_tbl] OFF
SET IDENTITY_INSERT [dbo].[Quantity_tbl] ON 

INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (1, 122, 10, 9)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (2, 245, 10, 1)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (3, 550, 10, 2)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (4, 550, 10, 7)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (5, 10, 10, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (6, 175, 10, 8)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (7, 1000, 10, 2)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (8, 1000, 16, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (9, 500, 16, 11)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (10, 1500, 16, 10)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (15, 5000, 31, 11)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (16, 500, 31, 9)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (17, 5000, 31, 7)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (18, 1000, 31, 10)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (19, 200, 31, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (20, 500, 11, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (21, 5000, 11, 12)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (22, 100, 7, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (23, 1000, 7, 12)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (24, 200, 7, 5)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (25, 5000, 8, 9)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (26, 500, 8, 10)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (27, 5000, 8, 11)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (28, 100, 10, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (29, 350, 35, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (30, 160, 35, 11)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (32, 385, 35, 12)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (33, 2485, 35, 6)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (34, 130, 10, 11)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (35, 1990, 36, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (36, 1000, 36, 8)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (37, 990, 36, 12)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (38, 1000, 36, 5)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (39, 1990, 36, 2)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (40, 60, 37, 3)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (41, 100, 37, 11)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (42, 100, 37, 6)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (43, 100, 37, 9)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (44, 100, 37, 1)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (45, 100, 37, 4)
INSERT [dbo].[Quantity_tbl] ([ID], [Quantity], [CenterID], [MedicineID]) VALUES (46, 100, 37, 10)
SET IDENTITY_INSERT [dbo].[Quantity_tbl] OFF
SET IDENTITY_INSERT [dbo].[Thana_tbl] ON 

INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (1, N'Adabor ', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (4, N'Badda', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (5, N'Demra', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (6, N'Bangsal', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (7, N'Gulshan', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (8, N'Dohar', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (9, N'Bhanga', 2)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (10, N'Faridpur Sadar', 2)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (11, N'Sadarpur', 2)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (12, N'Boalmari', 2)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (13, N'Saltha', 2)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (14, N'Nagarkanda', 2)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (15, N'Gazipur ', 3)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (16, N'Kaligonj', 3)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (17, N'Kapasia', 3)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (18, N'Tongi', 3)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (19, N'Kaliakair', 3)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (20, N'Sreepur', 3)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (21, N'Gopalgonj Sadar', 4)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (22, N'Kasiani', 4)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (23, N'KotaliPara', 4)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (24, N'Tungipara', 4)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (25, N'Muksudpur', 4)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (26, N'Baksiganj', 5)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (27, N'Dewangonj', 5)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (28, N'Islampur', 5)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (29, N'Jamalpur Sadar', 5)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (30, N'Gazaria', 6)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (31, N'Lohajang', 6)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (33, N'Munsigaonj Sadar', 6)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (34, N'Tongibari', 6)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (35, N'Sreenagar', 6)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (36, N'Bandar ', 7)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (37, N'Rupganj', 7)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (38, N'Siddirgonj', 7)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (40, N'Fatullah', 7)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (41, N'Narsingdi Sadar ', 8)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (42, N'Monohardi ', 8)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (43, N'Raipura ', 8)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (44, N'Belabo', 8)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (45, N'Palash', 8)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (46, N'Shibpur', 8)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (47, N'Araihazar ', 7)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (48, N'Narayanganj Sadar', 7)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (49, N'Sonargaon ', 7)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (50, N'Gopalpur', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (51, N'Ghatail', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (52, N'Nagarpur', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (53, N'Basail', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (54, N'Kalihati', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (55, N'Sakhipur', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (56, N'Bhuapur', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (57, N'Madhupur ', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (58, N'Dhanbari', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (59, N'Delduar', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (60, N'Mirzapur ', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (61, N'Tangail Sadar', 9)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (62, N'Baliakandi', 10)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (63, N'Pangsha', 10)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (64, N'Goalandaghat ', 10)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (65, N'Rajbari Sadar', 10)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (66, N'Atpara', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (67, N'Kalmakanda ', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (68, N'Netrokona Sadar ', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (69, N'Barhatta ', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (70, N'Kendua', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (71, N'Purbadhala', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (72, N'Durgapur ', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (73, N'Mohanganj', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (74, N'Madan ', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (75, N'Khaliajuri ', 11)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (76, N'Jhenaigati', 12)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (77, N'Nalitabari', 12)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (78, N'Sreebardi ', 12)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (79, N'Nakla ', 12)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (80, N'Sherpur Sadar ', 12)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (81, N'Bhaluka', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (82, N'Haluaghat ', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (83, N'Phulpur', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (84, N'Dhobaura ', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (85, N'Ishwarganj', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (86, N'Trishal', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (87, N'Fulbaria', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (88, N'Mymensingh Sadar', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (89, N'Gaffargaon', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (90, N'Muktagachha', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (91, N'Gauripur', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (92, N'Nandail ', 13)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (93, N'Dhamrai ', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (94, N'Keraniganj', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (95, N'Savar', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (96, N'Nawabganj', 1)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (97, N'Alfadanga', 2)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (98, N'Charbhadrasan', 2)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (99, N'Daulatpur', 14)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (100, N'Manikgonj Sadar', 14)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (101, N'Singair ', 14)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (102, N'Ghior', 14)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (103, N'Saturia ', 14)
GO
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (104, N'Harirampur', 14)
INSERT [dbo].[Thana_tbl] ([ID], [Name], [DistrictID]) VALUES (105, N'Shivalaya', 14)
SET IDENTITY_INSERT [dbo].[Thana_tbl] OFF
SET IDENTITY_INSERT [dbo].[Treatment_tbl] ON 

INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (3, 35, N'9509623450915', 2, CAST(0x1B3A0B00 AS Date), N'very sick')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (4, 35, N'9509623450915', 2, CAST(0x1E3A0B00 AS Date), N'very sick')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (5, 35, N'9509623450915', 2, CAST(0x2D3A0B00 AS Date), N'very sick')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (6, 35, N'9509623450915', 3, CAST(0x323A0B00 AS Date), N'Need to see heart specialist')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (7, 35, N'9509623450915', 3, CAST(0x403A0B00 AS Date), N'Good')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (8, 35, N'5644309456813', 3, CAST(0x233A0B00 AS Date), N'Good Health')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (9, 35, N'8909854343334', 2, CAST(0x2A3A0B00 AS Date), N'very sick')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (10, 35, N'8909854343334', 2, CAST(0x233A0B00 AS Date), N'should go to central medicine office')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (11, 35, N'5644309456813', 2, CAST(0x223A0B00 AS Date), N'very old')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (12, 35, N'8909854343334', 3, CAST(0x393A0B00 AS Date), N'very old')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (13, 36, N'8909854343334', 4, CAST(0x283A0B00 AS Date), N'ver sick')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (14, 35, N'8909854343334', 3, CAST(0x313A0B00 AS Date), N'very sick')
INSERT [dbo].[Treatment_tbl] ([ID], [CenterID], [voterID], [DoctorID], [TreatmentDate], [Observation]) VALUES (15, 37, N'1212121211212', 8, CAST(0x2B3A0B00 AS Date), N'Very sick')
SET IDENTITY_INSERT [dbo].[Treatment_tbl] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Center_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Center_tbl] ON [dbo].[Center_tbl]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Disease_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Disease_tbl] ON [dbo].[Disease_tbl]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MedicineList_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
CREATE NONCLUSTERED INDEX [IX_MedicineList_tbl] ON [dbo].[MedicineList_tbl]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MedicineList_tbl_1]    Script Date: 7/3/2015 11:32:28 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_MedicineList_tbl_1] ON [dbo].[MedicineList_tbl]
(
	[MedicineNameWithML] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Quantity_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
CREATE NONCLUSTERED INDEX [IX_Quantity_tbl] ON [dbo].[Quantity_tbl]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treatment_tbl]    Script Date: 7/3/2015 11:32:28 AM ******/
CREATE NONCLUSTERED INDEX [IX_Treatment_tbl] ON [dbo].[Treatment_tbl]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Doctor_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_tbl_Center_tbl] FOREIGN KEY([CenterID])
REFERENCES [dbo].[Center_tbl] ([ID])
GO
ALTER TABLE [dbo].[Doctor_tbl] CHECK CONSTRAINT [FK_Doctor_tbl_Center_tbl]
GO
ALTER TABLE [dbo].[Prescription_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_tbl_Treatment_tbl] FOREIGN KEY([TreatmentID])
REFERENCES [dbo].[Treatment_tbl] ([ID])
GO
ALTER TABLE [dbo].[Prescription_tbl] CHECK CONSTRAINT [FK_Prescription_tbl_Treatment_tbl]
GO
ALTER TABLE [dbo].[Quantity_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Quantity_tbl_Center_tbl1] FOREIGN KEY([CenterID])
REFERENCES [dbo].[Center_tbl] ([ID])
GO
ALTER TABLE [dbo].[Quantity_tbl] CHECK CONSTRAINT [FK_Quantity_tbl_Center_tbl1]
GO
ALTER TABLE [dbo].[Quantity_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Quantity_tbl_MedicineList_tbl] FOREIGN KEY([MedicineID])
REFERENCES [dbo].[MedicineList_tbl] ([ID])
GO
ALTER TABLE [dbo].[Quantity_tbl] CHECK CONSTRAINT [FK_Quantity_tbl_MedicineList_tbl]
GO
ALTER TABLE [dbo].[Thana_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Thana_tbl_District_tbl] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District_tbl] ([ID])
GO
ALTER TABLE [dbo].[Thana_tbl] CHECK CONSTRAINT [FK_Thana_tbl_District_tbl]
GO
ALTER TABLE [dbo].[Treatment_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Treatment_tbl_Center_tbl] FOREIGN KEY([CenterID])
REFERENCES [dbo].[Center_tbl] ([ID])
GO
ALTER TABLE [dbo].[Treatment_tbl] CHECK CONSTRAINT [FK_Treatment_tbl_Center_tbl]
GO
ALTER TABLE [dbo].[Treatment_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Treatment_tbl_Doctor_tbl] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor_tbl] ([ID])
GO
ALTER TABLE [dbo].[Treatment_tbl] CHECK CONSTRAINT [FK_Treatment_tbl_Doctor_tbl]
GO
ALTER TABLE [dbo].[Treatment_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Treatment_tbl_Treatment_tbl1] FOREIGN KEY([ID])
REFERENCES [dbo].[Treatment_tbl] ([ID])
GO
ALTER TABLE [dbo].[Treatment_tbl] CHECK CONSTRAINT [FK_Treatment_tbl_Treatment_tbl1]
GO
USE [master]
GO
ALTER DATABASE [CommunityMedicine_DB] SET  READ_WRITE 
GO
