USE [master]
GO
/****** Object:  Database [plusmed_bd]    Script Date: 13/11/2019 13:39:19 ******/
CREATE DATABASE [plusmed_bd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'plusmed_bd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\plusmed_bd.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'plusmed_bd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\plusmed_bd_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [plusmed_bd] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [plusmed_bd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [plusmed_bd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [plusmed_bd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [plusmed_bd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [plusmed_bd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [plusmed_bd] SET ARITHABORT OFF 
GO
ALTER DATABASE [plusmed_bd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [plusmed_bd] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [plusmed_bd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [plusmed_bd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [plusmed_bd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [plusmed_bd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [plusmed_bd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [plusmed_bd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [plusmed_bd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [plusmed_bd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [plusmed_bd] SET  DISABLE_BROKER 
GO
ALTER DATABASE [plusmed_bd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [plusmed_bd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [plusmed_bd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [plusmed_bd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [plusmed_bd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [plusmed_bd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [plusmed_bd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [plusmed_bd] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [plusmed_bd] SET  MULTI_USER 
GO
ALTER DATABASE [plusmed_bd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [plusmed_bd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [plusmed_bd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [plusmed_bd] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [plusmed_bd]
GO
/****** Object:  Table [dbo].[address]    Script Date: 13/11/2019 13:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[address_street] [varchar](50) NULL,
	[address_number] [int] NULL,
	[address_zip] [int] NULL,
	[address_complement] [varchar](50) NULL,
	[address_neighborhood] [varchar](50) NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clinic]    Script Date: 13/11/2019 13:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clinic](
	[clinic_id] [int] IDENTITY(1,1) NOT NULL,
	[clinic_number] [int] NOT NULL,
	[clinic_floor] [int] NOT NULL,
 CONSTRAINT [PK_clinic] PRIMARY KEY CLUSTERED 
(
	[clinic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[consult]    Script Date: 13/11/2019 13:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consult](
	[consult_id] [int] IDENTITY(1,1) NOT NULL,
	[consult_date] [date] NOT NULL,
	[consult_time] [time](7) NOT NULL,
	[consult_doctor] [int] NOT NULL,
	[consult_pacient] [int] NOT NULL,
	[consult_clinic] [int] NOT NULL,
 CONSTRAINT [PK_consult] PRIMARY KEY CLUSTERED 
(
	[consult_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contact]    Script Date: 13/11/2019 13:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[contact_phone] [int] NOT NULL,
	[contact_email] [varchar](50) NOT NULL,
	[contact_id_user] [int] NOT NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 13/11/2019 13:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_rg] [int] NOT NULL,
	[employee_cpf] [int] NOT NULL,
	[employee_name] [varchar](50) NOT NULL,
	[employee_admission] [date] NOT NULL,
	[employee_function] [int] NOT NULL,
	[employee_phone] [int] NOT NULL,
	[employee_email] [varchar](50) NOT NULL,
	[employee_password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[healthcare]    Script Date: 13/11/2019 13:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[healthcare](
	[healthcare_id] [int] NOT NULL,
	[healthcare_name] [varchar](50) NOT NULL,
	[healthcare_price] [float] NOT NULL,
	[healthcare_CPT] [binary](1) NOT NULL,
	[healthcare_free_cons] [int] NOT NULL,
	[healthcare_specialized] [binary](1) NOT NULL,
 CONSTRAINT [PK_healthcare] PRIMARY KEY CLUSTERED 
(
	[healthcare_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[patients]    Script Date: 13/11/2019 13:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patients](
	[cli_id] [int] IDENTITY(1,1) NOT NULL,
	[cli_name] [varchar](50) NOT NULL,
	[cli_birthdate] [date] NOT NULL,
	[cli_rg] [int] NOT NULL,
	[cli_cpf] [int] NOT NULL,
	[cli_phone] [int] NOT NULL,
	[cli_email] [varchar](50) NOT NULL,
	[cli_senha] [varchar](50) NOT NULL,
	[cli_healthcare] [int] NOT NULL,
	[cli_address] [int] NOT NULL,
 CONSTRAINT [PK_patients] PRIMARY KEY CLUSTERED 
(
	[cli_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 13/11/2019 13:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[function_id] [int] IDENTITY(1,1) NOT NULL,
	[function_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_function] PRIMARY KEY CLUSTERED 
(
	[function_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[consult]  WITH NOCHECK ADD  CONSTRAINT [FK_consult_clinic] FOREIGN KEY([consult_clinic])
REFERENCES [dbo].[clinic] ([clinic_id])
GO
ALTER TABLE [dbo].[consult] NOCHECK CONSTRAINT [FK_consult_clinic]
GO
ALTER TABLE [dbo].[consult]  WITH NOCHECK ADD  CONSTRAINT [FK_consult_employee] FOREIGN KEY([consult_doctor])
REFERENCES [dbo].[employee] ([employee_id])
GO
ALTER TABLE [dbo].[consult] NOCHECK CONSTRAINT [FK_consult_employee]
GO
ALTER TABLE [dbo].[consult]  WITH NOCHECK ADD  CONSTRAINT [FK_consult_patients] FOREIGN KEY([consult_pacient])
REFERENCES [dbo].[patients] ([cli_id])
GO
ALTER TABLE [dbo].[consult] NOCHECK CONSTRAINT [FK_consult_patients]
GO
ALTER TABLE [dbo].[employee]  WITH NOCHECK ADD  CONSTRAINT [FK_employee_function] FOREIGN KEY([employee_function])
REFERENCES [dbo].[role] ([function_id])
GO
ALTER TABLE [dbo].[employee] NOCHECK CONSTRAINT [FK_employee_function]
GO
ALTER TABLE [dbo].[patients]  WITH NOCHECK ADD  CONSTRAINT [FK_patients_address] FOREIGN KEY([cli_address])
REFERENCES [dbo].[address] ([address_id])
GO
ALTER TABLE [dbo].[patients] NOCHECK CONSTRAINT [FK_patients_address]
GO
ALTER TABLE [dbo].[patients]  WITH NOCHECK ADD  CONSTRAINT [FK_patients_healthcare] FOREIGN KEY([cli_healthcare])
REFERENCES [dbo].[healthcare] ([healthcare_id])
GO
ALTER TABLE [dbo].[patients] NOCHECK CONSTRAINT [FK_patients_healthcare]
GO
USE [master]
GO
ALTER DATABASE [plusmed_bd] SET  READ_WRITE 
GO
