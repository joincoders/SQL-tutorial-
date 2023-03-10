USE [REAN_IT]
GO
/****** Object:  Table [dbo].[tblClass]    Script Date: 23/02/2023 11:49:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClass](
	[id] [int] NULL,
	[class] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbldatatype]    Script Date: 23/02/2023 11:49:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbldatatype](
	[id] [int] NULL,
	[idcard] [tinyint] NULL,
	[price] [float] NULL,
	[dob] [date] NULL,
	[inputdate] [datetime] NULL,
	[fullname] [char](10) NULL,
	[firstname] [varchar](max) NULL,
	[lastname] [text] NULL,
	[phone] [nvarchar](50) NULL,
	[pwd] [binary](50) NULL,
	[account] [varbinary](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPersonal]    Script Date: 23/02/2023 11:49:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPersonal](
	[ID] [nvarchar](10) NULL,
	[Firstname] [nvarchar](250) NULL,
	[Lastname] [nvarchar](250) NULL,
	[Gender] [nvarchar](10) NULL,
	[Phone] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoom]    Script Date: 23/02/2023 11:49:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoom](
	[id] [int] NOT NULL,
	[student_id] [int] NULL,
	[class_id] [int] NULL,
	[score] [float] NULL,
 CONSTRAINT [PK_tblRoom] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudents]    Script Date: 23/02/2023 11:49:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudents](
	[id] [nvarchar](10) NULL,
	[name] [nvarchar](250) NULL,
	[gender] [nvarchar](10) NULL,
	[DOB] [date] NULL,
	[AGE] [int] NULL,
	[INPUTDATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubject]    Script Date: 23/02/2023 11:49:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubject](
	[id] [int] NULL,
	[subject] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblClass] ([id], [class]) VALUES (1, N'SQL')
INSERT [dbo].[tblClass] ([id], [class]) VALUES (2, N'C#')
INSERT [dbo].[tblClass] ([id], [class]) VALUES (3, N'MySQL')
INSERT [dbo].[tblClass] ([id], [class]) VALUES (4, N'PHP')
GO
INSERT [dbo].[tbldatatype] ([id], [idcard], [price], [dob], [inputdate], [fullname], [firstname], [lastname], [phone], [pwd], [account]) VALUES (1, 2, 2.5, CAST(N'2023-02-08' AS Date), CAST(N'2023-02-08T09:38:41.250' AS DateTime), N'REAN IT   ', N'REAN IT', N'Programmer', N'០១២៥០០៣៣៩', 0x5245414E2D495400000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x30313235303033333961)
GO
INSERT [dbo].[tblRoom] ([id], [student_id], [class_id], [score]) VALUES (1, 1, 1, 60)
INSERT [dbo].[tblRoom] ([id], [student_id], [class_id], [score]) VALUES (2, 1, 3, 70)
INSERT [dbo].[tblRoom] ([id], [student_id], [class_id], [score]) VALUES (3, 1, 4, 80)
INSERT [dbo].[tblRoom] ([id], [student_id], [class_id], [score]) VALUES (4, 2, 2, 88)
INSERT [dbo].[tblRoom] ([id], [student_id], [class_id], [score]) VALUES (5, 2, 4, 90)
INSERT [dbo].[tblRoom] ([id], [student_id], [class_id], [score]) VALUES (6, 3, 4, 80)
GO
INSERT [dbo].[tblStudents] ([id], [name], [gender], [DOB], [AGE], [INPUTDATE]) VALUES (N'1', N'REAN IT', N'M', CAST(N'1999-01-01' AS Date), 24, CAST(N'2023-02-23T11:02:43.803' AS DateTime))
INSERT [dbo].[tblStudents] ([id], [name], [gender], [DOB], [AGE], [INPUTDATE]) VALUES (N'2', N'REAN CODE', N'F', CAST(N'2000-01-01' AS Date), 23, CAST(N'2023-02-23T11:02:43.803' AS DateTime))
INSERT [dbo].[tblStudents] ([id], [name], [gender], [DOB], [AGE], [INPUTDATE]) VALUES (N'3', N'REAN YOUTUBE', N'M', CAST(N'2001-01-01' AS Date), 22, CAST(N'2023-02-23T11:02:43.803' AS DateTime))
GO
