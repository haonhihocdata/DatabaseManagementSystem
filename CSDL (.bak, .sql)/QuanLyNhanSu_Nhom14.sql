/****** CSDL QuanLyNhanSu ******/
USE master
GO
DROP DATABASE IF EXISTS QuanLyNhanSu
GO
CREATE DATABASE QuanLyNhanSu
GO
USE QuanLyNhanSu
GO

/****** Bảng Bonus ******/
CREATE TABLE [dbo].[Bonus](
	 Id int IDENTITY(1,1) NOT NULL,
	 Name nvarchar(254) NULL,
	 ValueBonus float NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted bit NULL,
	 CONSTRAINT [PK_Bonus] PRIMARY KEY CLUSTERED 
(
	Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Bảng Department ******/
CREATE TABLE [dbo].[Department](
	 Id int IDENTITY(1,1) NOT NULL,
	 Name nvarchar(254) NULL,
	 ParentId int NULL,
	 Description nvarchar(254) NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted bit NULL,
	 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Bảng PenaltyError ******/
CREATE TABLE [dbo].[PenaltyError](
	 Id int IDENTITY(1,1) NOT NULL,
	 Name nvarchar(500) NULL,
	 ValuePenalty float NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted bit NULL,
	 CONSTRAINT [PK_PenaltyError] PRIMARY KEY CLUSTERED 
(
	Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Bảng Salary ******/
CREATE TABLE [dbo].[Salary](
	 Id int IDENTITY(1,1) NOT NULL,
	 Name nvarchar(254) NULL,
	 SalaryValue float NULL,
	 Allowance float NULL,
	 DepartmentId int NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted bit NULL,
	 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Bảng SalaryAdvance ******/
CREATE TABLE [dbo].[SalaryAdvance](
	 Id int IDENTITY(1,1) NOT NULL,
	 EmployeeId int NULL,
	 ValueAdvance float NULL,
	 DateAdvance datetime NULL,
	 Reasion nvarchar(255) NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted bit NULL,
	 CONSTRAINT [PK_SalaryAdvance] PRIMARY KEY CLUSTERED 
(
	Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Bảng Employee ******/
CREATE TABLE [dbo].[Employee](
	 Id int IDENTITY(1,1) NOT NULL,
	 Avatar image NULL,
	 FullName nvarchar(255) NULL,
	 DayOfBirth datetime NULL,
	 Gender nvarchar(255) NULL,
	 Email nvarchar(255) NULL,
	 IdCard nvarchar(20) NULL,
	 Phone nvarchar(255) NULL,
	 Address nvarchar(255) NULL,
	 InsuranceSociety float NULL,
	 DepartmentId int NULL,
	 SalaryId int NULL,
	 IsWorking bit NULL,
	 IsManager bit NULL,
	 UserName nvarchar(255) NULL,
	 Password nvarchar(255) NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted bit NULL,
	 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Bảng EmployeeAndBonus ******/
CREATE TABLE [dbo].[EmployeeAndBonus](
	 Id int IDENTITY(1,1) NOT NULL,
	 EmployeeId int NULL,
	 BonusId int NULL,
	 DateBonus datetime NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted bit NULL,
	 CONSTRAINT [PK_EmployeeAndBonus] PRIMARY KEY CLUSTERED 
(
	Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Bảng EmployeeAndPenaltyError ******/
CREATE TABLE [dbo].[EmployeeAndPenaltyError](
	 Id int IDENTITY(1,1) NOT NULL,
	 EmployeeId int NULL,
	 PenaltyId int NULL,
	 DatePenalty datetime NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted datetime NULL,
	 CONSTRAINT [PK_EmployeeAndPunish] PRIMARY KEY CLUSTERED 
(
	Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Bảng WorkingDay ******/
CREATE TABLE [dbo].[WorkingDay](
	 Id int IDENTITY(1,1) NOT NULL,
	 EmployeeId int NULL,
	 SalaryCurrent float NULL,
	 Datework datetime NULL,
	 IsWorking bit NULL,
	 DateCreated datetime NULL,
	 DateModified datetime NULL,
	 IsDeleted bit NULL,
	 CONSTRAINT [PK_WorkingDay] PRIMARY KEY CLUSTERED 
(
 Id ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Dữ liệu bảng Bonus ******/
SET IDENTITY_INSERT [dbo].[Bonus] ON 
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, N'Thưởng cuối năm', 3000000, CAST(N'2022-06-07 19:23:27.113' AS DateTime), NULL, 0)
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, N'Thưởng tăng ca', 250000, CAST(N'2022-06-07 19:19:09.103' AS DateTime), NULL, 0)
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, N'Thưởng làm thêm chủ nhật', 500000, CAST(N'2022-06-07 19:19:27.123' AS DateTime),NULL, 0)
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, N'Thưởng đi làm ngày lễ', 700000, CAST(N'2022-06-07 19:22:52.370' AS DateTime), NULL, 0)
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (5, N'Thưởng có KPI cao', 1000000, CAST(N'2022-06-07 19:23:12.213' AS DateTime), NULL, 0)
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (6, N'Thưởng thâm niên', 1700000, CAST(N'2022-06-07 19:23:27.113' AS DateTime), NULL, 0)
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (7, N'Thưởng ký kết', 1500000, CAST(N'2022-06-07 19:23:27.113' AS DateTime), NULL, 0)
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (8, N'Thưởng giao ngay', 2000000, CAST(N'2022-06-07 19:23:27.113' AS DateTime), NULL, 0)
INSERT [dbo].[Bonus] ([Id], [Name], [ValueBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (9, N'Thưởng giới thiệu', 1300000, CAST(N'2022-06-07 19:23:27.113' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Bonus] OFF

/****** Dữ liệu bảng Department ******/
SET IDENTITY_INSERT [dbo].[Department] ON 
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, N'Phòng tài chính', 3, N'Phòng tài chính Description', CAST(N'2022-06-07 18:11:19.797' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, N'Ban quản lý', 6, N'Ban quản lý Description', CAST(N'2022-06-07 18:12:33.063' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, N'Ban giám đốc', 6, N'Ban giám đốc Description', CAST(N'2022-06-07 18:12:52.790' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, N'Ban sản xuất', 6, N'Ban sản xuất Description', CAST(N'2022-06-07 18:13:06.070' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (5, N'Ban hành chính', 3, N'Ban hành chính Description', CAST(N'2022-06-07 18:13:52.680' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (6, N'Phòng nhân sự', NULL, N'Phòng nhân sự Description', CAST(N'2022-06-07 19:21:16.430' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (7, N'Phòng marketing', NULL, N'Phòng marketing Description', CAST(N'2022-11-28 21:56:24.557' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (8, N'Phòng nghiên cứu', 6, N'Phòng nghiên cứu Description', CAST(N'2022-11-28 21:56:38.453' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (9, N'Phòng kỹ thuật-công nghệ', 1, N'Phòng kỹ thuật-công nghệ Description', CAST(N'2022-11-28 21:56:48.363' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (10, N'Phòng quan hệ quốc tế', 6, N'Phòng quan hệ quốc tế Description', CAST(N'2022-11-28 21:57:28.820' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (11, N'Phòng tiềm năng phát triển', 3, N'Phòng tiềm năng phát triển Description', CAST(N'2022-11-28 21:57:33.913' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (12, N'Phòng kế toán', 5, N'Phòng kế toán Description', CAST(N'2022-11-28 21:57:33.913' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (13, N'Phòng kiểm toán', NULL, N'Phòng kiểm toán Description', CAST(N'2022-11-28 23:08:33.527' AS DateTime), NULL, 0)
INSERT [dbo].[Department] ([Id], [Name], [ParentId], [Description], [DateCreated], [DateModified], [IsDeleted]) VALUES (14, N'Phòng CSKH', 7, N'Phòng CSKH Description', CAST(N'2022-11-28 23:08:40.697' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Department] OFF

/****** Dữ liệu bảng PenaltyError ******/
SET IDENTITY_INSERT [dbo].[PenaltyError] ON 
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, N'Đi muộn', 150000, CAST(N'2022-06-07 19:32:26.490' AS DateTime), NULL, 0)
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, N'Ý thức-thái độ', 200000, CAST(N'2022-06-07 19:32:35.430' AS DateTime), NULL, 0)
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, N'Đạo đức nghề nghiệp', 100000, CAST(N'2022-06-07 19:32:46.920' AS DateTime), NULL, 0)
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, N'Chưa đạt KPIs', 100000, CAST(N'2022-06-07 19:32:53.483' AS DateTime), NULL, 0)
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (5, N'Sai sót trong công việc', 80000, CAST(N'2022-06-07 19:33:22.523' AS DateTime), NULL, 0)
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (6, N'Vi phạm thời gian làm việc', 200000, CAST(N'2022-06-07 19:33:38.267' AS DateTime), NULL, 0)
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (7, N'Nghỉ quá số buổi quy định', 500000, CAST(N'2022-06-07 19:34:58.703' AS DateTime), NULL, 0)
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (8, N'Ngủ trong giờ làm', 300000, CAST(N'2022-06-07 19:33:38.267' AS DateTime), NULL, 0)
INSERT [dbo].[PenaltyError] ([Id], [Name], [ValuePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (9, N'Làm việc riêng', 450000, CAST(N'2022-06-07 19:34:58.703' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[PenaltyError] OFF

/****** Dữ liệu bảng Salary ******/
SET IDENTITY_INSERT [dbo].[Salary] ON 
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, N'Thực tập sinh', 500000, 500000, 1, CAST(N'2022-06-07 18:54:43.473' AS DateTime), CAST(N'2022-06-12 11:15:34.950' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, N'Junior Developer', 1000000, 500000, 2, CAST(N'2022-06-07 18:57:46.900' AS DateTime), CAST(N'2022-06-12 11:17:11.620' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, N'Senior Developer', 1500000, 600000, 2, CAST(N'2022-06-07 18:57:56.580' AS DateTime), CAST(N'2022-06-12 11:17:18.357' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, N'IT Support',800000, 500000, 1, CAST(N'2022-06-07 19:21:36.110' AS DateTime), NULL, 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (5, N'IT Helpdesk', 900000, 1000000, 3, CAST(N'2022-06-07 19:38:09.623' AS DateTime), CAST(N'2022-06-12 11:17:22.767' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (6, N'IT Employee', 810000, 400000, 2, CAST(N'2022-06-07 19:38:33.903' AS DateTime), CAST(N'2022-06-12 11:17:27.383' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (7, N'Manager', 3400000, 1000000, 5, CAST(N'2022-06-08 00:43:18.850' AS DateTime), CAST(N'2022-06-12 11:17:31.130' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (8, N'IT Sales Executive', 1680000, 500000, 5, CAST(N'2022-06-08 00:43:27.497' AS DateTime), CAST(N'2022-06-12 11:17:35.983' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (9, N'IT Sales Manager', 3050000, 500000, 5, CAST(N'2022-06-08 00:43:56.883' AS DateTime), CAST(N'2022-06-12 11:17:43.607' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (10, N'Data Scientist', 3150000, 500000, 4, CAST(N'2022-06-08 00:46:20.560' AS DateTime), CAST(N'2022-06-12 11:17:47.743' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (11, N'Data Engineer', 2022000, 700000, 4, CAST(N'2022-06-08 00:46:27.133' AS DateTime), CAST(N'2022-06-12 11:17:54.133' AS DateTime), 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (12, N'Technical Architect', 5000000, 1000000, 6, CAST(N'2022-06-13 11:33:14.503' AS DateTime), NULL, 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (13, N'Solution Architect', 6000000, 2000000, 6, CAST(N'2022-11-28 22:28:40.030' AS DateTime), NULL, 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (14, N'Programmer', 1350000, 800000, 6, CAST(N'2022-11-28 22:28:40.030' AS DateTime), NULL, 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (15, N'Project Manager', 4150000, 1500000, 6, CAST(N'2022-11-28 22:28:40.030' AS DateTime), NULL, 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (16, N'Program Manager', 5000000, 1500000, 6, CAST(N'2022-11-28 22:28:40.030' AS DateTime), NULL, 0)
INSERT [dbo].[Salary] ([Id], [Name], [SalaryValue], [Allowance], [DepartmentId], [DateCreated], [DateModified], [IsDeleted]) VALUES (17, N'Technical Director', 30000000, 1500000, 6, CAST(N'2022-11-28 22:28:40.030' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Salary] OFF

/****** Dữ liệu bảng SalaryAdvance ******/
SET IDENTITY_INSERT [dbo].[SalaryAdvance] ON 
INSERT [dbo].[SalaryAdvance] ([Id], [EmployeeId], [ValueAdvance], [DateAdvance], [Reasion], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, 4, 250000, CAST(N'2022-06-11 11:48:50.000' AS DateTime), N'Hưởng lương theo sản phẩm', CAST(N'2022-06-13 11:49:11.583' AS DateTime), NULL, 0)
INSERT [dbo].[SalaryAdvance] ([Id], [EmployeeId], [ValueAdvance], [DateAdvance], [Reasion], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, 5, 400000, CAST(N'2022-07-14 21:11:08.000' AS DateTime), N'Theo thỏa thuận', CAST(N'2022-07-15 21:11:33.630' AS DateTime), NULL, 0)
INSERT [dbo].[SalaryAdvance] ([Id], [EmployeeId], [ValueAdvance], [DateAdvance], [Reasion], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, 6, 500000, CAST(N'2022-07-15 22:11:08.000' AS DateTime), N'Tạm đình chỉ công việc', CAST(N'2022-07-15 21:11:33.630' AS DateTime), NULL, 0)
INSERT [dbo].[SalaryAdvance] ([Id], [EmployeeId], [ValueAdvance], [DateAdvance], [Reasion], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, 7, 300000, CAST(N'2022-07-16 23:11:08.000' AS DateTime), N'Nghỉ hàng năm', CAST(N'2022-07-15 21:11:33.630' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[SalaryAdvance] OFF

/****** Dữ liệu bảng Employee ******/
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, NULL, N'Nguyễn Võ Song Toàn', CAST(N'1998-06-08 00:21:03.000' AS DateTime), N'Nam', N'adamwilling.2002@gmail.com', N'4358767769', N'0369572542', N'Tiền Giang', 300000, 2, 1, 2, 1, N'songtoan', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 1)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, NULL, N'Lê Vũ Thế Khôi', CAST(N'2000-01-02 00:21:03.000' AS DateTime), N'Nam', N'khoilvt.2002@gmail.com', N'345108632157', N'0369348438', N'Bình Định', 200000, 2, 4, 2, 1, N'thekhoi', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 1)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, NULL, N'Huỳnh Hạo Nhị', CAST(N'2002-06-09 00:21:03.000' AS DateTime), N'Nam', N'nhihh.2002@gmail.com', N'4365108632158', N'0769572942', N'TPHCM', 150000, 2, 3, 3, 1, N'haonhi', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 1)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, NULL, N'Nguyễn Đức Linh', CAST(N'2000-06-10 00:22:03.000' AS DateTime), N'Nam', N'linhnd.2002@gmail.com', N'43108632159', N'0369572542', N'Bình Phước', 100000, 2, 5, 2, 1, N'duclinh', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 1)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (5, NULL, N'Trần Minh Duy', CAST(N'2002-06-08 00:21:03.000' AS DateTime), N'Nam', N'duynm.2002@gmail.com', N'345108632160', N'022372542', N'Cà Mau', 300000, 5, 2, 1, 0, N'minhduy', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (6, NULL, N'Nguyễn Hoa Văn', CAST(N'2002-06-08 00:21:03.000' AS DateTime), N'Nam', N'hoavan@gmail.com', N'657108632161', N'023456', N'Kiên Giang', 200000, 2, 2, 1, 0, N'vanhoa', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (7, NULL, N'Nguyễn Trí Dũng', CAST(N'1997-06-08 00:43:59.333' AS DateTime), N'Nam', N'dungnt.2002@gmail.com', N'6554765757', N'0347573465', N'Hà Nội', 450000, 5, 9, 1, 0, N'dung', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (8, NULL, N'Bùi Tấn Đạt', CAST(N'1996-06-08 00:21:03.000' AS DateTime), N'Nam', N'datbt.2002@gmail.com', N'234108632161', N'043756743', N'Nghệ An', 560000, 5, 8, 1, 0, N'tandat', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (9, NULL, N'Trần Đông', CAST(N'2002-09-15 00:21:03.000' AS DateTime), N'Nam', N'dongt.2002@gmail.com', N'231086321562', N'067474223', N'Đồng Tháp', 500000, 2, 6, 1, 0, N'trandong', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (10, NULL, N'Nguyễn Thành Đồng', CAST(N'1996-06-08 00:21:03.000' AS DateTime), N'Nam', N'dongnt.2002@gmail.com', N'231086321563', N'026754374', N'Quãng Ngãi', 700000, 5, 9, 0, 0, N'thanhdong', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (11, NULL, N'Trần Minh Đức', CAST(N'2000-06-08 00:21:03.000' AS DateTime), N'Nam', N'ductm.2002@gmail.com', N'0223086321564', N'0746743244', N'Quãng Trị', 650000, 1, 1, 0, 0, N'tranduc', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (12, NULL, N'Trần Nguyên Hạnh', CAST(N'1997-08-01 00:46:28.000' AS DateTime), N'Nam', N'hanhtn.2002@gmail.com', N'4351086321565', N'0326424324', N'Thừa Thiên Huế', 105000, 4, 11, 0, 0, N'nguyenhanh', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (13, NULL, N'Trần Lê Ngọc Gia Hân', CAST(N'1991-01-26 00:21:03.000' AS DateTime), N'Nữ', N'han.2002@gmail.com', N'4302205303147', N'0237464234', N'Tiền Giang', 120000, 5, 9, 0, 0, N'giahan', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (14, NULL, N'Nguyễn Thị Diệu Hiền', CAST(N'1995-09-08 00:21:03.000' AS DateTime), N'Nữ', N'hien.2002@gmail.com', N'36453455543', N'0264264443', N'Phú Yên', 170000, 4, 10, 1, 0, N'thihien', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (15, NULL, N'Nguyễn Văn Hiền', CAST(N'1994-01-26 00:21:03.000' AS DateTime), N'Nam', N'hiennv.2002@gmail.com', N'346546678657', N'0264742324', N'Phú Yên', 180000, 3, 5, 0, 0, N'vanien', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (16, NULL, N'Lê Huy Hoàng', CAST(N'2002-05-07 00:21:03.000' AS DateTime), N'Nam', N'hoang.2002@gmail.com', N'432432423442', N'032645237', N'Đà Nẵng', 202200, 4, 11, 0, 0, N'huyhoang', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (17, NULL, N'Huỳnh Gia Huy', CAST(N'2000-06-08 10:38:01.297' AS DateTime), N'Nam', N'huyhg.2002@gmail.com', N'54654768435', N'028764723', N'Quãng Ninh', 207000, 2, 6, 0, 0, N'luonghuy', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (18, NULL, N'Lương Gia Huy', CAST(N'2002-11-12 05:27:25.970' AS DateTime), N'Nam', N'huylg.2002@gmail.com', N'00500810847', N'0322048559', N'01 Hồ Chí Minh', 500000, 2, 3, 1, 0, N'giahuy', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (19, NULL, N'Nguyễn Lê Huỳnh', CAST(N'2002-02-28 17:54:57.970' AS DateTime), N'Nam', N'huynhnl.2002@gmail.com', N'01942230347', N'01408078981', N'Quãng Bình', 200000, 2, 2, 1, 0, N'lehuynh', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (20, NULL, N'Nguyễn Thanh Hùng', CAST(N'2002-08-08 09:46:57.970' AS DateTime), N'Nam', N'hung.2002@gmail.com', N'00504688926', N'0280748246', N'Hà Nội', 400000, 3, 5, 1, 0, N'thanhhung', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (21, NULL, N'Lê Hoàng Khang', CAST(N'2002-03-22 00:06:32.970' AS DateTime), N'Nữ', N'khang.2002@gmail.com', N'01432831175', N'0487086480', N'Phú Yên', 100000, 4, 11, 1, 0, N'hoangkhang', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (22, NULL, N'Ngô Văn Khánh', CAST(N'2002-10-21 11:34:44.970' AS DateTime), N'Nam', N'khanh.2002@gmail.com', N'01845440436', N'0309809600', N'Hồ Chí Minh', 200000, 2, 6, 1, 0, N'vankhanh', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (23, NULL, N'Hồ Ngọc Khánh', CAST(N'2002-06-20 06:07:09.970' AS DateTime), N'Nam', N'khanhhn.2002@gmail.com', N'02050934127', N'0104039617', N'Dak Lak', 100000, 1, 1, 1, 0, N'ngokhanh', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (24, NULL, N'Hồ Ngọc Đăng Khoa', CAST(N'2002-04-26 06:07:09.970' AS DateTime), N'Nam', N'khoa.2002@gmail.com', N'02050934127', N'0104039617', N'Dak Lak', 100000, 1, 1, 1, 0, N'dangkhoa', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (25, NULL, N'Lê Phước Yên', CAST(N'2002-09-08 06:07:09.970' AS DateTime), N'Nam', N'yenlp.2002@gmail.com', N'02050934127', N'0104039617', N'Dak Lak', 100000, 1, 1, 1, 0, N'dangkhoa', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (26, NULL, N'Đỗ Trọng Khôi', CAST(N'2002-12-09 03:34:53.970' AS DateTime), N'Nam', N'khoidt.2002@gmail.com', N'087471422395', N'0627080631', N'Gia Lai', 300000, 5, 9, 1, 0, N'trongkhoi', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (27, NULL, N'Trương Hoàng Anh Khôi', CAST(N'2002-03-17 04:38:21.970' AS DateTime), N'Nam', N'khoitha.2002@gmail.com', N'00871332874', N'0725688732', N'Vũng Tàu', 500000, 2, 2, 1, 0, N'anhkhoi', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (28, NULL, N'Trần Ngô Nhật Khương', CAST(N'2002-05-17 05:13:10.970' AS DateTime), N'Nam', N'khuong.2002@gmail.com', N'01454625506', N'0727708919', N'Hồ Chí Minh', 100000, 5, 7, 1, 0, N'vankhuong', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (29, NULL, N'Phạm Trung Kiên', CAST(N'2002-09-18 06:17:12.970' AS DateTime), N'Nam', N'kienpt.2002@gmail.com', N'00289215229', N'0663945416', N'Hồ Chí Minh', 200000, 5, 9, 1, 0, N'trungkien', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (30, NULL, N'Vũ Trung Kiên', CAST(N'2022-07-02 20:35:40.970' AS DateTime), N'Nam', N'kienvt.2002@gmail.com', N'00795853007', N'955938682', N'Hồ Chí Minh', 400000, 5, 8, 1, 0, N'vutrungkien', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (31, NULL, N'Phạm Minh Long', CAST(N'2002-05-27 05:26:38.970' AS DateTime), N'Nam', N'longpm.2002@gmail.com', N'01242587031', N'0084512341', N'Quảng Ninh', 400000, 2, 2, 1, 0, N'minhlong', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (32, NULL, N'Đỗ Hoàng Khôi', CAST(N'2002-12-10 03:34:53.970' AS DateTime), N'Nam', N'khoidt.2002@gmail.com', N'087471422395', N'0627080631', N'Gia Lai', 300000, 5, 9, 1, 0, N'trongkhoi', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (33, NULL, N'Phạm Tấn Lộc', CAST(N'1999-03-23 03:56:50.970' AS DateTime), N'Nam', N'locpt.2002@gmail.com', N'0272191011', N'0974146089', N'Hà Nội', 100000, 1, 1, 1, 0, N'tanloc', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (34, NULL, N'Võ Thị Hồng Ngân', CAST(N'1999-07-27 07:41:06.970' AS DateTime), N'Nữ', N'ngan.2002@gmail.com', N'02079475384', N'0619868627', N'Hà Nội', 400000, 2, 6, 1, 0, N'thanhngan', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (35, NULL, N'Hồ Ngọc Nghĩa', CAST(N'2002-02-03 11:36:51.970' AS DateTime), N'Nam', N'nghiact.2002@gmail.com', N'00773885051', N'0186072962', N'Quảng Ninh', 200000, 2, 6, 1, 0, N'trongnghia', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (36, NULL, N'Nguyễn Thị Thanh Ngân', CAST(N'1992-07-27 07:41:06.970' AS DateTime), N'Nữ', N'ngan.2002@gmail.com', N'02079475384', N'0619868627', N'Hà Nội', 400000, 2, 6, 1, 0, N'thanhngan', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (37, NULL, N'Trần Thị Yến', CAST(N'2002-01-18 11:41:06.970' AS DateTime), N'Nữ', N'yentt.2002@gmail.com', N'052284979053', N'0911039205', N'Hà Nội', 300000, 2, 2, 1, 0, N'a234bcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (38, NULL, N'Cao Trọng Nghĩa', CAST(N'2004-02-03 11:36:51.970' AS DateTime), N'Nam', N'nghiact.2002@gmail.com', N'00773885051', N'0186072962', N'Quảng Ninh', 200000, 2, 6, 1, 0, N'trongnghia', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (39, NULL, N'Lê Tuấn Nghĩa', CAST(N'2002-01-18 13:16:46.970' AS DateTime), N'Nam', N'nghiatl.2002@gmail.com', N'01836792850', N'0455353542', N'Hà Nội', 100000, 2, 2, 1, 0, N'tuannghia', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (40, NULL, N'Huỳnh Nguyễn Như Nguyên', CAST(N'2002-08-28 05:09:17.970' AS DateTime), N'Nam', N'nguyenhnn.2002@gmail.com', N'00132870407', N'0194964815', N'Quảng Ninh', 300000, 2, 6, 1, 0, N'nhunguyen', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (41, NULL, N'Võ Hoàng Nguyên', CAST(N'2002-07-19 00:15:48.970' AS DateTime), N'Nam', N'nguyenvh.2002@gmail.com', N'00073572861', N'0489004464', N'Hồ Chí Minh', 500000, 1, 1, 1, 0, N'hoangnguyen', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (42, NULL, N'Văn Mai Thanh Nhật', CAST(N'2002-05-12 16:47:28.970' AS DateTime), N'Nam', N'nhat.2002@gmail.com', N'01299471001', N'02002-851125097', N'Hà Giang', 100000, 5, 8, 1, 0, N'thanhnhat', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (43, NULL, N'Lã Minh Phúc', CAST(N'1993-07-01 11:09:48.970' AS DateTime), N'Nam', N'phuclm.2002@gmail.com', N'01655029972', N'0373731142', N'Hà Tĩnh', 300000, 2, 3, 1, 0, N'abcde', N'minhphuc', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (44, NULL, N'Nguyễn Quang Phúc', CAST(N'2013-07-03 09:44:05.970' AS DateTime), N'Nam', N'phucnq.2002@gmail.com', N'01399905630', N'0472547462', N'Quảng Ninh', 400000, 4, 11, 1, 0, N'quangphuc', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (45, NULL, N'Võ Hoàng Phúc', CAST(N'2000-10-05 06:54:38.970' AS DateTime), N'Nam', N'phucvh.2002@gmail.com', N'01859994599', N'0250456986', N'Quảng Ninh', 400000, 1, 1, 1, 0, N'hoangphuc', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (46, NULL, N'Huỳnh Minh Phước', CAST(N'2002-02-01 15:39:09.970' AS DateTime), N'Nam', N'phuoc.2002@gmail.com', N'00849831332', N'928277289', N'Hà Nội', 500000, 3, 5, 1, 0, N'minhphuc', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (47, NULL, N'Phan Văn Thạch Quang', CAST(N'2002-12-30 12:08:23.970' AS DateTime), N'Nữ', N'quangpvt.2002@gmail.com', N'00307943176', N'0840918763', N'Hồ Chí Minh', 200000, 5, 7, 1, 0, N'thachquang', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (48, NULL, N'Trương Thị Thu Sương', CAST(N'2001-07-24 10:26:16.970' AS DateTime), N'Nam', N'suong.2002@gmail.com', N'01837723287', N'0237244122', N'Quảng Ninh', 500000, 4, 10, 1, 0, N'thusuong', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (49, NULL, N'Nguyễn Chí Tâm', CAST(N'2002-12-31 08:24:11.970' AS DateTime), N'Nam', N'tam.2002@gmail.com', N'01372693624', N'0617163337', N'016 Hà Nội', 100000, 4, 10, 1, 0, N'chitam', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (50, NULL, N'Nguyễn Duy Thái', CAST(N'2000-08-17 02:55:20.970' AS DateTime), N'Nam', N'thai.2002@gmail.com', N'00228510406', N'0714295630', N'Bình Định', 100000, 1, 1, 1, 0, N'duythai', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (51, NULL, N'Đinh Quang Thắng', CAST(N'1996-03-22 01:08:08.970' AS DateTime), N'Nam', N'thangnkq.2002@gmail.com', N'00051641485', N'0851778153', N'Quảng Ninh', 200000, 3, 5, 1, 0, N'quangthang', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (52, NULL, N'Nguyễn Khoa Quang Thắng', CAST(N'1993-06-16 10:52:16.970' AS DateTime), N'Nam', N'thangnq.2002@gmail.com', N'00027179507', N'959289042', N'Hà Nội', 300000, 3, 5, 1, 0, N'quocthang', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (53, NULL, N'Nguyễn Quốc Thắng', CAST(N'2002-04-22 08:52:01.970' AS DateTime), N'Nam', N'thanh.2002@gmail.com', N'01843791329', N'0769345884', N'Hồ Chí Minh', 500000, 1, 1, 1, 0, N'thang', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (54, NULL, N'Trần Văn Thắng', CAST(N'1993-09-25 04:08:39.970' AS DateTime), N'Nam', N'thangtv.2002@gmail.com', N'00173764793', N'0764147334', N'Quảng Ninh', 100000, 3, 5, 1, 0, N'thangtv', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (55, NULL, N'Đỗ Hoàng Thịnh', CAST(N'2002-12-18 18:30:10.970' AS DateTime), N'Nam', N'thinh.2002@gmail.com', N'01330566411', N'0835559494', N'Quảng Ninh', 400000, 5, 8, 1, 0, N'hoangthinh', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (56, NULL, N'Nguyễn Trần Văn Phương', CAST(N'2002-02-02 20:36:56.970' AS DateTime), N'Nam', N'phuongntv', N'0522818672199', N'0956213256', N'Bến Tre', 100000, 1, 1, 1, 0, N'abcd2354e', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (57, NULL, N'Lê Văn Việt', CAST(N'2002-05-11 12:47:48.970' AS DateTime), N'Nữ', N'viet.2002@gmail.com', N'00150536169', N'0655130935', N'Hồ Chí Minh', 100000, 4, 11, 1, 0, N'vanviet', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (58, NULL, N'Huỳnh Nguyễn Tín', CAST(N'1993-10-19 11:41:43.970' AS DateTime), N'Nam', N'tinhn.2002@gmail.com', N'00686266612', N'0336162858', N'Hồ Chí Minh', 100000, 3, 5, 1, 0, N'nguyentin', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (59, NULL, N'Phan Thanh Tín', CAST(N'2002-10-24 22:02:23.970' AS DateTime), N'Nữ', N'tinpt.2002@gmail.com', N'01555625843', N'0582638827', N'Bình Định', 300000, 1, 1, 1, 0, N'thanhtin', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (60, NULL, N'Nguyễn Văn Trường Tốt', CAST(N'1992-07-17 21:26:55.970' AS DateTime), N'Nam', N'tot.2002@gmail.com', N'00125440319', N'0111778083', N'Quảng Ninh', 100000, 4, 10, 1, 0, N'truongtot', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (61, NULL, N'Trương Võ Toại', CAST(N'2002-10-26 10:45:06.970' AS DateTime), N'Nam', N'toai.2002@gmail.com', N'00913472693', N'0394907749', N'Hà Nội', 200000, 4, 10, 1, 0, N'votoai', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (62, NULL, N'Lê Phước Yên', CAST(N'2002-07-29 14:14:01.970' AS DateTime), N'Nam', N'yen.2002@gmail.com', N'00989305827', N'0112498816', N'Quảng Ninh', 200000, 4, 10, 1, 0, N'yen', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (63, NULL, N'Nguyễn Minh Trí', CAST(N'2002-09-11 12:23:16.970' AS DateTime), N'Nam', N'tri.2002@gmail.com', N'00833201387', N'0229351496', N'Hồ Chí Minh', 400000, 1, 1, 1, 0, N'quoctri', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (64, NULL, N'Võ Như Ý', CAST(N'2002-04-01 23:12:08.970' AS DateTime), N'Nữ', N'y.2002@gmail.com', N'01723146266', N'0054003415', N'Quảng Ninh', 100000, 3, 5, 1, 0, N'nhuy', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (65, NULL, N'Phan Thị Bình', CAST(N'2002-05-12 22:50:27.970' AS DateTime), N'Nam', N'binh.2002@gmail.com', N'00886870451', N'0758079720', N'Bình Định', 500000, 2, 6, 1, 0, N'abcde1', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (66, NULL, N'Phạm Thái Tuấn', CAST(N'2002-10-09 15:22:35.970' AS DateTime), N'Nam', N'tuan.2002@gmail.com', N'00524307088', N'0186124733', N'Bình Định', 100000, 3, 5, 1, 0, N'abcde2', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (67, NULL, N'Nguyễn Ngọc Tuyên', CAST(N'2022-09-29 05:07:50.970' AS DateTime), N'Nam', N'tuyennn.2002@gmail.com', N'01293580653', N'0985301721', N'Hà Nội', 500000, 1, 1, 1, 0, N'a13bcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (68, NULL, N'Phan Văn Ngọc', CAST(N'2004-10-09 21:51:09.970' AS DateTime), N'Nam', N'ngoc.2002@gmail.com', N'01169712532', N'0269548687', N'Quảng Ninh', 500000, 3, 5, 1, 0, N'abcde3', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (69, NULL, N'Phan Ngọc Anh', CAST(N'2002-09-01 15:12:06.970' AS DateTime), N'Nữ', N'anhpn.2002@gmail.com', N'01397691018', N'0059964641', N'Cà Mau', 400000, 1, 1, 1, 0, N'a98bcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (70, NULL, N'Nguyễn Văn Tuyên', CAST(N'1996-03-03 01:40:38.970' AS DateTime), N'Nam', N'tuyen.2002@gmail.com', N'01855919025', N'938521307', N'Quảng Ninh', 400000, 1, 1, 1, 0, N'abcde4', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (71, NULL, N'Tạ Thị Bình', CAST(N'2002-08-22 06:45:44.970' AS DateTime), N'Nữ', N'binhtt.2002@gmail.com', N'01161943419', N'0407452222', N'Vũng Tàu', 300000, 5, 8, 1, 0, N'abcde5', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (72, NULL, N'Phan Thị Tuyền', CAST(N'2002-09-25 18:45:19.970' AS DateTime), N'Nữ', N'tuyen.2002@gmail.com', N'01589537749', N'901262224', N'Hà Nội', 400000, 3, 5, 1, 0, N'abcde6', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (73, NULL, N'Tạ Ngọc Tuyên', CAST(N'2002-04-15 05:02:01.970' AS DateTime), N'Nam', N'tuyentn.2002@gmail.com', N'01637318958', N'0064475300', N'Hồ Chí Minh', 500000, 1, 1, 1, 0, N'23865abcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (74, NULL, N'Lê Mạnh Hùng', CAST(N'2019-04-22 01:24:59.970' AS DateTime), N'Nữ', N'hunglm.2002@gmail.com', N'00359554161', N'0882550101', N'Bến Tre', 500000, 2, 3, 1, 0, N'abcde7', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (75, NULL, N'Trần Thị Phương', CAST(N'2013-07-05 07:23:48.970' AS DateTime), N'Nữ', N'phuong.2002@gmail.com', N'01724121404', N'0267200022', N'5 Cà Mau', 500000, 3, 5, 1, 0, N'abcde8', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (76, NULL, N'Vũ Thành Hiếu', CAST(N'2002-05-10 06:06:43.970' AS DateTime), N'Nam', N'hieu.2002@gmail.com', N'01252613919', N'0319303085', N'Bến Tre', 500000, 1, 1, 1, 0, N'abcde9', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (77, NULL, N'Phan Thành Văn', CAST(N'2019-07-01 19:32:55.970' AS DateTime), N'Nữ', N'van.2002@gmail.com', N'01227421224', N'0667980836', N'Bến Tre', 400000, 1, 1, 1, 0, N'abcde10', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (78, NULL, N'Trần Đình Minh Quỳnh', CAST(N'1993-11-11 21:01:34.970' AS DateTime), N'Nam', N'quynh.2002@gmail.com', N'01096167801', N'0725852969', N'Quảng Ninh', 100000, 3, 5, 1, 0, N'1abcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (79, NULL, N'Vũ Ngọc Việt', CAST(N'2002-12-18 06:03:06.970' AS DateTime), N'Nữ', N'vietvn.2002@gmail.com', N'01614869640', N'0790921629', N'Cà Mau', 400000, 2, 6, 1, 0, N'abc2143de', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (80, NULL, N'Trần Đình Thành Hiếu', CAST(N'2002-06-23 21:29:08.970' AS DateTime), N'Nữ', N'hieu.2002@gmail.com', N'00607283040', N'0348372057', N'Cà Mau', 500000, 4, 10, 1, 0, N'2abcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (81, NULL, N'Vũ Tiến Tuyên', CAST(N'1993-02-25 23:10:43.970' AS DateTime), N'Nam', N'tuyenvt.2002@gmail.com', N'02090282731', N'0751215463', N'Hồ Chí Minh', 400000, 5, 9, 1, 0, N'abc657de', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (82, NULL, N'Nguyễn Trần Thành Anh', CAST(N'2019-09-30 17:27:31.970' AS DateTime), N'Nam', N'anhntt.2002@gmail.com', N'01214638362', N'0900743625', N'Bình Định', 400000, 5, 9, 1, 0, N'a588bcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (83, NULL, N'Lê Thị Yến', CAST(N'2002-10-16 04:14:01.970' AS DateTime), N'Nữ', N'yentlt.2002@gmail.com', N'00074477301', N'0085049922', N'Hà Nội', 300000, 4, 10, 1, 0, N'ab2cde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (84, NULL, N'Trần Đình Minh Yến', CAST(N'1996-08-06 02:09:40.970' AS DateTime), N'Nữ', N'yentdm.2002@gmail.com', N'01761485032', N'0232126986', N'Bến Tre', 300000, 3, 5, 1, 0, N'ab2cde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (85, NULL, N'Mai Mạnh Anh', CAST(N'2007-05-08 10:43:56.970' AS DateTime), N'Nam', N'anh.2002@gmail.com', N'00929289373', N'0039718113', N'Cà Mau', 400000, 2, 2, 1, 0, N'abcd1e', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (86, NULL, N'Phan Minh Phương', CAST(N'2002-04-07 19:03:49.970' AS DateTime), N'Nam', N'phuongpm.2002@gmail.com', N'01220457349', N'0105873363', N'Quảng Ngãi', 500000, 2, 2, 1, 0, N'ab345cde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (87, NULL, N'Nguyễn Thành Phương', CAST(N'2002-02-10 19:23:59.970' AS DateTime), N'Nam', N'phuongnt.2002@gmail.com', N'00252966803', N'0092542236', N'Hà Nội', 100000, 1, 1, 1, 0, N'a21bcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (88, NULL, N'Lý Thành Hiếu', CAST(N'2016-08-14 14:11:48.970' AS DateTime), N'Nữ', N'hieult.2002@gmail.com', N'01235731562', N'0632941015', N'Hồ Chí Minh', 500000, 5, 7, 1, 0, N'abc21de', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (89, NULL, N'Nguyễn Minh Anh', CAST(N'2002-01-17 14:24:08.970' AS DateTime), N'Nam', N'anhnm.2002@gmail.com', N'01289387923', N'0763965191', N'Quảng Ninh', 400000, 3, 5, 1, 0, N'a467b3cde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (90, NULL, N'Phan Thành Hải', CAST(N'2011-12-31 05:12:24.970' AS DateTime), N'Nữ', N'haipt.2002@gmail.com', N'00053520609', N'0106408919', N'Khuất Duy Tiến', 300000, 1, 1, 1, 0, N'ab24cde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (91, NULL, N'Vũ Thị Bình', CAST(N'2002-03-15 07:12:25.970' AS DateTime), N'Nữ', N'binhvt.2002@gmail.com', N'00436814916', N'0669515380', N'Hồ Chí Minh', 100000, 5, 8, 1, 0, N'ab24cde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (92, NULL, N'Tạ Thành Hùng', CAST(N'2016-04-29 16:58:43.970' AS DateTime), N'Nam', N'hungth.2002@gmail.com', N'01796742415', N'0551973127', N'Hà Nội', 400000, 3, 5, 1, 0, N'abcde65', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (93, NULL, N'Vũ Tiến Tài', CAST(N'2002-01-22 17:26:46.970' AS DateTime), N'Nam', N'tai.2002@gmail.com', N'02083664166', N'0777052502', N'Bình Định', 400000, 3, 5, 1, 0, N'abcd12e12', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (94, NULL, N'Trần Đình Văn Bình', CAST(N'2002-10-04 18:02:53.970' AS DateTime), N'Nam', N'binhtdv.2002@gmail.com', N'01568650679', N'0986329737', N'Hà Nội', 300000, 4, 11, 1, 0, N'abcd214e', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (95, NULL, N'Tạ Mạnh Phương', CAST(N'1996-08-25 02:58:12.970' AS DateTime), N'Nam', N'phuongtm.2002@gmail.com', N'00978968307', N'0953687544', N'Hồ Chí Minh', 400000, 1, 1, 1, 0, N'abcd213e', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (96, NULL, N'Phan Văn Văn', CAST(N'2011-04-02 17:01:00.970' AS DateTime), N'Nữ', N'van.2002@gmail.com', N'00477602493', N'0340302052', N'Cà Mau', 300000, 4, 10, 1, 0, N'abcd23e', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (97, NULL, N'Nguyễn Thành Yến', CAST(N'2019-11-25 23:37:27.970' AS DateTime), N'Nữ', N'yen.2002@gmail.com', N'01800053858', N'0189133630', N'Hà Nội', 200000, 1, 1, 1, 0, N'abc123de', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (98, NULL, N'Phan Ngọc Bình', CAST(N'2001-03-14 23:27:09.970' AS DateTime), N'Nữ', N'binh.2002@gmail.com', N'00658651837', N'0612969477', N'Hồ Chí Minh', 200000, 4, 11, 1, 0, N'ab213cde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (99, NULL, N'Mai Tiến Hùng', CAST(N'2016-03-23 04:23:42.970' AS DateTime), N'Nữ', N'hungmt.2002@gmail.com', N'01916292675', N'0570294420', N'Bến Tre', 300000, 3, 5, 1, 0, N'abcde13', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (100, NULL, N'Phan Thanh Việt', CAST(N'2002-12-19 06:03:06.970' AS DateTime), N'Nam', N'vietpt.2002@gmail.com', N'05336169640', N'0790997629', N'Cần Thơ', 400000, 2, 6, 1, 0, N'abc2143de', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (101, NULL, N'Nguyễn Hương Tuyền', CAST(N'2002-08-15 05:02:01.970' AS DateTime), N'Nữ', N'tuyennh.2002@gmail.com', N'0533637318958', N'0964475300', N'Hồ Chí Minh', 500000, 1, 1, 1, 0, N'23865abcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (102, NULL, N'Lã Văn Minh Phúc', CAST(N'2002-09-01 15:12:06.970' AS DateTime), N'Nữ', N'phuclvm.2002@gmail.com', N'057397691018', N'0859964641', N'Gia Lai', 900000, 1, 1, 1, 0, N'a98bcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (103, NULL, N'Nguyễn Tuấn Kiệt', CAST(N'2022-09-05 05:07:50.970' AS DateTime), N'Nam', N'kietnt.2002@gmail.com', N'052293580653', N'0986917241', N'Hà Nội', 500000, 1, 1, 1, 0, N'a13bcde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (104, NULL, N'Nguyễn Huỳnh Phương', CAST(N'2002-02-10 20:36:56.970' AS DateTime), N'Nam', N'phuongnh', N'0522818672199', N'0895621326', N'Bình Định', 100000, 1, 1, 1, 0, N'abcd2354e', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (105, NULL, N'Vũ Mạnh Ngọc', CAST(N'2009-04-12 05:04:29.970' AS DateTime), N'Nam', N'A74250C9-81C8@gmail.com', N'00580477254', N'0945816277', N'Cà Mau', 300000, 1, 1, 1, 0, N'12ab13cde', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (106, NULL, N'Nguyễn Thanh Trung', CAST(N'2022-03-06 00:11:13.970' AS DateTime), N'Nam', N'trungnt.2002@gmail.com', N'02083801832', N'925921465', N'Hồ Chí Minh', 300000, 2, 2, 1, 0, N'ab654cd213e', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
INSERT [dbo].[Employee] ([Id], [Avatar], [FullName], [DayOfBirth], [Gender], [Email], [IdCard], [Phone], [Address], [InsuranceSociety], [DepartmentId], [SalaryId], [IsWorking], [IsManager], [UserName], [Password], [DateCreated], [DateModified], [IsDeleted]) VALUES (107, NULL, N'Tạ Thành Hùng', CAST(N'2016-04-29 16:58:43.970' AS DateTime), N'Nam', N'hungth.2002@gmail.com', N'01796742415', N'0551973127', N'Hà Nội', 400000, 3, 5, 1, 0, N'abcde65', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF

/****** Dữ liệu bảng EmployeeAndBonus ******/
SET IDENTITY_INSERT [dbo].[EmployeeAndBonus] ON 
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, 5, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, 6, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, 7, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, 8, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (5, 9, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (6, 10, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (7, 11, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (8, 12, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (9, 13, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (10, 14, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (11, 15, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (12, 16, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (13, 17, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (14, 18, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (15, 19, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (16, 20, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (17, 21, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (18, 22, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (19, 23, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (20, 24, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (21, 25, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (22, 26, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (23, 27, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (24, 28, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (25, 29, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (26, 30, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (27, 31, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (28, 32, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (29, 33, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (30, 34, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (31, 35, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (32, 36, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (33, 37, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (34, 38, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (35, 39, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (36, 40, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (37, 41, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (38, 42, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (39, 43, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (40, 44, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (41, 45, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (42, 46, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (43, 47, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (44, 48, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (45, 49, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (46, 50, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (47, 51, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (48, 52, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (49, 53, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (50, 54, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (51, 55, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (52, 56, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (53, 57, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (54, 58, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (55, 59, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (56, 60, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (57, 61, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (58, 62, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (59, 63, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (60, 64, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (61, 65, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (62, 66, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (63, 67, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (64, 68, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (65, 69, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (66, 70, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (67, 71, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (68, 72, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (69, 73, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (70, 74, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (71, 75, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (72, 76, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (73, 77, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (74, 78, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (75, 79, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (76, 80, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (77, 81, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (78, 82, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (79, 83, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (80, 84, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (81, 85, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (82, 86, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (83, 87, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (84, 88, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (85, 89, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (86, 90, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (87, 91, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (88, 92, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (89, 93, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (90, 94, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (91, 95, 2, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (92, 96, 1, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (93, 97, 3, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (94, 98, 4, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (95, 99, 5, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (96, 100, 7, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (97, 101, 6, CAST(N'2022-06-11 11:39:31.000' AS DateTime), CAST(N'2022-06-13 11:39:43.143' AS DateTime), CAST(N'2022-06-24 20:15:01.137' AS DateTime), 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (98, 102, 8, CAST(N'2022-06-18 20:51:09.633' AS DateTime), CAST(N'2022-06-18 20:51:23.550' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (99, 103, 9, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
INSERT [dbo].[EmployeeAndBonus] ([Id], [EmployeeId], [BonusId], [DateBonus], [DateCreated], [DateModified], [IsDeleted]) VALUES (100, 104, 6, CAST(N'2022-06-16 20:51:09.000' AS DateTime), CAST(N'2022-06-18 20:51:30.830' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[EmployeeAndBonus] OFF

/****** Dữ liệu bảng EmployeeAndPenaltyError ******/
SET IDENTITY_INSERT [dbo].[EmployeeAndPenaltyError] ON 
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, 5, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, 6, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, 7, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, 8, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (5, 9, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (6, 10, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (7, 11, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (8, 12, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (9, 13, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (10, 14, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (11, 15, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (12, 16, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (13, 17, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (14, 18, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (15, 19, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (16, 20, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (17, 21, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (18, 22, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (19, 23, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (20, 24, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (21, 25, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (22, 26, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (23, 27, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (24, 28, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (25, 29, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (26, 30, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (27, 31, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (28, 32, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (29, 33, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (30, 34, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (31, 35, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (32, 36, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (33, 37, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (34, 38, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (35, 39, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (36, 40, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (37, 41, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (38, 42, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (39, 43, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (40, 44, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (41, 45, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (42, 46, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (43, 47, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (44, 48, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (45, 49, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (46, 50, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (47, 51, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (48, 52, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (49, 53, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (50, 54, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (51, 55, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (52, 56, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (53, 57, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (54, 58, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (55, 59, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (56, 60, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (57, 61, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (58, 62, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (59, 63, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (60, 64, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (61, 65, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (62, 66, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (63, 67, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (64, 68, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (65, 69, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (66, 70, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (67, 71, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (68, 72, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (69, 73, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (70, 74, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (71, 75, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (72, 76, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (73, 77, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (74, 78, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (75, 79, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (76, 80, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (77, 81, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (78, 82, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (79, 83, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (80, 84, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (81, 85, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (82, 86, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (83, 87, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (84, 88, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (85, 89, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (86, 90, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (87, 91, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (88, 92, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (89, 93, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (90, 94, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (91, 95, 1, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (92, 96, 3, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (93, 97, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (94, 98, 5, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (95, 99, 7, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (96, 100, 8, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (97, 101, 9, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (98, 102, 6, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (99, 103, 4, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
INSERT [dbo].[EmployeeAndPenaltyError] ([Id], [EmployeeId], [PenaltyId], [DatePenalty], [DateCreated], [DateModified], [IsDeleted]) VALUES (100, 104, 2, CAST(N'2022-06-14 11:41:52.000' AS DateTime), CAST(N'2022-06-13 11:41:59.613' AS DateTime), CAST(N'2022-06-24 20:15:07.507' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[EmployeeAndPenaltyError] OFF

/****** Dữ liệu bảng WorkingDay ******/
SET IDENTITY_INSERT [dbo].[WorkingDay] ON 
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (1, 4, 500000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:25:57.053' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (2, 5, 3000000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:25:57.057' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (3, 6, 500000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:25:57.057' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (4, 7, 150000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:25:57.057' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (5, 8, 600000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:25:57.057' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (6, 9, 1500000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:25:57.060' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (7, 14, 180000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:25:57.060' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (8, 2, 150000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:04.810' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (9, 3, 150000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:04.813' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (10, 4, 500000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:04.813' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (11, 5, 3000000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:04.817' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (12, 6, 500000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:04.817' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (13, 7, 150000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:04.817' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (14, 8, 600000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:04.820' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (15, 9, 1500000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:04.820' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (16, 14, 180000, CAST(N'2022-06-17 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:04.820' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (17, 2, 150000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:15.270' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (18, 3, 150000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:15.270' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (19, 4, 500000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:15.273' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (20, 5, 3000000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:15.273' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (21, 6, 500000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:15.273' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (22, 7, 150000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:15.277' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (23, 8, 600000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:15.277' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (24, 2, 150000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:25:57.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (25, 3, 150000, CAST(N'2022-06-16 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:25:57.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (26, 9, 1500000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:15.280' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (27, 14, 180000, CAST(N'2022-06-14 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:15.280' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (28, 2, 150000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:26.633' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (29, 3, 150000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:26.637' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (30, 4, 500000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:26.637' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (31, 5, 3000000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:26.637' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (32, 6, 500000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:26.637' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (33, 2, 150000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:37.277' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (34, 3, 150000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:37.280' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (35, 4, 500000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:37.280' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (36, 5, 3000000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:37.280' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (37, 6, 500000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:37.280' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (38, 7, 150000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:37.283' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (39, 8, 600000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:37.283' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (40, 9, 1500000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:37.283' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (41, 14, 180000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:37.287' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (42, 2, 150000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:46.007' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (43, 3, 150000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:46.007' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (44, 4, 500000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:46.010' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (45, 5, 3000000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:46.010' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (46, 6, 500000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:46.010' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (47, 7, 150000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:46.010' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (48, 8, 600000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:46.010' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (49, 9, 1500000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:46.013' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (50, 14, 180000, CAST(N'2022-06-09 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:46.013' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (51, 2, 150000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:52.723' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (52, 3, 150000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:52.727' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (53, 4, 500000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:52.727' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (54, 5, 3000000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:52.727' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (55, 6, 500000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:52.730' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (56, 7, 150000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:52.730' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (57, 8, 600000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:52.730' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (58, 9, 1500000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:52.733' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (59, 14, 180000, CAST(N'2022-06-10 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:22:52.733' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (60, 2, 150000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.733' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (61, 3, 150000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.737' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (62, 4, 500000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.737' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (63, 5, 3000000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.737' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (64, 6, 500000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.740' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (65, 7, 150000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.740' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (66, 8, 600000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.740' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (67, 9, 1500000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.740' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (68, 14, 180000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:22:59.743' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (69, 2, 150000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:23:54.950' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (70, 3, 150000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:23:54.950' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (71, 4, 500000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:23:54.953' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (72, 5, 3000000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:23:54.957' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (73, 6, 500000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:23:54.957' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (74, 7, 150000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:23:54.960' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (75, 8, 600000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:23:54.960' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (76, 9, 1500000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:23:54.960' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (77, 14, 180000, CAST(N'2022-06-12 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:23:54.963' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (78, 2, 150000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:24:01.173' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (79, 3, 150000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:24:01.177' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (80, 4, 500000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:24:01.177' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (81, 5, 3000000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:24:01.177' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (82, 6, 500000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:24:01.177' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (83, 7, 150000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:24:01.180' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (84, 8, 600000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:24:01.180' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (85, 9, 1500000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-13 01:24:01.180' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (86, 14, 180000, CAST(N'2022-06-13 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-13 01:24:01.180' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (87, 7, 150000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:26.640' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (88, 8, 600000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:26.640' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (89, 9, 1500000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-18 16:26:26.640' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (90, 14, 180000, CAST(N'2022-06-20 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-18 16:26:26.640' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (91, 2, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:18.260' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (92, 3, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:18.267' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (93, 4, 500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:18.267' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (94, 5, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:18.267' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (95, 6, 500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:18.270' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (96, 7, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:18.270' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (97, 8, 600000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:18.270' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (98, 9, 1500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:18.270' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (99, 14, 180000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:18.273' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (100, 2, 150000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:25.467' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (101, 3, 150000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:25.470' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (102, 4, 500000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:25.470' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (103, 5, 3000000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:25.470' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (104, 6, 500000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:25.473' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (105, 7, 150000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:25.473' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (106, 8, 600000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:25.473' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (107, 9, 1500000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:25.477' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (108, 14, 180000, CAST(N'2022-06-02 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:25.477' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (109, 2, 150000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:32.300' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (110, 3, 150000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:32.300' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (111, 4, 500000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:32.303' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (112, 5, 3000000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:32.303' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (113, 6, 500000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:32.303' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (114, 7, 150000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:32.307' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (115, 8, 600000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:32.307' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (116, 9, 1500000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:32.310' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (117, 14, 180000, CAST(N'2022-06-03 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:32.310' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (118, 2, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.617' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (119, 3, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.617' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (120, 4, 500000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.617' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (121, 5, 3000000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.617' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (122, 6, 500000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.620' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (123, 7, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.620' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (124, 8, 600000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.620' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (125, 9, 1500000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.620' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (126, 14, 180000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:39.620' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (127, 2, 150000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:45.803' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (128, 3, 150000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:45.803' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (129, 4, 500000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:45.807' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (130, 5, 3000000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:45.807' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (131, 6, 500000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:45.807' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (132, 7, 150000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:45.810' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (133, 8, 600000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:45.810' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (134, 9, 1500000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:45.810' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (135, 14, 180000, CAST(N'2022-06-05 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:45.813' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (136, 2, 150000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:55.720' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (137, 3, 150000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:55.720' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (138, 4, 500000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:55.720' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (139, 5, 3000000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:55.723' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (140, 6, 500000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:17:55.723' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (141, 7, 150000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:55.723' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (142, 8, 600000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:55.723' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (143, 9, 1500000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:55.727' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (144, 14, 180000, CAST(N'2022-06-06 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:17:55.727' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (145, 2, 150000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:01.427' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (146, 3, 150000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:01.427' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (147, 4, 500000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:01.427' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (148, 5, 3000000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:01.430' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (149, 6, 500000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:01.430' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (150, 7, 150000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:01.430' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (151, 8, 600000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:01.430' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (152, 9, 1500000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:01.430' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (153, 14, 180000, CAST(N'2022-06-07 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:01.430' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (154, 2, 150000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:18.173' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (155, 3, 150000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:18.177' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (156, 4, 500000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:18.177' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (157, 5, 3000000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:18.180' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (158, 6, 500000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:18.180' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (159, 7, 150000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:18.180' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (160, 8, 600000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:18.183' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (161, 9, 1500000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:18.183' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (162, 14, 180000, CAST(N'2022-06-15 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:18.183' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (163, 2, 150000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:27.693' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (164, 3, 150000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:27.697' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (165, 4, 500000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:27.697' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (166, 5, 3000000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:27.697' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (167, 6, 500000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:27.700' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (168, 7, 150000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:27.700' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (169, 8, 600000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:27.700' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (170, 9, 1500000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:27.707' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (171, 14, 180000, CAST(N'2022-06-18 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:27.707' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (172, 2, 150000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:33.743' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (173, 3, 150000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:33.747' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (174, 4, 500000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:33.747' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (175, 5, 3000000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:33.747' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (176, 6, 500000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:33.747' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (177, 7, 150000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:33.747' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (178, 8, 600000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:33.747' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (179, 9, 1500000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:33.750' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (180, 14, 180000, CAST(N'2022-06-19 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:33.750' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (181, 2, 150000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.380' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (182, 3, 150000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.380' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (183, 4, 500000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.380' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (184, 5, 3000000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.380' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (185, 6, 500000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.383' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (186, 7, 150000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.383' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (187, 8, 600000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.383' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (188, 9, 1500000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.383' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (189, 14, 180000, CAST(N'2022-06-21 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:42.387' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (190, 2, 150000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:48.237' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (191, 3, 150000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:48.237' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (192, 4, 500000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:48.240' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (193, 5, 3000000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:48.240' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (194, 6, 500000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:48.240' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (195, 7, 150000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:48.243' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (196, 8, 600000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:18:48.243' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (197, 9, 1500000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:48.243' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (198, 14, 180000, CAST(N'2022-06-22 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:18:48.247' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (199, 2, 150000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:10.940' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (200, 3, 150000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:10.940' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (201, 4, 500000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:10.940' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (202, 5, 3000000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:10.943' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (203, 6, 500000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:10.943' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (204, 7, 150000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:10.943' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (205, 8, 600000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:10.947' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (206, 9, 1500000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:10.947' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (207, 14, 180000, CAST(N'2022-06-23 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:10.947' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (208, 2, 150000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:19.410' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (209, 3, 150000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:19.413' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (210, 4, 500000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:19.413' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (211, 5, 3000000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:19.413' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (212, 6, 500000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:19.413' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (213, 7, 150000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:19.417' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (214, 8, 600000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:19.417' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (215, 9, 1500000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:19.417' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (216, 14, 180000, CAST(N'2022-06-24 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:19.417' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (217, 2, 150000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:25.267' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (218, 3, 150000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:25.273' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (219, 4, 500000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:25.280' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (220, 5, 3000000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:25.283' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (221, 6, 500000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:25.287' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (222, 7, 150000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:25.293' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (223, 8, 600000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:25.297' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (224, 9, 1500000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:25.300' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (225, 14, 180000, CAST(N'2022-06-25 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:25.307' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (226, 2, 150000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.033' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (227, 3, 150000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (228, 4, 500000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (229, 5, 3000000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (230, 6, 500000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (231, 7, 150000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (232, 8, 600000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (233, 9, 1500000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (234, 14, 180000, CAST(N'2022-06-26 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:32.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (235, 2, 150000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:39.343' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (236, 3, 150000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:39.343' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (237, 4, 500000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:39.347' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (238, 5, 3000000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:39.347' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (239, 6, 500000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:39.347' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (240, 7, 150000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:39.350' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (241, 8, 600000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:39.350' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (242, 9, 1500000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:39.350' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (243, 14, 180000, CAST(N'2022-06-27 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:39.350' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (244, 2, 150000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.903' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (245, 3, 150000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.903' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (246, 4, 500000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.903' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (247, 5, 3000000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.907' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (248, 6, 500000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.907' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (249, 7, 150000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.907' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (250, 8, 600000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.907' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (251, 9, 1500000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.910' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (252, 14, 180000, CAST(N'2022-06-28 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:44.910' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (253, 2, 150000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:50.670' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (254, 3, 150000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:50.670' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (255, 4, 500000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:50.670' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (256, 5, 3000000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:50.670' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (257, 6, 500000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:50.673' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (258, 7, 150000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:50.673' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (259, 8, 600000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:50.673' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (260, 9, 1500000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:50.673' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (261, 14, 180000, CAST(N'2022-06-29 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:50.677' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (262, 2, 150000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:56.887' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (263, 3, 150000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:56.887' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (264, 4, 500000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:56.887' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (265, 5, 3000000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:56.887' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (266, 6, 500000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:56.890' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (267, 7, 150000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:56.890' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (268, 8, 600000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:56.890' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (269, 9, 1500000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 1, CAST(N'2022-06-19 00:19:56.890' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (270, 14, 180000, CAST(N'2022-06-30 00:00:00.000' AS DateTime), 0, CAST(N'2022-06-19 00:19:56.890' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (271, 21, 1200000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-14 23:56:09.357' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (272, 44, 1200000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-14 23:56:09.363' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (273, 49, 180000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-14 23:56:09.363' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (274, 57, 1200000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-14 23:56:09.363' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (275, 60, 180000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-14 23:56:09.367' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (276, 61, 180000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-14 23:56:09.367' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (277, 62, 180000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-14 23:56:09.367' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (278, 80, 180000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-14 23:56:09.370' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (279, 83, 180000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-14 23:56:09.370' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (280, 94, 1200000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-14 23:56:09.370' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (281, 96, 180000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-14 23:56:09.370' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (282, 98, 1200000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-14 23:56:09.370' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (283, 24, 150000, CAST(N'2022-06-08 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-15 09:34:32.710' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (284, 88, 900000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.033' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (285, 90, 150000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.033' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (286, 91, 600000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.033' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (287, 93, 3000000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (288, 94, 1200000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (289, 95, 150000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (290, 96, 180000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (291, 97, 150000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.037' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (292, 98, 1200000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (293, 99, 3000000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (294, 100, 180000, CAST(N'2022-06-11 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-15 21:11:58.040' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (295, 18, 1000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.107' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (296, 19, 500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.110' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (297, 20, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.110' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (298, 21, 1200000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.110' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (299, 22, 1500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.110' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (300, 24, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.113' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (301, 26, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.113' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (302, 27, 500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.117' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (303, 28, 900000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.117' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (304, 29, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.117' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (305, 30, 600000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.120' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (306, 31, 500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.120' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (307, 32, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.120' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (308, 33, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.120' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (309, 34, 500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.120' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (310, 36, 1500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.123' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (311, 38, 1500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.123' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (312, 39, 500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.123' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (313, 40, 1500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.123' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (314, 41, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.127' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (315, 42, 600000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.127' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (316, 43, 1000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.127' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (317, 44, 1200000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.127' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (318, 45, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.130' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (319, 46, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.130' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (320, 47, 900000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.130' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (321, 48, 180000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.130' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (322, 49, 180000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.130' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (323, 50, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.133' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (324, 51, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.133' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (325, 64, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.143' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (326, 65, 1500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.143' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (327, 66, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.143' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (328, 68, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.147' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (329, 70, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.147' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (330, 71, 600000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.147' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (331, 72, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.147' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (332, 74, 1000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.150' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (333, 75, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.150' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (334, 76, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.150' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (335, 77, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.150' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (336, 78, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.150' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (337, 80, 180000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.150' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (338, 83, 180000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.153' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (339, 84, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.153' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (340, 85, 500000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.153' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (341, 87, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.153' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (342, 88, 900000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.157' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (343, 90, 150000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.157' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (344, 91, 600000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.157' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (345, 93, 3000000, CAST(N'2022-06-01 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:31:55.157' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (346, 24, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.833' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (347, 32, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.833' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (348, 41, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.833' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (349, 45, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.833' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (350, 50, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.833' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (351, 54, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-16 18:32:19.837' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (352, 59, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-16 18:32:19.837' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (353, 63, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-16 18:32:19.837' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (354, 70, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-16 18:32:19.837' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (355, 76, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-16 18:32:19.837' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (356, 77, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 1, CAST(N'2022-07-16 18:32:19.837' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (357, 87, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.840' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (358, 90, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.840' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (359, 95, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.840' AS DateTime), NULL, 0)
INSERT [dbo].[WorkingDay] ([Id], [EmployeeId], [SalaryCurrent], [Datework], [IsWorking], [DateCreated], [DateModified], [IsDeleted]) VALUES (360, 97, 150000, CAST(N'2022-06-04 00:00:00.000' AS DateTime), 0, CAST(N'2022-07-16 18:32:19.840' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[WorkingDay] OFF
GO


/****** Ràng buộc khóa ngoại ******/
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD CONSTRAINT [FK_Salary_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Department]
GO
ALTER TABLE [dbo].[SalaryAdvance] WITH CHECK ADD CONSTRAINT [FK_SalaryAdvance_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[SalaryAdvance] CHECK CONSTRAINT [FK_SalaryAdvance_Employee]
GO
ALTER TABLE [dbo].[Employee] WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[EmployeeAndBonus] WITH CHECK ADD CONSTRAINT [FK_EmployeeAndBonus_Bonus] FOREIGN KEY([BonusId])
REFERENCES [dbo].[Bonus] ([Id])
GO
ALTER TABLE [dbo].[EmployeeAndBonus] CHECK CONSTRAINT [FK_EmployeeAndBonus_Bonus]
GO
ALTER TABLE [dbo].[EmployeeAndBonus] WITH CHECK ADD CONSTRAINT [FK_EmployeeAndBonus_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmployeeAndBonus] CHECK CONSTRAINT [FK_EmployeeAndBonus_Employee]
GO
ALTER TABLE [dbo].[EmployeeAndPenaltyError]  WITH CHECK ADD CONSTRAINT [FK_EmployeeAndPenaltyError_PenaltyError] FOREIGN KEY([PenaltyId])
REFERENCES [dbo].[PenaltyError] ([Id])
GO
ALTER TABLE [dbo].[EmployeeAndPenaltyError] CHECK CONSTRAINT [FK_EmployeeAndPenaltyError_PenaltyError]
GO
ALTER TABLE [dbo].[EmployeeAndPenaltyError] WITH CHECK ADD CONSTRAINT [FK_EmployeeAndPenaltyError_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmployeeAndPenaltyError] CHECK CONSTRAINT [FK_EmployeeAndPenaltyError_Employee]
GO
ALTER TABLE [dbo].[WorkingDay] WITH CHECK ADD CONSTRAINT [FK_WorkingDay_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[WorkingDay] CHECK CONSTRAINT [FK_WorkingDay_Employee]
GO


/****** View BonusAll: lấy danh sách các mức khen thưởng ******/
CREATE VIEW [dbo].[BonusAll]
AS
	SELECT Id,Name,ValueBonus
	FROM Bonus
	WHERE IsDeleted = 0
GO

/****** View PenaltyAll: lấy danh sách các mức phạt ******/
CREATE VIEW [dbo].[PenaltyAll]
AS
	SELECT Id,Name,ValuePenalty 
	FROM PenaltyError
	WHERE IsDeleted = 0
GO

/****** View Departments: lấy danh sách các phòng ban ******/
CREATE VIEW [dbo].[Departments]
AS
	SELECT Id,Name,ParentId,Description
	FROM Department
	WHERE IsDeleted = 0
GO

/****** Hàm SalaryBases: lấy danh sách mức tiền lương tương ứng với từng phòng ban  ******/
CREATE FUNCTION [dbo].[SalaryBases] (
	-- Nếu không truyền tham số thì mặc định sẽ lấy tất cả các mức tiền lương của công ty
	@DepartmentId int
)
RETURNS TABLE
AS
RETURN (
	SELECT s.Id,s.Name,s.SalaryValue,s.Allowance,d.Name AS 'DepartmentName'
	FROM Salary AS s
	LEFT JOIN Department AS d ON s.DepartmentId=d.Id AND d.IsDeleted=0
	WHERE s.IsDeleted= 0 AND (@DepartmentId IS NULL OR s.DepartmentId=@DepartmentId)
)
GO

/****** Hàm CalculationSalaryEmployee: trả về bảng tính lương cho danh sách nhân viên ******/
CREATE FUNCTION [dbo].[CalculationSalaryEmployee]
(
	@pageIndex int,
	@pageSize int,
	@DepartmentId int,
	@StartDate datetime,
	@EndDate datetime,
	@NameSearch nvarchar(254)
)
RETURNS @outTable TABLE(IdEmployee int, FullName nvarchar(254),DepartmentName nvarchar(254),SalaryValue float, AllowanceValue float, TotalWork int,TotalSalaryBase float, InsuranceSociety float, BonusValue float, PenaltyValue float, AdvanceValue float,RealSalary float, Total int)
AS
BEGIN
	DECLARE @Total int;
	SELECT @Total = COUNT(*) FROM [Employee] AS e
	LEFT JOIN Department AS d ON e.DepartmentId=d.Id AND d.IsDeleted = 0
	LEFT JOIN Salary AS s ON e.SalaryId = s.Id AND e.IsDeleted= 0 
	WHERE e.IsManager=0 AND e.IsDeleted = 0 AND e.IsWorking = 1
		  AND (@DepartmentId IS NULL OR e.DepartmentId = @DepartmentId)
		  AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%');

	IF(@pageSize=0)
	BEGIN
		INSERT INTO @outTable
		SELECT e.Id AS 'IdEmployee',e.FullName,d.Name AS 'DepartmentName',s.SalaryValue,s.Allowance AS 'AllowanceValue',
		(SELECT
		COUNT(*) FROM WorkingDay WHERE IsDeleted = 0 AND IsWorking= 1 AND IsDeleted = 0 AND EmployeeId = e.Id
		AND Datework >= @StartDate AND Datework <=@EndDate
		) AS 'TotalWork',
		-- Tổng số ngày công
		((s.SalaryValue*
			(SELECT
			COUNT(*) FROM WorkingDay WHERE IsDeleted = 0 AND IsWorking= 1 AND IsDeleted = 0 AND EmployeeId = e.Id
			AND Datework >= @StartDate AND Datework <=@EndDate
			))+s.Allowance
		) AS 'TotalSalaryBase',
		-- Tổng lương cơ bản
		e.InsuranceSociety,
		(SELECT ISNULL(SUM(b.ValueBonus), 0)
		 FROM EmployeeAndBonus AS eab
			  LEFT JOIN Bonus AS b ON eab.BonusId = b.Id
		 WHERE eab.IsDeleted = 0 AND eab.EmployeeId = e.Id AND eab.DateBonus >= @StartDate AND eab.DateBonus <=@EndDate
		) AS 'BonusValue',
		-- Tổng tiền thưởng
		(SELECT ISNULL(SUM(pe.ValuePenalty),0)
		 FROM EmployeeAndPenaltyError AS eap
			  LEFT JOIN PenaltyError AS pe ON eap.PenaltyId = pe.Id
		 WHERE eap.IsDeleted = 0 AND eap.EmployeeId = e.Id AND eap.DatePenalty >= @StartDate AND eap.DatePenalty <=@EndDate
		) AS 'PenaltyValue',
		-- Tổng tiền phạt
		(SELECT ISNULL(SUM(sav.ValueAdvance),0)
		 FROM SalaryAdvance AS sav
		 WHERE sav.IsDeleted = 0 AND sav.EmployeeId = e.Id AND sav.DateAdvance >= @StartDate AND sav.DateAdvance <=@EndDate
		) AS 'AdvanceValue',
		-- Tổng lương ứng trước
		((s.SalaryValue*
			(SELECT
			COUNT(*) FROM WorkingDay WHERE IsDeleted = 0 AND IsWorking= 1 AND IsDeleted = 0 AND EmployeeId = e.Id
			AND Datework >= @StartDate AND Datework <=@EndDate
			))+s.Allowance - e.InsuranceSociety + 
				(SELECT ISNULL(SUM(b.ValueBonus),0)
				 FROM EmployeeAndBonus AS eab
					  LEFT JOIN Bonus AS b ON eab.BonusId = b.Id
				 WHERE eab.IsDeleted = 0 AND eab.EmployeeId = e.Id AND eab.DateBonus >= @StartDate AND eab.DateBonus <=@EndDate
				) - (SELECT ISNULL(SUM(pe.ValuePenalty),0)
					 FROM EmployeeAndPenaltyError AS eap
						  LEFT JOIN PenaltyError AS pe ON eap.PenaltyId = pe.Id
					 WHERE eap.IsDeleted = 0 AND eap.EmployeeId = e.Id AND eap.DatePenalty >= @StartDate AND eap.DatePenalty <=@EndDate) -
						(SELECT ISNULL(SUM(sav.ValueAdvance),0)
						 FROM SalaryAdvance AS sav
						 WHERE sav.IsDeleted = 0 AND sav.EmployeeId = e.Id AND sav.DateAdvance >= @StartDate AND sav.DateAdvance <=@EndDate
						)
		)
		-- Lương thực nhận = lương chính (ngày) * tổng số ngày công - bảo hiểm + tổng thưởng - tổng phạt - tổng lương ứng trước
		AS 'RealSalary',@Total AS 'Total'
		FROM [Employee] AS e
		LEFT JOIN Department AS d ON e.DepartmentId=d.Id AND d.IsDeleted = 0
		LEFT JOIN Salary AS s ON e.SalaryId = s.Id AND e.IsDeleted= 0 
		WHERE e.IsManager=0 AND e.IsDeleted = 0 AND e.IsWorking = 1
			  AND (@DepartmentId IS NULL OR e.DepartmentId = @DepartmentId)
			  AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
		ORDER BY e.Id;
	END
	ELSE
	BEGIN
		INSERT INTO @outTable
		SELECT e.Id AS 'IdEmployee',e.FullName,d.Name AS 'DepartmentName',s.SalaryValue,s.Allowance AS 'AllowanceValue',
		(SELECT
		COUNT(*) FROM WorkingDay WHERE IsDeleted = 0 AND IsWorking= 1 AND IsDeleted = 0 AND EmployeeId = e.Id
		AND Datework >= @StartDate AND Datework <=@EndDate
		) AS 'TotalWork',
		((s.SalaryValue*
			(SELECT
			COUNT(*) FROM WorkingDay WHERE IsDeleted = 0 AND IsWorking= 1 AND IsDeleted = 0 AND EmployeeId = e.Id
			AND Datework >= @StartDate AND Datework <=@EndDate
			))+s.Allowance
		) AS 'TotalSalaryBase',
		e.InsuranceSociety,
		(SELECT ISNULL(SUM(b.ValueBonus), 0)
		 FROM EmployeeAndBonus AS eab
			  LEFT JOIN Bonus AS b ON eab.BonusId = b.Id
		 WHERE eab.IsDeleted = 0 AND eab.EmployeeId = e.Id AND eab.DateBonus >= @StartDate AND eab.DateBonus <=@EndDate
		) AS 'BonusValue',
		(SELECT ISNULL(SUM(pe.ValuePenalty),0)
		 FROM EmployeeAndPenaltyError AS eap
			  LEFT JOIN PenaltyError AS pe ON eap.PenaltyId = pe.Id
		 WHERE eap.IsDeleted = 0 AND eap.EmployeeId = e.Id AND eap.DatePenalty >= @StartDate AND eap.DatePenalty <=@EndDate
		) AS 'PenaltyValue',
		(SELECT ISNULL(SUM(sav.ValueAdvance),0)
		 FROM SalaryAdvance AS sav
		 WHERE sav.IsDeleted = 0 AND sav.EmployeeId = e.Id AND sav.DateAdvance >= @StartDate AND sav.DateAdvance <=@EndDate
		) AS 'AdvanceValue',
		((s.SalaryValue*
			(SELECT
			COUNT(*) FROM WorkingDay WHERE IsDeleted = 0 AND IsWorking= 1 AND IsDeleted = 0 AND EmployeeId = e.Id
			AND Datework >= @StartDate AND Datework <=@EndDate
			))+s.Allowance - e.InsuranceSociety + 
				(SELECT ISNULL(SUM(b.ValueBonus),0)
				 FROM EmployeeAndBonus AS eab																																																																																																																																																																																																																																																									
					  LEFT JOIN Bonus AS b ON eab.BonusId = b.Id
				 WHERE eab.IsDeleted = 0 AND eab.EmployeeId = e.Id AND eab.DateBonus >= @StartDate AND eab.DateBonus <=@EndDate
				) - (SELECT ISNULL(SUM(pe.ValuePenalty),0)
					 FROM EmployeeAndPenaltyError AS eap
						  LEFT JOIN PenaltyError AS pe ON eap.PenaltyId = pe.Id
					 WHERE eap.IsDeleted = 0 AND eap.EmployeeId = e.Id AND eap.DatePenalty >= @StartDate AND eap.DatePenalty <=@EndDate) -
						(SELECT ISNULL(SUM(sav.ValueAdvance),0)
						 FROM SalaryAdvance AS sav
						 WHERE sav.IsDeleted = 0 AND sav.EmployeeId = e.Id AND sav.DateAdvance >= @StartDate AND sav.DateAdvance <=@EndDate
						)
		) 
		AS 'RealSalary',@Total AS 'Total'
		FROM [Employee] AS e
		LEFT JOIN Department AS d ON e.DepartmentId=d.Id AND d.IsDeleted = 0
		LEFT JOIN Salary AS s ON e.SalaryId = s.Id AND e.IsDeleted= 0 
		WHERE e.IsManager=0 AND e.IsDeleted = 0 AND e.IsWorking = 1
			  AND (@DepartmentId IS NULL OR e.DepartmentId = @DepartmentId)
			  AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
		ORDER BY e.Id OFFSET @PageSize * (@pageIndex - 1) ROWS FETCH NEXT @pageSize ROWS ONLY;
	END
	RETURN 
END
GO

/****** Hàm SalaryAdvanceAll: lấy danh sách tất cả lương tạm ứng ******/
CREATE FUNCTION [dbo].[SalaryAdvanceAll]
(
	@pageIndex int,
	@pageSize int,
	@DepartmentId int,
	@NameSearch nvarchar(254),
	@DateAdvance datetime
)
RETURNS @outTable TABLE (Id int,EmployeeId int,FullName nvarchar(254), DepartmentName nvarchar(254), DateAdvance datetime, ValueAdvance float ,Total int )
AS
BEGIN
		DECLARE @Total int;
		SELECT @Total = COUNT(*) FROM SalaryAdvance AS eab 
		INNER JOIN [Employee] AS e ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
		WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DateAdvance IS NULL OR (Day(eab.DateAdvance)= Day(@DateAdvance) AND Month(eab.DateAdvance)= Month(@DateAdvance) AND Year(eab.DateAdvance)= Year(@DateAdvance)));
		IF(@pageSize=0)
		BEGIN
			INSERT INTO @outTable
			SELECT eab.Id,e.Id AS 'EmployeeId',e.FullName,d.Name AS 'DepartmentName',eab.DateAdvance,eab.ValueAdvance,@Total AS 'Total' 
			FROM SalaryAdvance AS eab INNER JOIN [Employee] AS e  ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
			LEFT JOIN Department AS d ON e.DepartmentId = d.Id AND d.IsDeleted = 0
			WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DateAdvance IS NULL OR (Day(eab.DateAdvance)= Day(@DateAdvance) AND Month(eab.DateAdvance)= Month(@DateAdvance) AND Year(eab.DateAdvance)= Year(@DateAdvance)))
			ORDER BY eab.Id;
		END
		ELSE
		BEGIN
			INSERT INTO @outTable
			SELECT eab.Id,e.Id AS 'EmployeeId',e.FullName,d.Name AS 'DepartmentName',eab.DateAdvance,eab.ValueAdvance,@Total AS 'Total' 
			FROM SalaryAdvance AS eab INNER JOIN [Employee] AS e  ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
			LEFT JOIN Department AS d ON e.DepartmentId = d.Id AND d.IsDeleted = 0
			WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DateAdvance IS NULL OR (Day(eab.DateAdvance)= Day(@DateAdvance) AND Month(eab.DateAdvance)= Month(@DateAdvance) AND Year(eab.DateAdvance)= Year(@DateAdvance)))
			ORDER BY eab.Id OFFSET @PageSize * (@pageIndex - 1) ROWS FETCH NEXT @pageSize ROWS ONLY;
		END
		RETURN
END
GO

/****** Hàm EmployeeBonusAll: lấy danh sách tiền thưởng của nhân viên ******/
CREATE FUNCTION [dbo].[EmployeeBonusAll]
(
	@pageIndex int,
	@pageSize int,
	@DepartmentId int,
	@NameSearch nvarchar(254),
	@DateBonus datetime
	)
	RETURNS @outTable TABLE(Id int,EmployeeId int,FullName nvarchar(254),DepartmentName nvarchar(254) ,DateBonus datetime ,BonusName nvarchar(254),ValueBonus float,Total int )
AS
BEGIN
		DECLARE @Total int;
		SELECT @Total = COUNT(*) FROM EmployeeAndBonus AS eab
		INNER JOIN [Employee] AS e ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
		WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DateBonus IS NULL OR (Day(eab.DateBonus)= Day(@DateBonus) AND Month(eab.DateBonus)= Month(@DateBonus) AND Year(eab.DateBonus)= Year(@DateBonus)));
		IF(@pageSize=0)
		BEGIN
			INSERT INTO @outTable
			SELECT eab.Id,e.Id AS 'EmployeeId',e.FullName,d.Name AS 'DepartmentName',eab.DateBonus,b.Name AS 'BonusName',b.ValueBonus,@Total AS 'Total' 
			FROM EmployeeAndBonus AS eab INNER JOIN [Employee] AS e  ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
			LEFT JOIN Bonus AS b ON eab.BonusId=b.Id AND b.IsDeleted = 0
			LEFT JOIN Department AS d ON e.DepartmentId = d.Id AND d.IsDeleted = 0
			WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DateBonus IS NULL OR (Day(eab.DateBonus)= Day(@DateBonus) AND Month(eab.DateBonus)= Month(@DateBonus) AND Year(eab.DateBonus)= Year(@DateBonus)))
			ORDER BY eab.Id;
		END
		ELSE
		BEGIN
			INSERT INTO @outTable
			SELECT eab.Id,e.Id AS 'EmployeeId',e.FullName,d.Name AS 'DepartmentName',eab.DateBonus,b.Name AS 'BonusName',b.ValueBonus,@Total AS 'Total' 
			FROM EmployeeAndBonus AS eab INNER JOIN [Employee] AS e  ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
			LEFT JOIN Bonus AS b ON eab.BonusId=b.Id AND b.IsDeleted = 0
			LEFT JOIN Department AS d ON e.DepartmentId = d.Id AND d.IsDeleted = 0
			WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DateBonus IS NULL OR (Day(eab.DateBonus)= Day(@DateBonus) AND Month(eab.DateBonus)= Month(@DateBonus) AND Year(eab.DateBonus)= Year(@DateBonus)))
			ORDER BY eab.Id OFFSET @PageSize * (@pageIndex - 1) ROWS FETCH NEXT @pageSize ROWS ONLY;
		END
		RETURN
END
GO

/****** Hàm EmployeePenaltyAll: lấy danh sách tiền phạt của nhân viên ******/
CREATE FUNCTION [dbo].[EmployeePenaltyAll]
(
	@pageIndex int,
	@pageSize int,
	@DepartmentId int,
	@NameSearch nvarchar(254),
	@DatePenalty datetime
	)
RETURNS @outTable TABLE (Id int,EmployeeId int,FullName nvarchar(254),DepartmentName nvarchar(254),DatePenalty datetime,PenaltyName nvarchar(254),ValuePenalty float,Total int )
AS
BEGIN
		DECLARE @Total int;
		SELECT @Total = COUNT(*) FROM EmployeeAndPenaltyError AS eab 
		INNER JOIN [Employee] AS e ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
		WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DatePenalty IS NULL OR (Day(eab.DatePenalty)= Day(@DatePenalty) AND Month(eab.DatePenalty)= Month(@DatePenalty) AND Year(eab.DatePenalty)= Year(@DatePenalty)));
		IF(@pageSize=0)
		BEGIN
			INSERT INTO @outTable
			SELECT eab.Id,e.Id AS 'EmployeeId',e.FullName,d.Name AS 'DepartmentName',eab.DatePenalty,b.Name AS 'PenaltyName',b.ValuePenalty,@Total AS 'Total' 
			FROM EmployeeAndPenaltyError AS eab INNER JOIN [Employee] AS e  ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
			LEFT JOIN PenaltyError AS b ON eab.PenaltyId=b.Id AND b.IsDeleted = 0
			LEFT JOIN Department AS d ON e.DepartmentId = d.Id AND d.IsDeleted = 0
			WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DatePenalty IS NULL OR (Day(eab.DatePenalty)= Day(@DatePenalty) AND Month(eab.DatePenalty)= Month(@DatePenalty) AND Year(eab.DatePenalty)= Year(@DatePenalty)))
			ORDER BY eab.Id;
		END
		ELSE
		BEGIN
			INSERT INTO @outTable
			SELECT eab.Id,e.Id AS 'EmployeeId',e.FullName,d.Name AS 'DepartmentName',eab.DatePenalty,b.Name AS 'PenaltyName',b.ValuePenalty,@Total AS 'Total' 
			FROM EmployeeAndPenaltyError AS eab INNER JOIN [Employee] AS e  ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
			LEFT JOIN PenaltyError AS b ON eab.PenaltyId=b.Id AND b.IsDeleted = 0
			LEFT JOIN Department AS d ON e.DepartmentId = d.Id AND d.IsDeleted = 0
			WHERE eab.IsDeleted = 0 
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@DatePenalty IS NULL OR (Day(eab.DatePenalty)= Day(@DatePenalty) AND Month(eab.DatePenalty)= Month(@DatePenalty) AND Year(eab.DatePenalty)= Year(@DatePenalty)))
			ORDER BY eab.Id OFFSET @PageSize * (@pageIndex - 1) ROWS FETCH NEXT @pageSize ROWS ONLY;
		END
		RETURN
END
GO

/****** Hàm Employees: lấy danh sách nhân viên (có phân trang và lọc theo phòng ban, tên) ******/
CREATE FUNCTION [dbo].[Employees]
(
	@pageIndex int,
	@pageSize int,
	@DepartmentId int,
	@NameSearch nvarchar(254),
	@IsWorking bit
	)
	RETURNS @outTable TABLE (Id int,FullName nvarchar(254),Gender nvarchar(254),Phone nvarchar(254),DayOfBirth datetime, Total int) 

AS
BEGIN
		DECLARE @Total int;
		SELECT @Total = COUNT(*) FROM [Employee] 
		WHERE  IsDeleted = 0 AND IsManager=0
			AND (@DepartmentId IS NULL OR [Employee].DepartmentId=@DepartmentId)
			AND (@IsWorking IS NULL OR [Employee].IsWorking = @IsWorking)
			AND (@NameSearch IS NULL OR [Employee].FullName LIKE '%'+@NameSearch+'%');
		IF(@pageSize=0)
		BEGIN
			INSERT INTO @outTable
			SELECT e.Id,e.FullName,e.Gender,e.Phone,e.DayOfBirth,@Total AS 'Total' FROM 
			[Employee] AS e
			WHERE e.IsDeleted = 0 AND e.IsManager=0
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@IsWorking IS NULL OR e.IsWorking = @IsWorking)
			ORDER BY e.Id;
		END
		ELSE
		BEGIN
			INSERT INTO @outTable
			 SELECT e.Id,e.FullName,e.Gender,e.Phone,e.DayOfBirth,@Total AS 'Total' FROM 
			[Employee] AS e
			WHERE e.IsDeleted = 0 AND e.IsManager=0
			AND (@DepartmentId IS NULL OR e.DepartmentId=@DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND (@IsWorking IS NULL OR e.IsWorking = @IsWorking)
			 ORDER BY e.Id OFFSET @PageSize * (@pageIndex - 1) ROWS FETCH NEXT @pageSize ROWS ONLY;
		END
		RETURN
END
GO

/****** Hàm GetCurrentSalaryByEmployee: trả về lương hiện tại của 1 nhân viên  ******/
CREATE FUNCTION [dbo].[GetCurrentSalaryByEmployee] (
	@Id int
)
RETURNS float
AS
BEGIN
	DECLARE @SalaryValue float
	SELECT @SalaryValue = s.SalaryValue
	FROM [Employee] AS e
	INNER JOIN Salary AS s ON e.SalaryId=s.Id AND s.IsDeleted=0
	WHERE e.Id=@Id AND e.IsManager=0
	RETURN @SalaryValue
END
GO

/****** Thủ tục BonusDelete: xóa mức thưởng ******/
CREATE PROCEDURE [dbo].[BonusDelete]
	@Id int
AS
BEGIN
	SET NOCOUNT OFF;
	IF(EXISTS(SELECT TOP 1 Id FROM EmployeeAndBonus WHERE IsDeleted = 0 AND BonusId = @Id)) 
	BEGIN
		RETURN;
	END
	ELSE
	BEGIN
		UPDATE Bonus SET IsDeleted=1 WHERE Id =@Id;
	END
END
GO

/****** Thủ tục BonusGetById: lấy chi tiết mức thưởng ******/
CREATE PROCEDURE [dbo].[BonusGetById]
	@Id int
AS
BEGIN
	SELECT b.Id,b.Name,b.ValueBonus
	FROM Bonus AS b
	WHERE b.IsDeleted = 0 AND b.Id=@Id
END
GO

/****** Thủ tục BonusSave: lưu mức thưởng ******/
CREATE PROCEDURE [dbo].[BonusSave]
	@Id int,
	@Name nvarchar(254),
	@ValueBonus float
AS
BEGIN
	IF(@Id IS NULL)
	BEGIN
		INSERT INTO Bonus(Name,ValueBonus,DateCreated,IsDeleted)
		VALUES (@Name,@ValueBonus,GETDATE(),0)
	END
	ELSE
	BEGIN
		UPDATE Bonus SET Name=@Name,
						ValueBonus=@ValueBonus,
						DateModified=GETDATE()
						WHERE Id =@Id;
	END
END
GO

/****** Thủ tục ChangePassword: đổi mật khẩu ******/
CREATE PROCEDURE [dbo].[ChangePassword]
	@Id int,
	@OldPassword nvarchar(254),
	@NewPassword nvarchar(254)
AS
BEGIN
	DECLARE @Count int;
	SELECT @Count=COUNT(*) FROM [Employee] WHERE Id= @Id AND [Password] = @OldPassword;
	IF(@Count=0) 
	BEGIN
		SELECT -1
		RETURN;
	END

	UPDATE [Employee] SET [Password] = @NewPassword WHERE Id =@Id;

	SELECT 1
	RETURN;
END
GO

/****** Thủ tục DepartmentDelete: xóa phòng ban ******/
CREATE PROCEDURE [dbo].[DepartmentDelete]
	@Id int
AS
BEGIN
		SET NOCOUNT OFF;
		WITH temp(Id,ParentId)
        AS (
                SELECT Id,ParentId
                FROM dbo.Department
                WHERE Id = @Id
                UNION ALL
                SELECT b.Id, b.ParentId
                FROM temp AS a, dbo.Department AS b
                WHERE a.id = b.ParentId
        )
		UPDATE Department SET IsDeleted=1 WHERE Id IN (SELECT Id FROM temp);


		WITH temp(Id,ParentId)
        AS (
                SELECT Id,ParentId
                FROM dbo.Department
                WHERE Id = @Id
                UNION ALL
                SELECT b.Id, b.ParentId
                FROM temp AS a, dbo.Department AS b
                WHERE a.id = b.ParentId
        )
		UPDATE [Employee] SET IsDeleted=1 WHERE DepartmentId IN (SELECT Id FROM temp);
END
GO

/****** Thủ tục DepartmentGetById: lấy thông tin phòng ban ******/
CREATE PROCEDURE [dbo].[DepartmentGetById]
	@Id int
AS
BEGIN
	SELECT * FROM Department WHERE IsDeleted = 0 AND Id =@Id
END
GO

/****** Thủ tục DepartmentSave: lưu thông tin phòng ban ******/
CREATE PROCEDURE [dbo].[DepartmentSave]
	@Id int,
	@Name nvarchar(254),
	@Description nvarchar(254),
	@ParentId int
AS
BEGIN
	IF(@Id IS NULL)
	BEGIN
		INSERT INTO Department(Name,ParentId,Description,DateCreated,IsDeleted)
		VALUES (@Name,@ParentId,@Description,GETDATE(),0);
	END
	ELSE
	BEGIN
		UPDATE Department SET Name=@Name,ParentId=@ParentId,Description=@Description,DateModified=GETDATE()
		WHERE Id =@Id;
	END
END
GO

/****** Thủ tục GetAdvanceByEmployee: lấy thông tin lương tạm ứng theo Id nhân viên ******/
CREATE PROCEDURE [dbo].[GetAdvanceByEmployee]
	@Id int,
	@StartDate datetime,
	@EndDate datetime
AS
BEGIN
	SELECT sa.Id,sa.ValueAdvance,sa.DateAdvance
	FROM SalaryAdvance AS sa 
	WHERE sa.IsDeleted = 0 AND sa.EmployeeId=@Id AND sa.DateAdvance>=@StartDate AND sa.DateAdvance<=@EndDate
END
GO

/****** Thủ tục GetBaseEmployee: lấy lương cơ bản của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[GetBaseEmployee]
	@Id int
AS
BEGIN
	SELECT e.Id,e.FullName,d.Name AS 'DepartmentName',e.Gender,e.DayOfBirth AS 'DayOfBirth',s.SalaryValue,s.Allowance,e.InsuranceSociety,e.Avatar
	FROM [Employee] AS e
	LEFT JOIN Department AS d ON e.DepartmentId=d.Id AND d.IsDeleted= 0
	LEFT JOIN Salary AS s ON s.Id=e.SalaryId AND s.IsDeleted = 0
	WHERE e.Id=@Id;
END
GO

/****** Thủ tục GetBonusByEmployee: lấy tất cả lương thưởng của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[GetBonusByEmployee]
	@Id int,
	@StartDate datetime,
	@EndDate datetime
AS
BEGIN
	SELECT eab.Id,b.Name AS 'NameBonus',b.ValueBonus,eab.DateBonus
	FROM EmployeeAndBonus AS eab INNER JOIN [Employee] AS e ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
	LEFT JOIN Bonus AS b ON eab.BonusId=b.Id AND b.IsDeleted = 0
	WHERE eab.IsDeleted = 0 AND eab.EmployeeId=@Id AND eab.DateBonus>=@StartDate AND eab.DateBonus<=@EndDate
END
GO

/****** Thủ tục GetDateWorkByEmployee: lấy danh sách ngày làm việc của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[GetDateWorkByEmployee]
	@Id int,
	@StartDate datetime,
	@EndDate datetime
AS
BEGIN
	SELECT w.Id,w.DateWork AS 'DateWorking'
	FROM WorkingDay AS w
	WHERE w.IsDeleted = 0 AND w.IsWorking = 1 AND w.EmployeeId=@Id
	AND w.Datework>= @StartDate AND w.Datework<=@EndDate;
END
GO

/****** Thủ tục GetPenaltyByEmployee: lấy danh sách phạt của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[GetPenaltyByEmployee]
	@Id int,
	@StartDate datetime,
	@EndDate datetime
AS
BEGIN
	SELECT eab.Id,b.Name AS 'NamePenalty',b.ValuePenalty,eab.DatePenalty
	FROM EmployeeAndPenaltyError AS eab INNER JOIN [Employee] AS e  ON e.Id = eab.EmployeeId AND e.IsDeleted = 0 AND e.IsManager=0
	LEFT JOIN PenaltyError AS b ON eab.PenaltyId=b.Id AND b.IsDeleted = 0
	WHERE eab.IsDeleted = 0 AND eab.EmployeeId=@Id AND eab.DatePenalty>=@StartDate AND eab.DatePenalty<=@EndDate
END
GO

/****** Thủ tục GetEmployeeForCheckWorking:  ******/
CREATE PROCEDURE [dbo].[GetEmployeeForCheckWorking]
	@DepartmentId int,
	@DateCheckWorking datetime,
	@NameSearch nvarchar(500)
AS
BEGIN
	SELECT e.Id,e.FullName,d.Name AS 'DepartmentName',@DateCheckWorking AS 'CurrentDate',
	CASE
    WHEN (wd.Id IS NOT NULL AND wd.IsWorking = 1) THEN CAST(1 AS bit)   
    ELSE CAST(0 AS bit)
	END AS 'CheckWorking'
	FROM [Employee] AS e
	LEFT JOIN Department AS d ON d.Id=e.DepartmentId AND d.IsDeleted=0
	LEFT JOIN WorkingDay AS wd ON wd.EmployeeId=e.Id AND wd.IsDeleted=0 AND Day(wd.Datework) = Day(@DateCheckWorking) AND Month(wd.Datework) = Month(@DateCheckWorking) AND Year(wd.Datework) = Year(@DateCheckWorking)
	WHERE e.IsManager= 0 AND e.IsDeleted= 0 AND (@DepartmentId IS NULL OR e.DepartmentId = @DepartmentId)
			AND (@NameSearch IS NULL OR e.FullName LIKE '%'+@NameSearch+'%')
			AND e.IsWorking = 1
END
GO

/****** Thủ tục IdDepartmentBySalaryId: lấy Id phòng ban dựa vào Id mức lương ******/
CREATE PROCEDURE [dbo].[IdDepartmentBySalaryId]
	@Id int
AS
BEGIN
	SELECT DepartmentId FROM Salary WHERE Id=@Id;
END
GO

/****** Thủ tục Login: đăng nhập ******/
CREATE PROCEDURE [dbo].[Login]
	@UserName nvarchar(254),
	@Password nvarchar(255)
AS
BEGIN
	SELECT * FROM [Employee] WHERE UserName=@UserName AND [Password]=@Password
END
GO

/****** Thủ tục PenaltyDelete: xóa mức phạt ******/
CREATE PROCEDURE [dbo].[PenaltyDelete]
	@Id int
AS
BEGIN
	SET NOCOUNT OFF;
	IF(EXISTS(SELECT TOP 1 Id FROM EmployeeAndPenaltyError WHERE IsDeleted = 0 AND PenaltyId = @Id)) 
	BEGIN
		RETURN;
	END
	ELSE
	BEGIN
		UPDATE PenaltyError SET IsDeleted=1 WHERE Id =@Id;
	END
	
END
GO

/****** Thủ tục PenaltyGetById: lấy thông tin mức phạt ******/
CREATE PROCEDURE [dbo].[PenaltyGetById]
	@Id int
AS
BEGIN
	SELECT s.Id,s.Name,s.ValuePenalty
	FROM PenaltyError AS s
	WHERE s.IsDeleted= 0 AND s.Id=@Id;
END
GO

/****** Thủ tục PenaltySave: lưu mức phạt ******/
CREATE PROCEDURE [dbo].[PenaltySave]
	@Id int,
	@Name nvarchar(254),
	@ValuePenalty float
AS
BEGIN
	IF(@Id IS NULL)
	BEGIN
		INSERT INTO PenaltyError(Name,ValuePenalty,DateCreated,IsDeleted)
		VALUES (@Name,@ValuePenalty,GETDATE(),0)
	END
	ELSE
	BEGIN
		UPDATE PenaltyError SET Name=@Name,
						ValuePenalty=@ValuePenalty,
						DateModified=GETDATE()
						WHERE Id =@Id;
	END
END
GO

/****** Thủ tục SalaryAdvanceDelete: xóa lương tạm ứng ******/
CREATE PROCEDURE [dbo].[SalaryAdvanceDelete]
	@Id int
AS
BEGIN
	UPDATE SalaryAdvance SET IsDeleted=1 WHERE Id=@Id;
END
GO

/****** Thủ tục SalaryAdvanceGetById: lấy danh sách lương tạm ứng của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[SalaryAdvanceGetById]
	@Id int
AS
BEGIN
	SELECT sa.*,e.DepartmentId
	FROM SalaryAdvance AS sa 
	LEFT JOIN [Employee] AS e ON e.Id=sa.EmployeeId AND sa.IsDeleted = 0 AND e.IsDeleted= 0 AND e.IsManager = 0
	WHERE sa.Id =@Id;
END
GO

/****** Thủ tục SalaryAdvanceSave: lưu thông tin tiền lương tạm ứng ******/
CREATE PROCEDURE [dbo].[SalaryAdvanceSave]
	@Id int,
	@IdEmployee int,
	@ValueAdvance float,
	@DateAdvance datetime,
	@Reasion nvarchar(254)
AS
BEGIN
	IF(@Id IS NULL)
	BEGIN
		INSERT INTO SalaryAdvance(EmployeeId,ValueAdvance,Reasion,DateAdvance,DateCreated,IsDeleted)
		VALUES (@IdEmployee,@ValueAdvance,@Reasion,@DateAdvance,GETDATE(),0);
	END
	ELSE
	BEGIN
		UPDATE SalaryAdvance SET ValueAdvance=@ValueAdvance,Reasion=@Reasion,DateAdvance= @DateAdvance ,DateModified=GETDATE() WHERE Id=@Id;
	END
END
GO

/****** Thủ tục SalaryDelete: xóa tiền lương của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[SalaryDelete]
	@Id int
AS
BEGIN
	SET NOCOUNT OFF;
	DECLARE @DepartmentId int;
	SELECT @DepartmentId = DepartmentId FROM Salary WHERE Id = @Id;

	IF(EXISTS(SELECT TOP 1 Id FROM [Employee] WHERE IsDeleted = 0 AND DepartmentId = @DepartmentId AND SalaryId = @Id)) 
	BEGIN
		RETURN;
	END
	ELSE
	BEGIN
		UPDATE Salary SET IsDeleted = 1
						WHERE Id =@Id;
	END
END
GO

/****** Thủ tục SalaryGetById: lấy thông tin lương của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[SalaryGetById]
	@Id int
AS
BEGIN
	SELECT s.Id,s.Name,s.SalaryValue,s.Allowance,d.Name AS 'DepartmentName'
	FROM Salary AS s
	LEFT JOIN Department AS d ON s.DepartmentId=d.Id AND d.IsDeleted=0
	WHERE s.IsDeleted= 0 AND s.Id=@Id;
END
GO

/****** Thủ tục SalarySave: lưu thông tin tiền lương của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[SalarySave]
	@Id int,
	@Name nvarchar(254),
	@SalaryValue float,
	@Allowance float,
	@DepartmentId int
AS
BEGIN
	IF(@Id IS NULL)
	BEGIN
		INSERT INTO Salary(Name,SalaryValue,Allowance,DepartmentId,DateCreated,IsDeleted)
		VALUES (@Name,@SalaryValue,@Allowance,@DepartmentId,GETDATE(),0)
	END
	ELSE
	BEGIN
		UPDATE Salary SET Name=@Name,
						SalaryValue=@SalaryValue,
						DepartmentId=@DepartmentId,
						Allowance=@Allowance,
						DateModified=GETDATE()
						WHERE Id =@Id;
	END
END
GO

/****** Thủ tục SaveWorkingDay: lưu thông tin ngày làm việc của nhân viên ******/
CREATE PROCEDURE [dbo].[SaveWorkingDay]
	@Id int,
	@DateWork Datetime,
	@SalaryCurrent float,
	@IsWorking bit
AS
BEGIN
	DECLARE @IsExist int;
	SELECT @IsExist = COUNT(*) FROM WorkingDay WHERE EmployeeId=@Id AND Datework=@DateWork AND IsDeleted = 0;
	IF(@IsExist=0) 
	BEGIN
		INSERT INTO WorkingDay(EmployeeId,SalaryCurrent,Datework,IsWorking,DateCreated,IsDeleted)
		VALUES (@Id,@SalaryCurrent,@Datework,@IsWorking,GETDATE(),0)
	END
	ELSE
	BEGIN
		UPDATE WorkingDay SET SalaryCurrent = @SalaryCurrent,IsWorking = @IsWorking
		WHERE Datework=@DateWork AND EmployeeId=@Id AND IsDeleted = 0;
	END
END
GO

/****** Thủ tục EmployeeBonusDelete: xóa tiền thưởng của nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeeBonusDelete]
	@Id int
AS
BEGIN
	UPDATE EmployeeAndBonus SET IsDeleted = 1 WHERE Id=@Id
END
GO

/****** Thủ tục EmployeeBonusGetById: lấy thông tin tiền thưởng của nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeeBonusGetById]
	@Id int
AS
BEGIN
	SELECT eab.*,e.DepartmentId
	FROM EmployeeAndBonus AS eab 
	LEFT JOIN [Employee] AS e ON e.Id=eab.EmployeeId AND eab.IsDeleted = 0
	WHERE eab.Id =@Id;
END
GO

/****** Thủ tục EmployeeBonusSave: lưu thông tin tiền thưởng của nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeeBonusSave]
	@Id int,
	@IdEmployee int,
	@IdBonus int,
	@DateBonus datetime
AS
BEGIN
	IF(@Id IS NULL)
	BEGIN
		INSERT INTO EmployeeAndBonus(EmployeeId,BonusId,DateBonus,DateCreated,IsDeleted)
		VALUES (@IdEmployee,@IdBonus,@DateBonus,GETDATE(),0);
	END
	ELSE
	BEGIN
		UPDATE EmployeeAndBonus SET BonusId=@IdBonus,DateBonus=@DateBonus,DateModified=GETDATE() WHERE Id=@Id;
	END
END
GO

/****** Thủ tục EmployeeDelete: xóa nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeeDelete]
	@Id int
AS
BEGIN
	UPDATE [Employee] SET IsDeleted=1 WHERE Id=@Id;
END
GO

/****** Thủ tục EmployeeGetById: lấy thông tin nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeeGetById]
	@Id int
AS
BEGIN
	SELECT * FROM [Employee] WHERE Id =@Id;
END
GO

/****** Thủ tục EmployeePenaltyDelete: xóa mức phạt của nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeePenaltyDelete]
	@Id int
AS
BEGIN
	UPDATE EmployeeAndPenaltyError SET IsDeleted = 1 WHERE Id=@Id
END
GO

/****** Thủ tục EmployeePenaltyGetById: lấy danh sách thông tin các lần bị phạt của 1 nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeePenaltyGetById]
	@Id int
AS
BEGIN
	SELECT eab.*,e.DepartmentId
	FROM EmployeeAndPenaltyError AS eab 
	LEFT JOIN [Employee] AS e ON e.Id=eab.EmployeeId AND eab.IsDeleted = 0
	WHERE eab.Id =@Id;
END
GO

/****** Thủ tục EmployeePenaltySave: lưu thông tin phạt của nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeePenaltySave]
	@Id int,
	@IdEmployee int,
	@IdPenalty int,
	@DatePenalty datetime
AS
BEGIN
	IF(@Id IS NULL)
	BEGIN
		INSERT INTO EmployeeAndPenaltyError(EmployeeId,PenaltyId,DatePenalty,DateCreated,IsDeleted)
		VALUES (@IdEmployee,@IdPenalty,@DatePenalty,GETDATE(),0);
	end
	ELSE
	BEGIN
		UPDATE EmployeeAndPenaltyError SET PenaltyId=@IdPenalty,DatePenalty=@DatePenalty,DateModified=GETDATE() WHERE Id=@Id;
	end
END
GO

/****** Thủ tục EmployeeSave: lưu thông tin nhân viên ******/
CREATE PROCEDURE [dbo].[EmployeeSave]
	@Id int,
	@FullName nvarchar(254),
    @Gender nvarchar(254),
    @IdCard nvarchar(254),
    @Email nvarchar(254),
    @Address nvarchar(254),
    @Phone nvarchar(254),
    @DayOfBirth datetime,
	@SalaryId int,
    @DepartmentId int,
    @Avatar image,
	@IsWorking bit,
	@InsuranceSociety float
AS
BEGIN
	IF(@Avatar IS NULL) 
	BEGIN
		IF(@Id IS NULL)
		BEGIN
			INSERT INTO [Employee](FullName,Gender,IdCard,Email,Address,Phone,DayOfBirth,DepartmentId,SalaryId,Avatar,IsDeleted,IsManager,IsWorking,InsuranceSociety)
			VALUES(@FullName,@Gender,@IdCard,@Email,@Address,@Phone,@DayOfBirth,@DepartmentId,@SalaryId,NULL,0,0,@IsWorking,@InsuranceSociety)
		END
		ELSE
		BEGIN
			UPDATE [Employee] SET FullName = @FullName,Gender = @Gender,IdCard =@IdCard ,Email =@Email ,Address =@Address,InsuranceSociety=@InsuranceSociety,
			Phone=@Phone,DayOfBirth=@DayOfBirth,DepartmentId=@DepartmentId,SalaryId=@SalaryId,IsWorking=@IsWorking
			WHERE Id = @Id
		END
	END
	ELSE
	BEGIN
		IF(@Id IS NULL)
		BEGIN
			INSERT INTO [Employee](FullName,Gender,IdCard,Email,Address,Phone,DayOfBirth,DepartmentId,SalaryId,Avatar,IsDeleted,IsManager,IsWorking,InsuranceSociety)
			VALUES(@FullName,@Gender,@IdCard,@Email,@Address,@Phone,@DayOfBirth,@DepartmentId,@SalaryId,@Avatar,0,0,@IsWorking,@InsuranceSociety)
		END
		ELSE
		BEGIN
			UPDATE [Employee] SET FullName = @FullName,Gender = @Gender,IdCard =@IdCard ,Email =@Email ,Address =@Address,IsWorking=@IsWorking,InsuranceSociety=@InsuranceSociety,
			Phone=@Phone,DayOfBirth=@DayOfBirth,DepartmentId=@DepartmentId,SalaryId=@SalaryId,Avatar=@Avatar
			WHERE Id = @Id
		END
	END
END
GO



/****** Trigger CheckBonusValid: Kiểm tra mức khen thưởng có hợp lệ hay không ******/
CREATE TRIGGER [dbo].[CheckBonusValid]
	ON [dbo].[Bonus]
	FOR INSERT,UPDATE
AS
BEGIN
	DECLARE @ValueBonus AS float
	SELECT @ValueBonus = ne.ValueBonus FROM inserted ne
	IF (@ValueBonus <= 0)
	BEGIN
		PRINT(N'Giá trị mức tiền thưởng phải lớn hơn 0')
		ROLLBACK TRANSACTION
	END
END
GO

/****** Trigger CheckPenaltyValid: Kiểm tra mức khen thưởng có hợp lệ hay không ******/
CREATE TRIGGER [dbo].[CheckPenaltyValid]
	ON [dbo].[PenaltyError]
	FOR INSERT,UPDATE
AS
BEGIN
	DECLARE @ValuePenalty AS float
	SELECT @ValuePenalty = ne.ValuePenalty FROM Inserted ne
	IF (@ValuePenalty <= 0)
	BEGIN
		PRINT(N'Giá trị mức tiền phạt phải lớn hơn 0')
		ROLLBACK TRANSACTION
	END
END
GO

/****** Trigger CheckSalaryAdvanceValid: Kiểm tra mức khen thưởng có hợp lệ hay không ******/
CREATE TRIGGER [dbo].[CheckSalaryAdvanceValid]
	ON [dbo].[SalaryAdvance]
	FOR INSERT,UPDATE
AS
BEGIN
	DECLARE @ValueAdvance AS float
	SELECT @ValueAdvance = ne.ValueAdvance FROM inserted ne
	IF (@ValueAdvance <= 0)
	BEGIN
		PRINT(N'Giá trị lương ứng trước phải lớn hơn 0')
		ROLLBACK TRANSACTION
	END
END
GO

/****** Trigger CheckSalaryBaseValid: Kiểm tra dữ liệu thêm vào bảng Salary có hợp lệ hay không ******/
CREATE TRIGGER [dbo].[CheckSalaryBaseValid]
	ON [dbo].[Salary]
	FOR INSERT,UPDATE
AS
BEGIN
	DECLARE @SalaryValue AS float
	DECLARE @Allowance AS float
	SELECT @SalaryValue = ne.SalaryValue,@Allowance = ne.Allowance FROM inserted ne
	IF (@SalaryValue <= 0)
	BEGIN
		PRINT(N'Giá trị mức lương phải lớn hơn 0')
		ROLLBACK TRANSACTION
	END
	IF (@Allowance <= 0)
	BEGIN
		PRINT(N'Trợ cấp phải lớn hơn 0')
		ROLLBACK TRANSACTION
	END
END
GO

/****** User Manager: Người quản lý ******/
IF EXISTS(SELECT * from master.sys.sql_logins WHERE [name] = 'Manager')
BEGIN
	DROP Login Manager
END
GO
CREATE LOGIN Manager WITH Password = '123456'
CREATE USER Manager FOR LOGIN Manager
GO
GRANT SELECT, INSERT, DELETE, UPDATE ON Bonus TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON Department TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON PenaltyError TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON Salary TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON SalaryAdvance TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON Employee TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON EmployeeAndBonus TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON EmployeeAndPenaltyError TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON WorkingDay TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON BonusAll TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON PenaltyAll TO Manager WITH GRANT OPTION
GRANT SELECT, INSERT, DELETE, UPDATE ON Departments TO Manager WITH GRANT OPTION
GRANT SELECT ON CalculationSalaryEmployee TO Manager WITH GRANT OPTION
GRANT SELECT ON SalaryAdvanceAll TO Manager WITH GRANT OPTION
GRANT SELECT ON EmployeeBonusAll TO Manager WITH GRANT OPTION
GRANT SELECT ON EmployeePenaltyAll TO Manager WITH GRANT OPTION
GRANT SELECT ON Employees TO Manager WITH GRANT OPTION
GRANT SELECT ON SalaryBases TO Manager
GRANT EXECUTE ON GetCurrentSalaryByEmployee TO Manager
GRANT EXECUTE ON BonusDelete TO Manager
GRANT EXECUTE ON BonusGetById TO Manager
GRANT EXECUTE ON BonusSave TO Manager
GRANT EXECUTE ON ChangePassword TO Manager
GRANT EXECUTE ON DepartmentDelete TO Manager
GRANT EXECUTE ON DepartmentGetById TO Manager
GRANT EXECUTE ON DepartmentSave TO Manager
GRANT EXECUTE ON GetAdvanceByEmployee TO Manager
GRANT EXECUTE ON GetBaseEmployee TO Manager
GRANT EXECUTE ON GetBonusByEmployee TO Manager
GRANT EXECUTE ON GetDateWorkByEmployee TO Manager
GRANT EXECUTE ON GetPenaltyByEmployee TO Manager
GRANT EXECUTE ON GetEmployeeForCheckWorking TO Manager
GRANT EXECUTE ON IdDepartmentBySalaryId TO Manager
GRANT EXECUTE ON [Login] TO Manager
GRANT EXECUTE ON PenaltyDelete TO Manager
GRANT EXECUTE ON PenaltyGetById TO Manager
GRANT EXECUTE ON PenaltySave TO Manager
GRANT EXECUTE ON SalaryAdvanceDelete TO Manager
GRANT EXECUTE ON SalaryAdvanceGetById TO Manager
GRANT EXECUTE ON SalaryAdvanceSave TO Manager
GRANT EXECUTE ON SalaryDelete TO Manager
GRANT EXECUTE ON SalaryGetById TO Manager
GRANT EXECUTE ON SalarySave TO Manager
GRANT EXECUTE ON SaveWorkingDay TO Manager
GRANT EXECUTE ON EmployeeBonusDelete TO Manager
GRANT EXECUTE ON EmployeeBonusGetById TO Manager
GRANT EXECUTE ON EmployeeBonusSave TO Manager
GRANT EXECUTE ON EmployeeDelete TO Manager
GRANT EXECUTE ON EmployeeGetById TO Manager
GRANT EXECUTE ON EmployeePenaltyDelete TO Manager
GRANT EXECUTE ON EmployeePenaltyGetById TO Manager
GRANT EXECUTE ON EmployeePenaltySave TO Manager
GRANT EXECUTE ON EmployeeSave TO Manager
GO

/****** User Employee: Nhân viên ******/
IF EXISTS(SELECT * from master.sys.sql_logins WHERE [name] = 'Employee')
BEGIN
	DROP Login Employee
END
GO
CREATE LOGIN Employee WITH Password = '123456'
CREATE USER Employee FOR LOGIN Employee
GO
GRANT SELECT ON Employee To Employee
GRANT SELECT ON Department To Employee
GRANT SELECT ON Bonus To Employee
GRANT SELECT ON PenaltyError To Employee
GRANT SELECT ON EmployeeAndBonus TO Employee
GRANT SELECT ON EmployeeAndPenaltyError TO Employee
GRANT SELECT ON SalaryBases TO Employee
GRANT SELECT ON BonusAll TO Employee WITH GRANT OPTION
GRANT SELECT ON PenaltyAll TO Employee WITH GRANT OPTION
GRANT SELECT ON Departments TO Employee WITH GRANT OPTION
GRANT SELECT ON CalculationSalaryEmployee TO Employee WITH GRANT OPTION
GRANT SELECT ON SalaryAdvanceAll TO Employee WITH GRANT OPTION
GRANT SELECT ON EmployeeBonusAll TO Employee WITH GRANT OPTION
GRANT SELECT ON EmployeePenaltyAll TO Employee WITH GRANT OPTION
GRANT SELECT ON Employees TO Employee WITH GRANT OPTION
GRANT EXECUTE ON GetCurrentSalaryByEmployee TO Employee
GRANT EXECUTE ON BonusGetById TO Employee
GRANT EXECUTE ON ChangePassword TO Employee
GRANT EXECUTE ON DepartmentGetById TO Employee
GRANT EXECUTE ON GetBonusByEmployee TO Employee
GRANT EXECUTE ON GetDateWorkByEmployee TO Employee
GRANT EXECUTE ON GetPenaltyByEmployee TO Employee
GRANT EXECUTE ON GetEmployeeForCheckWorking TO Employee
GRANT EXECUTE ON IdDepartmentBySalaryId TO Employee
GRANT EXECUTE ON [Login] TO Employee
GRANT EXECUTE ON PenaltyGetById TO Employee
GRANT EXECUTE ON SalaryAdvanceGetById TO Employee
GRANT EXECUTE ON SalaryGetById TO Employee
GRANT EXECUTE ON SaveWorkingDay TO Employee
GRANT EXECUTE ON EmployeeBonusGetById TO Employee
GRANT EXECUTE ON EmployeeGetById TO Employee
GRANT EXECUTE ON EmployeePenaltyGetById TO Employee
GO