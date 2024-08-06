USE [bbdonordir]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 11-02-2023 12:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](200) NULL,
	[password] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[adminid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blood_bank]    Script Date: 11-02-2023 12:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blood_bank](
	[bloodid] [int] IDENTITY(1,1) NOT NULL,
	[blood_group] [varchar](200) NULL,
	[noofunits] [varchar](10) NULL,
	[givesto] [varchar](500) NULL,
	[receivesfrom] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[bloodid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donor_table]    Script Date: 11-02-2023 12:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donor_table](
	[donorid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](200) NULL,
	[lname] [varchar](200) NULL,
	[dob] [varchar](200) NULL,
	[age] [varchar](3) NULL,
	[mobile] [varchar](20) NULL,
	[gender] [varchar](20) NULL,
	[weight] [varchar](50) NULL,
	[blood_group] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[city] [varchar](200) NULL,
	[state] [varchar](200) NULL,
	[zipcode] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[username] [varchar](200) NULL,
	[password] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[donorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enquiry]    Script Date: 11-02-2023 12:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enquiry](
	[enquiryid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[mailid] [varchar](200) NULL,
	[subject] [varchar](300) NULL,
	[message] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[enquiryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient_table]    Script Date: 11-02-2023 12:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient_table](
	[patientid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](200) NULL,
	[lname] [varchar](200) NULL,
	[dob] [varchar](200) NULL,
	[age] [varchar](3) NULL,
	[mobile] [varchar](20) NULL,
	[gender] [varchar](20) NULL,
	[weight] [varchar](50) NULL,
	[blood_group] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[city] [varchar](200) NULL,
	[state] [varchar](200) NULL,
	[zipcode] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[username] [varchar](200) NULL,
	[password] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[patientid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblblooddonate]    Script Date: 11-02-2023 12:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblblooddonate](
	[blooddonateID] [int] IDENTITY(1,1) NOT NULL,
	[donorid] [int] NULL,
	[bloodgroup] [varchar](50) NULL,
	[noofunits] [int] NULL,
	[donatedate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[blooddonateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblbloodunitssold]    Script Date: 11-02-2023 12:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblbloodunitssold](
	[bloodsoldID] [int] IDENTITY(1,1) NOT NULL,
	[patientid] [int] NULL,
	[bloodgroup] [varchar](50) NULL,
	[noofunits] [int] NULL,
	[amount] [int] NULL,
	[givendate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[bloodsoldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([adminid], [username], [password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[blood_bank] ON 

INSERT [dbo].[blood_bank] ([bloodid], [blood_group], [noofunits], [givesto], [receivesfrom]) VALUES (1, N'A+', N'97', N'AB+ and A++', N'O-,  O+,  A-, A+')
INSERT [dbo].[blood_bank] ([bloodid], [blood_group], [noofunits], [givesto], [receivesfrom]) VALUES (2, N'A-', N'50', N'AB-, AB+, A+,A-', N'O- and A-')
INSERT [dbo].[blood_bank] ([bloodid], [blood_group], [noofunits], [givesto], [receivesfrom]) VALUES (3, N'B+', N'103', N'B+ and AB+', N'O-, O+, B-, B+')
INSERT [dbo].[blood_bank] ([bloodid], [blood_group], [noofunits], [givesto], [receivesfrom]) VALUES (4, N'B-', N'88', N'B-, B+, AB-, AB+', N'O- and B-')
INSERT [dbo].[blood_bank] ([bloodid], [blood_group], [noofunits], [givesto], [receivesfrom]) VALUES (5, N'O+', N'100', N'AB+, A+, B+, O+', N'O- and O+')
INSERT [dbo].[blood_bank] ([bloodid], [blood_group], [noofunits], [givesto], [receivesfrom]) VALUES (6, N'O-', N'50', N'All', N'O- Only')
INSERT [dbo].[blood_bank] ([bloodid], [blood_group], [noofunits], [givesto], [receivesfrom]) VALUES (7, N'AB+', N'47', N'AB+ Only', N'All')
INSERT [dbo].[blood_bank] ([bloodid], [blood_group], [noofunits], [givesto], [receivesfrom]) VALUES (8, N'AB-', N'100', N'AB- and AB+', N'O-, A-, B-, AB-')
SET IDENTITY_INSERT [dbo].[blood_bank] OFF
GO
SET IDENTITY_INSERT [dbo].[donor_table] ON 

INSERT [dbo].[donor_table] ([donorid], [fname], [lname], [dob], [age], [mobile], [gender], [weight], [blood_group], [address], [city], [state], [zipcode], [email], [username], [password]) VALUES (1, N'raja', N'kumar', N'12/01/1985', N'38', N'08870223057', N'Male', N'60 KGS', N'A+', N'Thendral Nagar', N'Saram', N'Pondicherry', N'605005', N'raja@gmail.com', N'rajakumar', N'raja@123')
INSERT [dbo].[donor_table] ([donorid], [fname], [lname], [dob], [age], [mobile], [gender], [weight], [blood_group], [address], [city], [state], [zipcode], [email], [username], [password]) VALUES (2, N'Sankar', N'Rajendiran', N'12/01/1992', N'30', N'6655443399', N'Male', N'50 KGS', N'B+', N'Tulip Tower', N'Andheri', N'Mumbai', N'515008', N'sankar@gmail.com', N'sankar', N'sankar@123')
INSERT [dbo].[donor_table] ([donorid], [fname], [lname], [dob], [age], [mobile], [gender], [weight], [blood_group], [address], [city], [state], [zipcode], [email], [username], [password]) VALUES (3, N'Bala', N'Murugan', N'12/01/1985', N'38', N'8870223056', N'Male', N'70 KGS', N'AB+', N'No.8, 9th Cross Krishna Nagar', N'Pondicherry', N'Pondicherry', N'605008', N'bala@gmail.com', N'bala', N'Welcome@2023')
SET IDENTITY_INSERT [dbo].[donor_table] OFF
GO
SET IDENTITY_INSERT [dbo].[enquiry] ON 

INSERT [dbo].[enquiry] ([enquiryid], [name], [mailid], [subject], [message]) VALUES (1, N'Rajesh', N'rajesh@gmail.com', N'A+Blood Required', N'Urgently required for a patient in Dlehi')
INSERT [dbo].[enquiry] ([enquiryid], [name], [mailid], [subject], [message]) VALUES (2, N'john', N'john@gmail.com', N'Urgently required A+ve Blood', N'Kindly Check and Call me: 76876543532')
INSERT [dbo].[enquiry] ([enquiryid], [name], [mailid], [subject], [message]) VALUES (3, N'abrahm', N'ara@gmail.com', N'A-ve blood required', N'check and inform this number :7788665566')
INSERT [dbo].[enquiry] ([enquiryid], [name], [mailid], [subject], [message]) VALUES (4, N'Selva', N'selva@gmail.com', N'AB+', N'Required 2 units')
SET IDENTITY_INSERT [dbo].[enquiry] OFF
GO
SET IDENTITY_INSERT [dbo].[patient_table] ON 

INSERT [dbo].[patient_table] ([patientid], [fname], [lname], [dob], [age], [mobile], [gender], [weight], [blood_group], [address], [city], [state], [zipcode], [email], [username], [password]) VALUES (1, N'karthi', N'srennevasan', N'12/01/1985', N'37', N'8870223057', N'Male', N'50 KGS', N'B-', N'Rainbow', N'Saram', N'Pondicherry', N'605008', N'karthi@gmail.com', N'karthi', N'karthi@123')
INSERT [dbo].[patient_table] ([patientid], [fname], [lname], [dob], [age], [mobile], [gender], [weight], [blood_group], [address], [city], [state], [zipcode], [email], [username], [password]) VALUES (2, N'Raj', N'Kumar', N'10/05/1960', N'65', N'7770223057', N'Male', N'70 KGS', N'A+', N'Rainbow Nagar', N'Pondicherry', N'Pondicherry', N'605007', N'rkumar@gmail.com', N'rajkumar', N'Welcome@2023')
INSERT [dbo].[patient_table] ([patientid], [fname], [lname], [dob], [age], [mobile], [gender], [weight], [blood_group], [address], [city], [state], [zipcode], [email], [username], [password]) VALUES (4, N'x', N'x', N'12/4/2022', N'40', N'9870223057', N'Male', N'50 KGS', N'A+', N'Thendral Nagar', N'Saram', N'Pondicherry', N'605005', N'raja@gmail.com', N'x', N'x')
SET IDENTITY_INSERT [dbo].[patient_table] OFF
GO
SET IDENTITY_INSERT [dbo].[tblblooddonate] ON 

INSERT [dbo].[tblblooddonate] ([blooddonateID], [donorid], [bloodgroup], [noofunits], [donatedate]) VALUES (1, 2, N'B+', 2, CAST(N'2023-02-11T01:08:03.160' AS DateTime))
INSERT [dbo].[tblblooddonate] ([blooddonateID], [donorid], [bloodgroup], [noofunits], [donatedate]) VALUES (2, 1, N'A+', 1, CAST(N'2023-02-11T01:24:51.447' AS DateTime))
INSERT [dbo].[tblblooddonate] ([blooddonateID], [donorid], [bloodgroup], [noofunits], [donatedate]) VALUES (3, 3, N'AB+', 1, CAST(N'2023-02-11T01:27:05.703' AS DateTime))
INSERT [dbo].[tblblooddonate] ([blooddonateID], [donorid], [bloodgroup], [noofunits], [donatedate]) VALUES (4, 2, N'B+', 1, CAST(N'2023-02-11T02:09:05.210' AS DateTime))
INSERT [dbo].[tblblooddonate] ([blooddonateID], [donorid], [bloodgroup], [noofunits], [donatedate]) VALUES (5, 3, N'AB+', 1, CAST(N'2023-02-11T02:22:42.393' AS DateTime))
INSERT [dbo].[tblblooddonate] ([blooddonateID], [donorid], [bloodgroup], [noofunits], [donatedate]) VALUES (6, 1, N'A+', 1, CAST(N'2023-02-11T02:30:18.007' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblblooddonate] OFF
GO
SET IDENTITY_INSERT [dbo].[tblbloodunitssold] ON 

INSERT [dbo].[tblbloodunitssold] ([bloodsoldID], [patientid], [bloodgroup], [noofunits], [amount], [givendate]) VALUES (1, 2, N'A+', 3, 1500, CAST(N'2023-02-11T02:27:28.007' AS DateTime))
INSERT [dbo].[tblbloodunitssold] ([bloodsoldID], [patientid], [bloodgroup], [noofunits], [amount], [givendate]) VALUES (2, 1, N'B-', 2, 2000, CAST(N'2023-02-11T11:24:22.047' AS DateTime))
INSERT [dbo].[tblbloodunitssold] ([bloodsoldID], [patientid], [bloodgroup], [noofunits], [amount], [givendate]) VALUES (3, 2, N'A+', 2, 1500, CAST(N'2023-02-11T11:25:01.727' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblbloodunitssold] OFF
GO
ALTER TABLE [dbo].[tblblooddonate] ADD  DEFAULT (getdate()) FOR [donatedate]
GO
ALTER TABLE [dbo].[tblbloodunitssold] ADD  DEFAULT (getdate()) FOR [givendate]
GO
