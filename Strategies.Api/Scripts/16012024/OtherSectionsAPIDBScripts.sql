
/****** Object:  Table [dbo].[AssociatedStructures]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssociatedStructures](
	[AssociatedStructures_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Description_Type] [nvarchar](255) NULL,
	[AssociatedStructures_details] [nvarchar](155)  NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AssociatedStructures_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssociatedStructures]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[DependantsDetails]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DependantsDetails](
	[DependantsDetails_Id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[DependantsDetails_Name] [nvarchar](150) NULL,
	[DependantsDetails_DOB] [datetime] NULL,
	[DependantsDetails_Age] [int] NULL,
	[DependantsDetails_gender] [nvarchar](150) NULL,
	[DependantsDetails_relationship] [nvarchar](50) NULL,
	[DependantsDetails_FundingForPrivateSchool] [nvarchar](50) NULL,
	[DependantsDetails_NumberOfYears] [int] NULL,
	[DependantsDetails_WhichSchools] [nvarchar](255) NULL,
	[DependantsDetails_CurGradeOrPrepYear] [nvarchar](255) NULL,
	[DependantsDetails_SupportAge] [int] NULL,
	[DependantsDetails_AdditionalInfo] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DependantsDetails_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DependantsDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[EstatePlanning]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstatePlanning](
	[EstatePlanning_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Planning_Type]  [nvarchar](255)NULL,
	[EstatePlanning_status] [nvarchar](255) NOT NULL,
	[Notes] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EstatePlanning_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EstatePlanning]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[InsuranceDetails]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceDetails](
	[insurance_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Insurer_Type] [int] NOT NULL,
	[premium_amount] [nvarchar](255) NOT NULL,
	[premium_type] [nvarchar](255) NOT NULL,
	[super] [nvarchar](255) NOT NULL,
	[Comments] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[insurance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[InsuranceDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[InvestmentAssetDetails]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvestmentAssetDetails](
	[InvestmentAssetDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](255)  NULL,
	[Current_balance] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvestmentAssetDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[InvestmentAssetDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[LiabilitiesDetails]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiabilitiesDetails](
	[LiabilitiesDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[LiabilityType] [nvarchar](255) NULL,
	[Repayment_Frequence] [nvarchar](255) NULL,
	[Interest_Rate] [nvarchar](20) NULL,
	[Outstanding_Balance] [nvarchar](150) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LiabilitiesDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LiabilitiesDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[LifeStyleAssetDetails]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LifeStyleAssetDetails](
	[LifeStyleAssetDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](255)  NULL,
	[Current_balance] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LifeStyleAssetDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LifeStyleAssetDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[ProfessionalAdvisersDetails]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessionalAdvisersDetails](
	[ProfessionalAdvisersDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[ProfessionalAdvisersDetails_Type] [nvarchar](80) NULL,
	[ProfessionalAdvisersDetails_Name] [nvarchar](122) NULL,
	[ProfessionalAdvisersDetails_BusinessName] [nvarchar](122) NULL,
	[Work_Telephone] [nvarchar](80) NULL,
	[Email_Address] [nvarchar](80) NULL,
	[Notes] [nvarchar](250) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfessionalAdvisersDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProfessionalAdvisersDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[SuperAssetDetails]    Script Date: 16-01-2024 23:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperAssetDetails](
	[SuperAssetDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Superasset_Type] [int] NOT NULL,
	[Contributions] [nvarchar](255) NULL,
	[Fund_Balance] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SuperAssetDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SuperAssetDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO


ALTER TABLE [dbo].[AssociatedStructures] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DependantsDetails] ADD  DEFAULT (getdate()) FOR [DependantsDetails_DOB]
GO
ALTER TABLE [dbo].[DependantsDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[InsuranceDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[InvestmentAssetDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[LiabilitiesDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[LifeStyleAssetDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ProfessionalAdvisersDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[SuperAssetDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
