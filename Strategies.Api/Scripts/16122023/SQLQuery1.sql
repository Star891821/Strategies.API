Drop table [dbo].[Partners]
Drop table [PartnerContactDetails]
USE [StrategyDB]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 16-12-2023 16:48:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Partner_id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_id] [int] NOT NULL,
	[title] [nvarchar](15) NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[MiddleName] [nvarchar](255) NOT NULL,
	[Surname] [nvarchar](255) NOT NULL,
	[PreferredName] [nvarchar](15) NULL,
	[DOB] [datetime] NOT NULL,
	[Gender] [nvarchar](15) NULL,
	[Tax_Resident] [nvarchar](25) NULL,
	[Marital_Status] [nvarchar](15) NULL,
	[Health_Status] [nvarchar](15) NULL,
	[Retirement_Age] [int] NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[lastlogin_at] [datetime] NULL,
	[form_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Partner_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Partners] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO


USE [StrategyDB]
GO
/****** Object:  Table [dbo].[PartnerContactDetails]    Script Date: 16-12-2023 16:50:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerContactDetails](
	[PartnerContact_id] [int] IDENTITY(1,1) NOT NULL,
	[Partner_id] [int] NOT NULL,
	[Customer_id] [int] NOT NULL,
	[Mobile_Telephone] [nvarchar](15) NULL,
	[Work_Telephone] [nvarchar](15) NULL,
	[Home_Telephone] [nvarchar](15) NULL,
	[Email_Address] [nvarchar](20) NULL,
	[Skype_Name] [nvarchar](15) NULL,
	[Residential_Address] [nvarchar](255) NULL,
	[IsPostalAddressIsResidentialAddress] [bit] NULL,
	[Postal_Address] [nvarchar](255) NULL,
	[Residential_StateId] [int] NULL,
	[Residential_CityId] [int] NULL,
	[Residential_PostalCode] [nvarchar](50) NULL,
	[Postal_StateId] [int] NULL,
	[Postal_CityId] [int] NULL,
	[Postal_PostalCode] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[form_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PartnerContact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PartnerContactDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
