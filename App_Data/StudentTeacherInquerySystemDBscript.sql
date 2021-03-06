USE [master]
GO
/****** Object:  Database [StudentTeacherInquerySystemDB]    Script Date: 2016/7/1 0:36:54 ******/
CREATE DATABASE [StudentTeacherInquerySystemDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentTeacherInquerySystemDB', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StudentTeacherInquerySystemDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudentTeacherInquerySystemDB_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StudentTeacherInquerySystemDB_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentTeacherInquerySystemDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET  MULTI_USER 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [StudentTeacherInquerySystemDB]
GO
/****** Object:  Table [dbo].[adminInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adminName] [nvarchar](20) NULL,
	[adminPass] [nvarchar](20) NULL,
 CONSTRAINT [PK_adminInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[classInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[className] [nvarchar](20) NULL,
	[collegeName] [nvarchar](20) NULL,
 CONSTRAINT [PK_classInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[collegeInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collegeInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[collegeName] [nvarchar](20) NULL,
 CONSTRAINT [PK_collegeInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[departmentInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departmentInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[departmentName] [nvarchar](20) NULL,
 CONSTRAINT [PK_departmentInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[emailTab]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailTab](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](20) NULL,
 CONSTRAINT [PK_emailTab] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[inquireObjectInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inquireObjectInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[inquireObject] [nvarchar](10) NULL,
 CONSTRAINT [PK_inquireObjectInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[inquiryModeInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inquiryModeInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[inquiryMode] [nvarchar](20) NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_inquiryModeInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loginInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loginInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loginname] [nvarchar](20) NULL,
	[loginState] [nvarchar](20) NULL,
	[loginTime] [datetime] NULL,
	[loginIP] [nvarchar](30) NULL,
	[loginHostname] [nvarchar](20) NULL,
 CONSTRAINT [PK_loginInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[newsTab]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newsTab](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[time] [date] NULL,
	[content] [text] NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_newsTab] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[studentInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[studentInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stuNum] [varchar](13) NULL,
	[stuName] [nvarchar](10) NULL,
	[stuSex] [char](2) NULL,
	[stuID] [char](18) NULL,
	[stuNational] [nvarchar](10) NULL,
	[stuTel] [nvarchar](12) NULL,
	[stuCollege] [nvarchar](20) NULL,
	[stuClass] [nvarchar](20) NULL,
	[stuChangerequest] [nvarchar](50) NULL,
	[stuPic] [nvarchar](50) NULL,
 CONSTRAINT [PK_studentInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teacherInfo]    Script Date: 2016/7/1 0:36:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacherInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teaNum] [varchar](13) NULL,
	[teaName] [nvarchar](10) NULL,
	[teaSex] [char](2) NULL,
	[teaID] [char](19) NULL,
	[teaNational] [nvarchar](10) NULL,
	[teaTel] [char](12) NULL,
	[teaDepartment] [nvarchar](20) NULL,
	[teaChangerequest] [varchar](50) NULL,
	[teaPic] [nvarchar](50) NULL,
 CONSTRAINT [PK_teacherInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[adminInfo] ON 

INSERT [dbo].[adminInfo] ([id], [adminName], [adminPass]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[adminInfo] ([id], [adminName], [adminPass]) VALUES (2, N'root', N'root')
INSERT [dbo].[adminInfo] ([id], [adminName], [adminPass]) VALUES (3, N'yangenneng', N'yangenneng')
INSERT [dbo].[adminInfo] ([id], [adminName], [adminPass]) VALUES (4, N'yen', N'yen123')
INSERT [dbo].[adminInfo] ([id], [adminName], [adminPass]) VALUES (5, N'longyuyan', N'ADMIN')
INSERT [dbo].[adminInfo] ([id], [adminName], [adminPass]) VALUES (6, N'houxuejin', N'houxuejin')
SET IDENTITY_INSERT [dbo].[adminInfo] OFF
SET IDENTITY_INSERT [dbo].[classInfo] ON 

INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (1, N'教育学', N'教育科学与管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (2, N'心理学', N'教育科学与管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (3, N'学前教育', N'教育科学与管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (4, N'公共事业管理', N'教育科学与管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (5, N'政治学', N'哲学与政法学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (6, N'法律', N'哲学与政法学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (7, N'哲学', N'哲学与政法学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (8, N'社会学', N'哲学与政法学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (9, N'中文', N'文学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (10, N'教师教育', N'文学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (11, N'秘书学', N'文学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (12, N'历史与社会', N'历史与行政学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (13, N'历史与地理', N'历史与行政学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (14, N'历史与政治', N'历史与行政学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (15, N'英语', N'外国语学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (16, N'日语', N'外国语学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (17, N'越南语', N'外国语学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (18, N'泰语', N'外国语学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (19, N'美术', N'艺术学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (20, N'美术教育', N'艺术学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (21, N'音乐课程论', N'艺术学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (22, N'体育教育训练学', N'体育学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (23, N'体育人文社会', N'体育学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (24, N'体育学科教学论', N'体育学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (25, N'华文教育专业', N'云南华文学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (26, N'柬埔寨语', N'云南华文学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (27, N'金融学', N'经济管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (28, N'哲政学', N'经济管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (29, N'会计学', N'经济管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (30, N'经济学', N'经济管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (31, N'金融学', N'经济管理学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (32, N'软件工程', N'信息学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (33, N'网络工程', N'信息学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (34, N'教育技术', N'信息学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (35, N'空间信息', N'信息学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (36, N'计算机与科学(师范)', N'信息学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (37, N'计算机与科学(非师范)', N'信息学院')
INSERT [dbo].[classInfo] ([id], [className], [collegeName]) VALUES (38, N'计算机与科学(专升本)', N'信息学院')
SET IDENTITY_INSERT [dbo].[classInfo] OFF
SET IDENTITY_INSERT [dbo].[collegeInfo] ON 

INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (1, N'教育科学与管理学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (2, N'哲学与政法学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (3, N'文学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (4, N'历史与哲政学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (5, N'外国语学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (6, N'艺术学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (7, N'体育学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (8, N'云南华文学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (9, N'经济与管理学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (10, N'MBA中心')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (11, N'泛亚商学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (12, N'马克思主义学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (13, N'传媒学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (14, N'国际学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (15, N'数学学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (16, N'物理与电子信息学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (17, N'化学化工学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (18, N'生命科学学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (19, N'信息学院')
INSERT [dbo].[collegeInfo] ([id], [collegeName]) VALUES (20, N'旅游与地理学院')
SET IDENTITY_INSERT [dbo].[collegeInfo] OFF
SET IDENTITY_INSERT [dbo].[departmentInfo] ON 

INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (1, N'校长处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (2, N'发展研究中心')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (3, N'人事处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (4, N'财务处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (5, N'就业处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (6, N'科研处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (7, N'研究生处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (8, N'学生工作处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (9, N'宿舍管理处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (10, N'招生处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (11, N'计划财务处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (12, N'保卫处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (13, N'基建管理处')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (14, N'档案馆')
INSERT [dbo].[departmentInfo] ([id], [departmentName]) VALUES (15, N'信息管理处')
SET IDENTITY_INSERT [dbo].[departmentInfo] OFF
SET IDENTITY_INSERT [dbo].[emailTab] ON 

INSERT [dbo].[emailTab] ([id], [email]) VALUES (1, N'@qq.com   ')
INSERT [dbo].[emailTab] ([id], [email]) VALUES (2, N'@163.com  ')
INSERT [dbo].[emailTab] ([id], [email]) VALUES (5, N'@186.com  ')
INSERT [dbo].[emailTab] ([id], [email]) VALUES (6, N'@foxmail.com')
INSERT [dbo].[emailTab] ([id], [email]) VALUES (7, N'@outlook.com')
SET IDENTITY_INSERT [dbo].[emailTab] OFF
SET IDENTITY_INSERT [dbo].[inquireObjectInfo] ON 

INSERT [dbo].[inquireObjectInfo] ([id], [inquireObject]) VALUES (1, N'学生')
INSERT [dbo].[inquireObjectInfo] ([id], [inquireObject]) VALUES (2, N'教师')
SET IDENTITY_INSERT [dbo].[inquireObjectInfo] OFF
SET IDENTITY_INSERT [dbo].[inquiryModeInfo] ON 

INSERT [dbo].[inquiryModeInfo] ([id], [inquiryMode], [type]) VALUES (1, N'根据姓名查找', 0)
INSERT [dbo].[inquiryModeInfo] ([id], [inquiryMode], [type]) VALUES (2, N'根据性别查找', 0)
INSERT [dbo].[inquiryModeInfo] ([id], [inquiryMode], [type]) VALUES (3, N'根据民族查找', 0)
INSERT [dbo].[inquiryModeInfo] ([id], [inquiryMode], [type]) VALUES (4, N'根据学院查找', 1)
INSERT [dbo].[inquiryModeInfo] ([id], [inquiryMode], [type]) VALUES (5, N'根据专业查找', 1)
INSERT [dbo].[inquiryModeInfo] ([id], [inquiryMode], [type]) VALUES (6, N'根据学号查找', 1)
INSERT [dbo].[inquiryModeInfo] ([id], [inquiryMode], [type]) VALUES (7, N'根据部门查找', 2)
INSERT [dbo].[inquiryModeInfo] ([id], [inquiryMode], [type]) VALUES (8, N'根据工号查找', 2)
SET IDENTITY_INSERT [dbo].[inquiryModeInfo] OFF
SET IDENTITY_INSERT [dbo].[loginInfo] ON 

INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1, N'admin', N'登陆成功', CAST(0x0000A5C301530768 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2, N'admin', N'登陆成功', CAST(0x0000A5C301539FC0 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1002, N'admin', N'登陆成功', CAST(0x0000A5C401572F78 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1003, N'admin', N'登陆成功', CAST(0x0000A5C4015A881C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1004, N'admin', N'登陆成功', CAST(0x0000A5C4015EF0A0 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1005, N'admin', N'登陆成功', CAST(0x0000A5C4015F1878 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1006, N'admin', N'登陆成功', CAST(0x0000A5C4015FDC2C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1007, N'admin', N'登陆成功', CAST(0x0000A5C4016593D8 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1008, N'admin', N'登陆成功', CAST(0x0000A5C4016F9C98 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1009, N'admin', N'登陆成功', CAST(0x0000A5C4017069AC AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1010, N'admin', N'登陆成功', CAST(0x0000A5C40170F8A4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1011, N'admin', N'登陆成功', CAST(0x0000A5C401754634 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1012, N'admin', N'登陆成功', CAST(0x0000A5C401859340 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1013, N'admin', N'登陆失败', CAST(0x0000A5C500EA6384 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1014, N'admin', N'登陆成功', CAST(0x0000A5C500EA7644 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1015, N'root', N'登陆成功', CAST(0x0000A5C5015BB2F0 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1016, N'yen', N'登陆成功', CAST(0x0000A5C50173994C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1017, N'admin', N'登陆成功', CAST(0x0000A5C501741B60 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1018, N'admin', N'登陆失败', CAST(0x0000A5C501743E88 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1019, N'admin', N'登陆成功', CAST(0x0000A5C5017447E8 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1020, N'admin', N'登陆成功', CAST(0x0000A5C501845228 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1021, N'longyuyan', N'登陆成功', CAST(0x0000A5C501852770 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1022, N'admin', N'登陆成功', CAST(0x0000A5C600A52814 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1023, N'admin', N'登陆成功', CAST(0x0000A5C600A9AF10 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1024, N'admin', N'登陆成功', CAST(0x0000A5C600E54688 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1025, N'admin', N'登陆成功', CAST(0x0000A5C600F0CFA8 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1026, N'admin', N'登陆成功', CAST(0x0000A5C600F38310 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1027, N'admin', N'登陆成功', CAST(0x0000A5C601010418 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1028, N'admin', N'登陆成功', CAST(0x0000A5C60146D6B4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1029, N'admin', N'登陆成功', CAST(0x0000A5C601824D5C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1030, N'admin', N'登陆失败', CAST(0x0000A5CE01486C2C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1031, N'admin', N'登陆成功', CAST(0x0000A5CE014877E4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1032, N'admin', N'登陆失败', CAST(0x0000A5CF017C1E28 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1033, N'admin', N'登陆成功', CAST(0x0000A5CF017C2C38 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1034, N'admin', N'登陆成功', CAST(0x0000A5D400EF3EE0 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1035, N'admin', N'登陆失败', CAST(0x0000A5E6016DEE84 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1036, N'admin', N'登陆成功', CAST(0x0000A5E6016DFA3C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1037, N'admin', N'登陆失败', CAST(0x0000A5EF016A925C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1038, N'admin', N'登陆成功', CAST(0x0000A5EF016A9CE8 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1039, N'admin', N'登陆成功', CAST(0x0000A61A00EBC56C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1040, N'admin', N'登陆成功', CAST(0x0000A61A00F3FE1C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1041, N'admin', N'登陆成功', CAST(0x0000A61A00F52A1C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1042, N'admin', N'登陆成功', CAST(0x0000A61A0117E2C8 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1043, N'admin', N'登陆成功', CAST(0x0000A61C016EF9B4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1044, N'admin', N'登陆成功', CAST(0x0000A62200BC21B8 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (1045, N'admin', N'登陆成功', CAST(0x0000A62501133070 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2045, N'admin', N'登陆成功', CAST(0x0000A62800044430 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2046, N'admin', N'登陆成功', CAST(0x0000A6280013941C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2047, N'admin', N'登陆成功', CAST(0x0000A6280013BE4C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2048, N'admin', N'登陆成功', CAST(0x0000A62800146CE8 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2049, N'admin', N'登陆成功', CAST(0x0000A6280014AD5C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2050, N'admin', N'登陆成功', CAST(0x0000A62800F01554 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2051, N'admin', N'登陆成功', CAST(0x0000A62800FF8E44 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (2052, N'admin', N'登陆成功', CAST(0x0000A62801159FE0 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3052, N'admin', N'登陆成功', CAST(0x0000A6280141A11C AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3053, N'admin', N'登陆成功', CAST(0x0000A6280141C7C8 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3054, N'admin', N'登陆成功', CAST(0x0000A62801849044 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3055, N'admin', N'登陆成功', CAST(0x0000A6280184DB44 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3056, N'admin', N'登陆成功', CAST(0x0000A62900079CD4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3057, N'admin', N'登陆成功', CAST(0x0000A62A014F6D24 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3058, N'admin', N'登陆成功', CAST(0x0000A62A016FB534 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3059, N'admin', N'登陆成功', CAST(0x0000A62B01645770 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3060, N'admin', N'登陆成功', CAST(0x0000A62B016A86A4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (3061, N'admin', N'登陆成功', CAST(0x0000A62C0000FBF4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (4061, N'admin', N'登陆成功', CAST(0x0000A62C0157C1F4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (4062, N'admin', N'登陆成功', CAST(0x0000A62E00B69694 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (5062, N'admin', N'登陆成功', CAST(0x0000A63001418880 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (5063, N'admin', N'登陆成功', CAST(0x0000A6300141B760 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (5064, N'admin', N'登陆成功', CAST(0x0000A635009768F0 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (5065, N'admin', N'登陆成功', CAST(0x0000A635009A92B4 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (5066, N'admin', N'登陆成功', CAST(0x0000A63500C55C38 AS DateTime), N'::1', N'yangenneng')
INSERT [dbo].[loginInfo] ([id], [loginname], [loginState], [loginTime], [loginIP], [loginHostname]) VALUES (5067, N'admin', N'登陆成功', CAST(0x0000A63600097AF4 AS DateTime), N'::1', N'yangenneng')
SET IDENTITY_INSERT [dbo].[loginInfo] OFF
SET IDENTITY_INSERT [dbo].[newsTab] ON 

INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (1, N'魅力芭蕾 舞动云师——中央芭蕾舞团走进我校专场演出精彩上演', CAST(0x843B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (2, N'云南师范大学在全省高校纪念中国共产党成立95周年歌咏比赛中获一等奖', CAST(0x713B0B00 AS Date), N'6月16日下午，由中共云南省委高校工委、云南省教育厅主办，昆明医科大学承办的云南省高校纪念中国共产党成立95周年歌咏比赛展演活动在昆明医科大学呈贡校区学生会堂举行。省教育厅党组副书记、副厅长邹平，省委高校工委副书记陶晴，省文化厅副厅长王江红，共青团云南省委副书记赵国良及省委高校工委、省教育厅有关职能部门负责人，各参赛高校分管校领导、职能部门负责人出席了活动。我校党委副书记何伟全、校工会副主席周争卉、职业技术教育学院副院长王黎智及相关部门负责人观看了展演。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (3, N'云南省教育卫生科研系统2016年职工气排球比赛圆满落幕', CAST(0x6D3B0B00 AS Date), N'“凝聚职工心、奋力促跨越、共筑中国梦”。经过四天的角逐，百余场比赛，6月16日下午，由云南省教育卫生科研工会主办，云南师范大学承办的职工气排球比赛在呈贡主校区东区体育馆圆满落幕。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (4, N'云南教育改革和科技创新实战专题分会在我校成功举办', CAST(0x623B0B00 AS Date), N'为契合国家“创新驱动”发展战略，加强云南与世界优秀人才和先进技术的交流与合作，为外国专家走近云南，促进云南面向南亚、东南亚辐射中心建设，在云南国际人才交流会组委会、云南省外国专家局、省科协等部门的支持下，“云南教育改革和科技创新实战专题分会”于6月15日上午，在我校西边中心报告厅举行。旅美科技协会陈志雄博士、潘星华博士、万乐博士、肖继忠教授、谢家叶博士出席并就主题做主旨演讲。云南师范大学副校长原一川教授、云南技师学院院长何良平教授及省教育厅、省外专局、省科协、云南技师学院等单位的50余位专家出席此次会议。会议由我校信息学院院长杨昆教授主，来自我校国际处、人事处、科研处、信息学院、生科学院、教管学院、物电学院、高教院等部门和学院的师生共150余人参加了会议。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (5, N'我校举行2016届留学生毕业典礼', CAST(0x623B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (6, N'校党委书记饶卫看望我校南博会志愿者“小白云”', CAST(0x623B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (7, N'我校召开2016年招生宣传工作会', CAST(0x623B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (8, N'校党委书记饶卫、纪委书记杨春华参加省纪委', CAST(0x623B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (9, N'我校召开云南纪检监察学院发展规划专题工作会议', CAST(0x623B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (10, N'诚信考试倡议书', CAST(0x843B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (11, N'云南师范大学就业处2015-2016届毕业生中长期培养质量调研', CAST(0x803B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (12, N'防蚊灭蚊宣传知识要点', CAST(0x7F3B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (13, N'云南师范大学“玉兰小舞台”节目征集令', CAST(0x7E3B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (14, N'云师大的教育扶贫实践', CAST(0x7D3B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (15, N'教育部“平安留学”行前培训在昆举行', CAST(0x7C3B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (16, N'云南日报报业集团与云南师范大学在我校成功举办气排球比赛圆满落幕', CAST(0x7B3B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (17, N'集团云南师大共办培训中心 首训迎来20位缅甸媒体人', CAST(0x7A3B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (18, N'中国MBA西南联盟第十一届主席峰会隆重召开', CAST(0x793B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (19, N'业生为了找工作拼了 一场招聘会简历就花了数百元', CAST(0x783B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (20, N'召开2017届毕业生工作会峰会隆重召开', CAST(0x773B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (21, N'手绘“两学一做”半月刊会隆重召开', CAST(0x763B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (22, N'机关党委组织机关各部会隆重召开', CAST(0x753B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (23, N'传媒学院第二次团员代会隆重召开', CAST(0x743B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (24, N'院级先进班集体评选会隆重召开', CAST(0x733B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (25, N'哲政学院和纪检学院法会隆重召开', CAST(0x653B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (26, N'方程社开展爱心助学募会隆重召开', CAST(0x603B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (27, N'五四红旗团支部评选大会隆重召开', CAST(0x293B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (28, N'南大学文学院院长王本会隆重召开', CAST(0x473B0B00 AS Date), N'不远千里来到中国求学的留学生们能取得今天的成绩，除了自己的努力、学校老师的培育，更有家长亲人们的支持。毕业典礼也是学生成长的重要里程碑，典礼现场也迎来了东南亚各国学生的家长前来观礼。杜世旺先生专程从缅甸赶来参加女儿的毕业典礼，他作为学生家长代表上台发言，他表达了对学校、对中国政府悉心培养和教育子女的诚挚感谢。学长和学姐的顺利毕业，为在读留学生树立了良好的榜样，在离别之际，来自老挝的在读留学生代表唐雄华也向毕业生致欢送词，送上了他们的毕业祝福。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (29, N'云南日报报业集团与云南师范大学在我校成功举办气排球比赛圆满落幕', CAST(0x7D3B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 1)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (30, N'南大学文学院院长王本会隆重召开', CAST(0x7D3B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 2)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (31, N'传媒学院第二次团员代会隆重召开', CAST(0x7D3B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (32, N'机关党委组织机关各部会隆重召开', CAST(0x603B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (33, N'手绘“两学一做”半月刊会隆重召开', CAST(0x603B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (34, N'手绘“两学一做”半月刊会隆重召开', CAST(0x7D3B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (35, N'手绘“两学一做”半月刊会隆重召开', CAST(0x7D3B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 3)
INSERT [dbo].[newsTab] ([id], [title], [time], [content], [type]) VALUES (36, N'五四红旗团支部评选大会隆重召开', CAST(0x7D3B0B00 AS Date), N'6月15日晚，我校呈贡主校区明德五号楼演播厅内华灯璀璨、座无虚席，由我校团委承办的2016年“高雅艺术进校园”之中央芭蕾舞团走进云南师范大学专场演出精彩上演。省文化厅副厅长王江红、 我校副校长原一川出席并观看了演出。演出开始前，我校副校长原一川向中央芭蕾舞团赠送了纪念礼物。芭蕾专场演出分为巴雷史简介、课堂教学示范、观众互动、芭蕾舞表演四个部分。优雅的《女子古典四人舞》演出拉开了晚会序幕。中央芭蕾舞团主要演员、国家一级演员曹舒慈为全场观众介绍了芭蕾在世界与中国的发展历程。随后，曹舒慈老师指导舞蹈演员进行课堂训练展示，并进行现场讲解，为观众展示了小跳、阿拉贝斯、控制等基本动作。在互动环节中，我校数十名学生在专业舞蹈演员的带领下学习了芭蕾的基本手位和脚位等芭蕾舞基本动作。', 3)
SET IDENTITY_INSERT [dbo].[newsTab] OFF
SET IDENTITY_INSERT [dbo].[studentInfo] ON 

INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (57, N'1443205000250', N'杨恩能', N'男', N'533122199604010210', N'汉族', N'18468194780', N'教育科学与管理学院', N'教育学', N'把学院和专业改为 信息学院 软件工程14F', N'picture/2016-06/20160617164447223.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (59, N'1443205000251', N'侯学锦', N'女', N'533122199604010211', N'朝鲜族', N'18288136547', N'教育科学与管理学院', N'教育学', N'', N'picture/2016-06/20160617165124442.gif')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (60, N'1443205000252', N'康定翟', N'男', N'533122199604010212', N'白族', N'18468294615', N'信息学院', N'网络工程', NULL, N'picture/man.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (61, N'1443205000253', N'郭稳', N'男', N'533122199604010213', N'汉族', N'18468194781', N'泛亚商学院', N'空间信息', NULL, N'picture/man.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (62, N'1443205000254', N'赵敏', N'女', N'533122199604010214', N'汉族', N'18468194781', N'艺术学院', N'美术', NULL, N'picture/women.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (63, N'1443205000255', N'尹植铭', N'女', N'533122199604010215', N'汉族', N'18468194781', N'艺术学院', N'音乐课程论', NULL, N'picture/women.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (64, N'1443205000256', N'尹李娇', N'女', N'533122199604010216', N'彝族', N'18468194783', N'外国语学院', N'英语', NULL, N'picture/women.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (65, N'1443205000257', N'郭兆稳', N'男', N'533122199604010217', N'彝族', N'18468194784', N'教育科学与管理学院', N'教育学', N'', N'picture/2016-06/20160603143859255.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (66, N'1443205000258', N'王祖希', N'男', N'533122199604010218', N'回族', N'18468194785', N'哲学与政法学院', N'哲学', NULL, N'picture/man.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (67, N'1443205000259', N'李红平', N'男', N'533122199604010219', N'汉族', N'18468194787', N'体育学院', N'体育人文社会', NULL, N'picture/man.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (68, N'1443205000259', N'李兴', N'男', N'533122199604010219', N'汉族', N'18468194787', N'外国语学院', N'越南语', NULL, N'picture/man.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (69, N'1443205000260', N'李莉', N'女', N'533122199604010220', N'汉族', N'18468194788', N'信息学院', N'计算机与科学(师范)', NULL, N'picture/women.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (70, N'1443205000261', N'王芬', N'女', N'533122199604010221', N'壮族', N'18468194788', N'经济管理学院', N'哲政学', NULL, N'picture/women.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (71, N'1443205000262', N'杨明', N'男', N'533122199604010222', N'汉族', N'18468194784', N'信息学院', N'网络工程', NULL, N'picture/man.jpg')
INSERT [dbo].[studentInfo] ([id], [stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest], [stuPic]) VALUES (72, N'1443205000226', N'反对法', N'男', N'533122199605020521', N'汉族', N'18468497851', N'教育科学与管理学院', N'教育学', N'性别改为女', N'picture/2016-06/20160617165344802.gif')
SET IDENTITY_INSERT [dbo].[studentInfo] OFF
SET IDENTITY_INSERT [dbo].[teacherInfo] ON 

INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (1, N'1000000000001', N'杨林', N'男', N'533122188003260500 ', N'汉族', N'18487123000 ', N'校长处', N'电话改为18487123321', N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (2, N'1000000000002', N'杨应树', N'男', N'533122188003260501 ', N'汉族', N'18487123001 ', N'发展研究中心', N'', N'picture/2016-06/20160617165312170.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (3, N'1000000000003', N'刘思琪', N'女', N'533122188003260502 ', N'汉族', N'18487123002 ', N'发展研究中心', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (4, N'1000000000004', N'陈鹏', N'男', N'533122188003260503 ', N'汉族', N'18487123003 ', N'发展研究中心', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (5, N'1000000000005', N'郭春娟', N'女', N'533122188003260504 ', N'汉族', N'18487123004 ', N'人事处', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (6, N'1000000000006', N'周清', N'男', N'533122188003260505 ', N'傣族', N'18487123005 ', N'人事处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (7, N'1000000000007', N'王嘉丽 ', N'女', N'533122188003260506 ', N'傣族', N'18487123006 ', N'财务处', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (8, N'1000000000008', N'臧蒙雪', N'男', N'533122188003260507 ', N'汉族', N'18487123007 ', N'财务处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (9, N'1000000000009', N'袁丽', N'女', N'533122188003260508 ', N'汉族', N'18487123008 ', N'财务处', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (10, N'1000000000010', N'李哲峰', N'男', N'533122188003260509 ', N'汉族', N'18487123009 ', N'就业处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (11, N'1000000000011', N'何智健', N'男', N'533122188003260510 ', N'汉族', N'18487123010 ', N'科研处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (12, N'1000000000012', N'冯敏', N'女', N'533122188003260511 ', N'汉族', N'18487123011 ', N'科研处', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (13, N'1000000000013', N'李想', N'男', N'533122188003260512 ', N'汉族', N'18487123012 ', N'研究生处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (14, N'1000000000014', N'王鑫', N'男', N'533122188003260513 ', N'汉族', N'18487123013 ', N'学生工作处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (15, N'1000000000015', N'李龙', N'男', N'533122188003260514 ', N'汉族', N'18487123014 ', N'学生工作处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (16, N'1000000000016', N'赵梓廷', N'男', N'533122188003260515 ', N'壮族', N'18487123015 ', N'招生处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (17, N'1000000000017', N'杨沐习', N'男', N'533122188003260516 ', N'汉族', N'18487123016 ', N'计划财务处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (18, N'1000000000018', N'齐盈盈', N'女', N'533122188003260517 ', N'汉族', N'18487123017 ', N'保卫处', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (19, N'1000000000019', N'刘媛媛', N'女', N'533122188003260518 ', N'白族', N'18487123018 ', N'基建管理处', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (20, N'1000000000020', N'杨红琼', N'女', N'533122188003260519 ', N'汉族', N'18487123019 ', N'档案馆', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (21, N'1000000000021', N'郭万兴', N'男', N'533122188003260520 ', N'汉族', N'18487123020 ', N'信息管理处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (22, N'1000000000022', N'吴维', N'男', N'533122188003260521 ', N'汉族', N'18487123021 ', N'信息管理处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (23, N'1000000000023', N'张燕', N'女', N'533122188003260522 ', N'汉族', N'18487123022 ', N'信息管理处', NULL, N'picture/women.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (24, N'1000000000024', N'吴非', N'男', N'533122188003260523 ', N'汉族', N'18487123023 ', N'信息管理处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (25, N'1000000000025', N'陶思廷', N'男', N'533122188003260524 ', N'汉族', N'18487123024 ', N'信息管理处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (26, N'1000000000027', N'邹伟', N'男', N'533122199604010285X', N'汉族', N'18487194784 ', N'信息管理处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (27, N'1000000000026', N'李岑', N'男', N'5331221995040102850', N'汉族', N'18487194700 ', N'信息管理处', NULL, N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (30, N'1000000000030', N'王刚', N'男', N'500002199604010210 ', N'白族', N'16497463164 ', N'计划财务处', N'姓名改为：张刚', N'picture/man.jpg')
INSERT [dbo].[teacherInfo] ([id], [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [teaPic]) VALUES (31, N'1000000000031', N'赵叶', N'男', N'5000021996040102101', N'汉族', N'164974631655', N'人事处', NULL, N'picture/man.jpg')
SET IDENTITY_INSERT [dbo].[teacherInfo] OFF
USE [master]
GO
ALTER DATABASE [StudentTeacherInquerySystemDB] SET  READ_WRITE 
GO
