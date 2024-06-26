USE [StrategyDB]
GO
/****** Object:  Table [dbo].[AssociatedStructures]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssociatedStructures](
	[AssociatedStructures_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Description_Type] [nvarchar](255) NULL,
	[AssociatedStructures_details] [nvarchar](155) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AssociatedStructures_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CashFlowRequirements]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashFlowRequirements](
	[cashflow_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Question_ID] [int] NOT NULL,
	[Amount] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cashflow_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerContactDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerContactDetails](
	[CustomerContact_id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_id] [int] NULL,
	[Mobile_Telephone] [nvarchar](15) NULL,
	[Work_Telephone] [nvarchar](15) NULL,
	[Home_Telephone] [nvarchar](15) NULL,
	[Email_Address] [nvarchar](255) NULL,
	[Skype_Name] [nvarchar](15) NULL,
	[Residential_Address] [nvarchar](255) NULL,
	[IsPostalAddressIsResidentialAddress] [bit] NULL,
	[Postal_Address] [nvarchar](255) NULL,
	[Residential_StateId] [nvarchar](200) NULL,
	[Residential_CityId] [nvarchar](200) NULL,
	[Residential_PostalCode] [nvarchar](50) NULL,
	[Postal_StateId] [nvarchar](200) NULL,
	[Postal_CityId] [nvarchar](200) NULL,
	[Postal_PostalCode] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[form_id] [int] NOT NULL,
	[IsPartner] [bit] NULL,
	[PID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerContact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Customer_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](15) NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[MiddleName] [nvarchar](255) NOT NULL,
	[Surname] [nvarchar](255) NOT NULL,
	[PreferredName] [nvarchar](15) NULL,
	[DOB] [datetime] NOT NULL,
	[Gender] [nvarchar](15) NULL,
	[Tax_Resident] [bit] NULL,
	[Marital_Status] [nvarchar](15) NULL,
	[Health_Status] [nvarchar](15) NULL,
	[Retirement_Age] [int] NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[lastlogin_at] [datetime] NULL,
	[form_id] [int] NOT NULL,
	[IsPartner] [bit] NULL,
	[PID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DependantsDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
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
	[DependantsDetails_SupportAge] [int] NULL,
	[DependantsDetails_AdditionalInfo] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DependantsDetails_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmploymentDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploymentDetails](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[IsPartner] [bit] NULL,
	[PID] [int] NULL,
	[Question_ID] [int] NOT NULL,
	[Occupation] [nvarchar](255) NOT NULL,
	[NameOfEmployer] [nvarchar](255) NULL,
	[Notes] [nvarchar](255) NULL,
	[Income] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstatePlanning]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstatePlanning](
	[EstatePlanning_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Will_Exists] [bit] NULL,
	[Is_Will_Current] [bit] NULL,
	[Date_Of_Will] [datetime] NULL,
	[Will_Location] [nvarchar](255) NULL,
	[Last_Reviewed] [nvarchar](255) NULL,
	[Funeral_Plan] [bit] NULL,
	[Testamentary_Trust] [bit] NULL,
	[Power_Attorney] [nvarchar](255) NULL,
	[Executor_Of_Will] [nvarchar](255) NULL,
	[Beneficiary_Of_Your_Estate] [nvarchar](255) NULL,
	[Have_You_Appointed_An_Enduring_Guardian] [bit] NULL,
	[Date_Guardianship_Completed] [datetime] NULL,
	[Enduring_Guardian_Name] [nvarchar](255) NULL,
	[Advance_Care_Directive] [bit] NULL,
	[Notes] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EstatePlanning_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpectedFutureInflows]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpectedFutureInflows](
	[ExpectedFutureInflows_id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[form_id] [int] NOT NULL,
	[Amount] [nvarchar](255) NOT NULL,
	[Date] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[Owners] [nvarchar](255) NULL,
	[IsJoint] [bit] NULL,
	[Question_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ExpectedFutureInflows_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpenseDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseDetails](
	[ExpenseDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Question_ID] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[Owners] [nvarchar](255) NULL,
	[Amounts] [nvarchar](255) NULL,
	[Frequency] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ExpenseDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomeDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomeDetails](
	[IncomeDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Question_ID] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[Owners] [nvarchar](255) NULL,
	[Amounts] [nvarchar](255) NULL,
	[Frequency] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IncomeDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
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
	[IsJoint] [bit] NULL,
	[SumInsured] [nvarchar](250) NULL,
	[premium_frequency] [nvarchar](200) NULL,
	[benefit_period] [nvarchar](250) NULL,
	[other_description] [nvarchar](250) NULL,
	[waiting_period] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[insurance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvestmentAssetDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvestmentAssetDetails](
	[InvestmentAssetDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](255) NULL,
	[Current_balance] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvestmentAssetDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiabilitiesDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
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
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LiabilitiesDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LifeStyleAssetDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LifeStyleAssetDetails](
	[LifeStyleAssetDetails_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](255) NULL,
	[Current_balance] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LifeStyleAssetDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstQuestions]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstQuestions](
	[Question_ID] [int] IDENTITY(1,1) NOT NULL,
	[Question_Description] [nvarchar](255) NOT NULL,
	[Section_Name] [nvarchar](255) NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Question_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstRoleGroups]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstRoleGroups](
	[rolegroup_id] [int] IDENTITY(1,1) NOT NULL,
	[rolegroup_name] [nvarchar](255) NOT NULL,
	[rolegroup_description] [nvarchar](255) NULL,
	[role_id] [int] NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[rolegroup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstUserRoles]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstUserRoles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstUsers]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstUsers](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[userpassword] [nvarchar](255) NOT NULL,
	[user_givenName] [nvarchar](255) NOT NULL,
	[user_surname] [nvarchar](255) NOT NULL,
	[user_phone] [nvarchar](15) NULL,
	[role_id] [int] NOT NULL,
	[user_loginType] [nvarchar](255) NOT NULL,
	[enforce2FA] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[lastlogin_at] [datetime] NULL,
	[useremail] [nvarchar](255) NULL,
	[IsUpdated] [bit] NULL,
	[OTP] [nvarchar](10) NULL,
	[OTPGeneratedDate] [datetime] NULL,
	[IsLocked] [bit] NULL,
	[LastPwdChangedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlannedExpenditure]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlannedExpenditure](
	[PlannedExpenditure_id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[form_id] [int] NOT NULL,
	[Amount] [nvarchar](255) NOT NULL,
	[Date] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[Question_ID] [int] NULL,
	[Owners] [nvarchar](255) NULL,
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlannedExpenditure_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfessionalAdvisersDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
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
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfessionalAdvisersDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StrategyForms]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StrategyForms](
	[form_id] [int] IDENTITY(1,1) NOT NULL,
	[form_status] [int] NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[step] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK__Strategy__190E16C9D64462F9] PRIMARY KEY CLUSTERED 
(
	[form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuperAssetDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
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
	[IsJoint] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SuperAssetDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegistration]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegistration](
	[register_id] [int] IDENTITY(1,1) NOT NULL,
	[register_email] [nvarchar](255) NULL,
	[register_givenname] [nvarchar](255) NOT NULL,
	[register_surname] [nvarchar](255) NOT NULL,
	[register_password] [nvarchar](255) NOT NULL,
	[register_phone] [nvarchar](15) NULL,
	[register_type] [nvarchar](255) NOT NULL,
	[enforce2FA] [int] NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[register_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WillDetails]    Script Date: 6/8/2024 6:04:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WillDetails](
	[will_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](100) NULL,
	[Is_Will_Current] [nvarchar](255) NULL,
	[Date_Of_Will] [datetime] NULL,
	[Will_Location] [nvarchar](255) NULL,
	[Executor_Of_Will] [nvarchar](255) NULL,
	[Beneficiary_Of_Your_Estate] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[will_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AssociatedStructures] ON 

INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1, 93, N'26', N'40', N'True', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2, 1093, N'1026', N'40', N'True', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (3, 1093, N'1026,1027', N'42', N'True', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (4, 1094, N'1028', N'40', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (5, 1095, N'1029', N'40', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (6, 1096, N'1030', N'40', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (7, 1097, N'1031', N'40', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (8, 1098, N'1032', N'40', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (9, 1099, N'1033', N'40', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (10, 1104, N'1037', N'40', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (11, 1106, N'1040', N'41', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (12, 1107, N'1041', N'41', N'Yes', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AssociatedStructures] ([AssociatedStructures_id], [form_id], [Owners], [Description_Type], [AssociatedStructures_details], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (13, 1107, N'1041', N'42', N'No', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AssociatedStructures] OFF
GO
SET IDENTITY_INSERT [dbo].[CashFlowRequirements] ON 

INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1, 74, 2, N'456', CAST(N'2024-01-19T00:26:28.343' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (2, 76, 2, N'345', CAST(N'2024-01-19T10:00:01.580' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (10, 77, 2, N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (11, 83, 2, N'200', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (12, 85, 2, N'200', CAST(N'2024-01-27T12:44:45.303' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (13, 86, 2, N'200', CAST(N'2024-01-27T12:51:44.157' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (14, 89, 2, N'200', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (15, 88, 1, N'100', CAST(N'2024-01-28T11:59:36.087' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (16, 88, 2, N'200', CAST(N'2024-01-28T11:59:36.087' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (17, 91, 1, N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (18, 91, 2, N'200', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (21, 92, 1, N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (22, 92, 2, N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (23, 93, 1, N'300', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (24, 93, 2, N'500', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1021, 1093, 1, N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1022, 1093, 2, N'200', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1023, 1094, 1, N'10', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1024, 1094, 2, N'20', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1025, 1095, 1, N'1200', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1026, 1095, 2, N'2000', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1027, 1096, 1, N'1000', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1028, 1096, 2, N'2000', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1029, 1097, 1, N'1200', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1030, 1097, 2, N'1020', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1031, 1098, 1, N'1000', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1032, 1098, 2, N'1000', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1033, 1099, 1, N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1034, 1099, 2, N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1035, 1104, 1, N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1036, 1104, 2, N'500', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1037, 1106, 1, N'5000', NULL, NULL, NULL, NULL)
INSERT [dbo].[CashFlowRequirements] ([cashflow_id], [form_id], [Question_ID], [Amount], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1038, 1106, 2, N'2000', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CashFlowRequirements] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerContactDetails] ON 

INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (15, 11, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', N'', N'Address 1', 1, N'Address 1', N'New South Wales', N'Gorakhpur', N'273014', N'New South Wales', N'Gorakhpur', N'273014', CAST(N'2024-01-27T07:14:32.383' AS DateTime), 1, CAST(N'2024-01-27T07:14:32.383' AS DateTime), 1, 85, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (16, 11, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', N'', N'Address 2', 1, N'Address 2', N'Victoria', N'Gorakhpur', N'273014', N'Victoria', N'Gorakhpur', N'273014', CAST(N'2024-01-27T07:14:32.383' AS DateTime), 1, CAST(N'2024-01-27T07:14:32.383' AS DateTime), 1, 85, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (17, 13, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', N'', N'273014', 1, N'273014', N'New South Wales', N'273014', N'273014', N'New South Wales', N'273014', N'273014', CAST(N'2024-01-27T07:17:42.937' AS DateTime), 1, CAST(N'2024-01-27T07:17:42.937' AS DateTime), 1, 86, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (18, 13, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', N'', N'273014', 0, N'273014', N'Victoria', N'273014', N'273014', N'Victoria', N'273014', N'273014', CAST(N'2024-01-27T07:17:42.937' AS DateTime), 1, CAST(N'2024-01-27T07:17:42.937' AS DateTime), 1, 86, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (19, 19, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', N'', N'Address 1', 1, N'Address 1', N'New South Wales', N'273014', N'273014', N'New South Wales', N'273014', N'273014', CAST(N'2024-01-28T11:47:17.613' AS DateTime), 1, CAST(N'2024-01-28T11:47:17.613' AS DateTime), 1, 89, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (20, 19, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', N'', N'273014', 0, N'273014', N'Victoria', N'273014', N'273014', N'Victoria', N'273014', N'273014', CAST(N'2024-01-28T11:47:17.613' AS DateTime), 1, CAST(N'2024-01-28T11:47:17.613' AS DateTime), 1, 89, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (21, 16, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', N'', N'Address 1', 1, N'Address 1', N'New South Wales', N'273014', N'273014', N'New South Wales', N'273014', N'273014', CAST(N'2024-01-28T06:27:55.527' AS DateTime), 1, CAST(N'2024-01-28T06:27:55.527' AS DateTime), 1, 88, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (22, 18, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', N'', N' Address 2', 1, N' Address 2', N'Victoria', N'273014', N'273014', N'Victoria', N'273014', N'273014', CAST(N'2024-01-28T06:27:55.527' AS DateTime), 1, CAST(N'2024-01-28T06:27:55.527' AS DateTime), 1, 88, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (23, 21, NULL, NULL, NULL, N'', N'', N'', 0, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (24, 22, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', NULL, N'8951021503', 0, N'8951021503', N'New South Wales', N'8951021503', N'895102', N'New South Wales', N'8951021503', N'895102', NULL, NULL, NULL, NULL, 91, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (25, 23, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', NULL, N'8951021503', 1, N'8951021503', N'Victoria', N'8951021503', N'895102', N'Victoria', N'8951021503', N'895102', NULL, NULL, NULL, NULL, 91, 1, 24)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (26, 24, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', NULL, N'8951021503', 0, N'8951021503', N'New South Wales', N'8951021503', N'895102', N'New South Wales', N'8951021503', N'895102', NULL, NULL, NULL, NULL, 92, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (27, 25, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', NULL, N'8951021503', 1, N'8951021503', N'New South Wales', N'8951021503', N'895', N'New South Wales', N'8951021503', N'895', NULL, NULL, NULL, NULL, 92, 1, 26)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (28, 26, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', NULL, N'Address', 0, N'Address', N'New South Wales', N'Dallas', N'273014', N'New South Wales', N'Dallas', N'273014', NULL, NULL, NULL, NULL, 93, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1028, 1026, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', NULL, N'8951021503', 0, N'8951021503', N'New South Wales', N'8951021503', N'8951021503', N'New South Wales', N'8951021503', N'8951021503', NULL, NULL, NULL, NULL, 1093, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1029, 1027, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', NULL, N'8951021503', 1, N'8951021503', N'Queensland', N'8951021503', N'8951021503', N'Queensland', N'8951021503', N'8951021503', NULL, NULL, NULL, NULL, 1093, 1, 1028)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1030, 1028, N'8951021503', N'8951021503', N'8951021503', N'emailidsatya@gmail.com', NULL, N'asdfsdf', 1, N'asdfsdf', N'New South Wales', N'8951021503', N'8951021503', N'New South Wales', N'8951021503', N'8951021503', NULL, NULL, NULL, NULL, 1094, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1031, 1029, N'8951021503', NULL, NULL, N'emailidsatya@gmail.com', NULL, N'Test', 1, N'Test', N'New South Wales', N'City', N'560034', N'New South Wales', N'City', N'560034', NULL, NULL, NULL, NULL, 1095, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1032, 1030, N'8951021503', NULL, NULL, N'emailidsatya@gmail.com', NULL, N'dssadasdasd', 1, N'dssadasdasd', N'Victoria', N'asdasd', N'324234', N'Victoria', N'asdasd', N'324234', NULL, NULL, NULL, NULL, 1096, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1033, 1031, N'8951021503', NULL, NULL, N'emailidsatya@gmail.com', NULL, N'asd', 1, N'asd', N'New South Wales', N'asd', N'2323', N'New South Wales', N'asd', N'2323', NULL, NULL, NULL, NULL, 1097, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1034, 1032, N'8951021503', NULL, NULL, N'emailidsatya@gmail.com', NULL, N'sdfsdf', 1, N'sdfsdf', N'Victoria', N'sdfsd', N'2323', N'Victoria', N'sdfsd', N'2323', NULL, NULL, NULL, NULL, 1098, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1035, 1033, N'8951021503', NULL, NULL, N'emailidsatya@gmail.com', NULL, N'fsdfsdf', 1, N'fsdfsdf', N'New South Wales', N'sdsdf', N'343443', N'New South Wales', N'sdsdf', N'343443', NULL, NULL, NULL, NULL, 1099, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1036, 1037, N'9885944177', NULL, NULL, N'sha@email.com', NULL, N'HYDERABAD', 1, N'HYDERABAD', N'New South Wales', N'hYDERABAD', N'560078', N'New South Wales', N'hYDERABAD', N'560078', NULL, NULL, NULL, NULL, 1104, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1037, 1039, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1103, 0, NULL)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1038, 1040, N'6431974031', NULL, NULL, N'support@meritzeal.com', NULL, N'230 Collins Street, Melbourne VIC, Australia', 1, N'230 Collins Street, Melbourne VIC, Australia', N'New South Wales', N'TEST', N'2000', N'New South Wales', N'TEST', N'2000', NULL, NULL, NULL, NULL, 1106, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1039, 1041, N'0400428432', NULL, NULL, N'joshua.logan@forefrontwealth.com.au', NULL, N'90 Harrow Road', 1, N'90 Harrow Road', N'New South Wales', N'Bexley', N'2207', N'New South Wales', N'Bexley', N'2207', NULL, NULL, NULL, NULL, 1107, 0, 0)
INSERT [dbo].[CustomerContactDetails] ([CustomerContact_id], [Customer_id], [Mobile_Telephone], [Work_Telephone], [Home_Telephone], [Email_Address], [Skype_Name], [Residential_Address], [IsPostalAddressIsResidentialAddress], [Postal_Address], [Residential_StateId], [Residential_CityId], [Residential_PostalCode], [Postal_StateId], [Postal_CityId], [Postal_PostalCode], [created_at], [created_by], [modified_at], [modified_by], [form_id], [IsPartner], [PID]) VALUES (1040, 1034, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1101, 0, 0)
SET IDENTITY_INSERT [dbo].[CustomerContactDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2014-03-07T18:30:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-26T13:36:33.770' AS DateTime), 1, CAST(N'2024-01-26T13:36:33.770' AS DateTime), 1, NULL, 77, 0, 0)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (3, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2014-03-07T18:30:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-26T20:56:57.147' AS DateTime), 1, CAST(N'2024-01-26T20:56:57.147' AS DateTime), 1, NULL, 78, 0, 0)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (5, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-26T21:12:43.740' AS DateTime), NULL, NULL, NULL, NULL, 80, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (6, N'Mrs', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'Female', 0, N'Married', N'Good', 34, CAST(N'2024-01-26T21:12:43.753' AS DateTime), NULL, NULL, NULL, NULL, 80, 1, 5)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (7, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-26T21:20:06.387' AS DateTime), NULL, NULL, NULL, NULL, 82, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (8, N'Mrs', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'Female', 1, N'Single', N'Good', 34, CAST(N'2024-01-26T21:20:06.427' AS DateTime), NULL, NULL, NULL, NULL, 82, 1, 7)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (9, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-26T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-26T21:21:27.173' AS DateTime), 1, CAST(N'2024-01-26T21:21:27.173' AS DateTime), 1, NULL, 83, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (11, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-27T12:41:12.213' AS DateTime), 1, CAST(N'2024-01-27T12:41:12.213' AS DateTime), 1, NULL, 85, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (13, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-27T12:46:10.523' AS DateTime), 1, CAST(N'2024-01-27T12:46:10.523' AS DateTime), 1, NULL, 86, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (15, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-27T12:51:44.063' AS DateTime), NULL, NULL, NULL, NULL, 87, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (16, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-27T12:51:44.067' AS DateTime), 1, CAST(N'2024-01-27T12:51:44.067' AS DateTime), 1, NULL, 88, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (17, N'Mrs', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'Female', 0, N'Married', N'Good', 34, CAST(N'2024-01-27T12:51:44.093' AS DateTime), NULL, NULL, NULL, NULL, 87, 1, 15)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (18, N'Mrs', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'Female', 0, N'Married', N'Good', 34, CAST(N'2024-01-27T12:51:44.110' AS DateTime), 1, CAST(N'2024-01-27T12:51:44.110' AS DateTime), 1, NULL, 88, 1, 16)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (19, N'Mr', N'', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-27T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-27T12:52:54.637' AS DateTime), 1, CAST(N'2024-01-27T12:52:54.637' AS DateTime), 1, NULL, 89, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (21, N'Mr', N'', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-01-28T17:36:46.193' AS DateTime), NULL, NULL, NULL, NULL, 90, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (22, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 60, CAST(N'2024-01-28T19:14:45.263' AS DateTime), NULL, NULL, NULL, NULL, 91, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (23, N'Mrs', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'Female', 0, N'Married', N'Good', 50, CAST(N'2024-01-28T19:14:45.343' AS DateTime), NULL, NULL, NULL, NULL, 91, 1, 22)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (24, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'Male', 0, N'Married', N'Excellent', 60, CAST(N'2024-01-28T21:27:15.820' AS DateTime), NULL, NULL, NULL, NULL, 92, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (25, N'Mr', N'Bala', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-01-28T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Good', 50, CAST(N'2024-01-28T21:27:15.833' AS DateTime), NULL, NULL, NULL, NULL, 92, 1, 24)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (26, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-02-03T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 64, CAST(N'2024-02-03T12:06:38.740' AS DateTime), NULL, NULL, NULL, NULL, 93, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1026, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-02-11T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-02-11T21:39:06.047' AS DateTime), NULL, NULL, NULL, NULL, 1093, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1027, N'Mrs', N'Tripathi', N'Prakash', N'ABC', N'abc', CAST(N'2024-02-11T00:00:00.000' AS DateTime), N'Female', 0, N'Married', N'Excellent', 34, CAST(N'2024-02-11T21:39:06.160' AS DateTime), NULL, NULL, NULL, NULL, 1093, 1, 1026)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1028, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-02-19T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 34, CAST(N'2024-02-19T21:32:49.967' AS DateTime), NULL, NULL, NULL, NULL, 1094, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1029, N'Mr', N'Satya', N'', N'Tripathi', N'Satya', CAST(N'2024-02-06T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 10, CAST(N'2024-02-19T22:08:26.290' AS DateTime), NULL, NULL, NULL, NULL, 1095, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1030, N'Mr', N'Satya', N'Prakash', N'Tripathi', N'Satya', CAST(N'2024-02-13T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 23, CAST(N'2024-02-26T17:24:47.240' AS DateTime), NULL, NULL, NULL, NULL, 1096, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1031, N'Mr', N'Satya', N'', N'Tripathi', N'Satya', CAST(N'2024-02-13T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 23, CAST(N'2024-02-26T18:44:33.177' AS DateTime), NULL, NULL, NULL, NULL, 1097, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1032, N'Mr', N'Satya', N'', N'Tripathi', NULL, CAST(N'2024-02-13T00:00:00.000' AS DateTime), N'Male', 0, N'Single', N'Excellent', 23, CAST(N'2024-02-26T19:30:12.743' AS DateTime), NULL, NULL, NULL, NULL, 1098, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1033, N'Mr', N'Satya', N'', N'Tripathi', N'Satya', CAST(N'2024-01-29T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 10, CAST(N'2024-02-26T21:42:23.663' AS DateTime), NULL, NULL, NULL, NULL, 1099, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1034, N'Mr', N'Shaiksha', N'', N'Kalluri', NULL, CAST(N'1980-09-17T00:00:00.000' AS DateTime), N'Male', 0, N'Married', N'Good', 60, CAST(N'2024-06-02T10:37:45.770' AS DateTime), NULL, NULL, NULL, NULL, 1101, 0, 0)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1035, N'Mr', N'Shaiksha', N'', N'Kalluri', NULL, CAST(N'1980-09-18T00:00:00.000' AS DateTime), N'Male', 0, N'Married', N'Good', 60, CAST(N'2024-06-02T10:38:12.307' AS DateTime), NULL, NULL, NULL, NULL, 1102, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1037, N'Mr', N'Tanveer', N'', N'Smith', NULL, CAST(N'1980-11-19T00:00:00.000' AS DateTime), N'Male', 0, N'Married', N'Excellent', 65, CAST(N'2024-06-02T12:40:19.307' AS DateTime), NULL, NULL, NULL, NULL, 1104, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1038, N'Mr', N'JK', N't', N'K', NULL, CAST(N'1990-01-18T00:00:00.000' AS DateTime), N'Male', 0, N'Married', N'Good', 70, CAST(N'2024-06-02T12:51:45.007' AS DateTime), NULL, NULL, NULL, NULL, 1105, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1039, N'Mr', N'John', N'', N'Smith', NULL, CAST(N'1980-10-15T00:00:00.000' AS DateTime), N'Male', 0, N'Married', N'Excellent', 60, CAST(N'2024-06-02T12:57:00.123' AS DateTime), NULL, NULL, NULL, NULL, 1103, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1040, N'Mr', N'Craig', N'', N'Smith', NULL, CAST(N'2020-12-18T00:00:00.000' AS DateTime), N'Male', 1, N'Married', N'Excellent', 49, CAST(N'2024-06-03T07:19:34.387' AS DateTime), NULL, NULL, NULL, NULL, 1106, 0, NULL)
INSERT [dbo].[Customers] ([Customer_id], [title], [firstName], [MiddleName], [Surname], [PreferredName], [DOB], [Gender], [Tax_Resident], [Marital_Status], [Health_Status], [Retirement_Age], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [form_id], [IsPartner], [PID]) VALUES (1041, N'Mr', N'Joshua', N'J', N'Logan', N'Josh', CAST(N'1952-10-11T00:00:00.000' AS DateTime), N'Male', 1, N'Single', N'Excellent', 70, CAST(N'2024-06-04T01:15:51.017' AS DateTime), NULL, NULL, NULL, NULL, 1107, 0, NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[DependantsDetails] ON 

INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (10, 93, N'26', N'Test', CAST(N'2024-02-04T00:00:00.000' AS DateTime), 12, N'Male', N'434', 34, N'34t 4t dfgd fg', CAST(N'2024-02-04T14:48:01.280' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1009, 1093, N'1027', N'll', CAST(N'2024-02-16T00:00:00.000' AS DateTime), 6, N'Female', N'jhk', 5, N'jhghgh', CAST(N'2024-02-16T21:39:55.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1017, 1094, N'1028', N'Satya', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 4, N'Male', N'Satya', 2, N'Remove Validation', CAST(N'2024-02-19T22:06:04.023' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1022, 1095, N'1029', N'Satya', CAST(N'2024-02-20T00:00:00.000' AS DateTime), 0, N'Male', N'Test', 24, N'Test', CAST(N'2024-02-20T16:35:19.057' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1026, 1096, N'1030', N'sdfsdf', CAST(N'2022-01-31T00:00:00.000' AS DateTime), 2, N'Male', N'sdfsdfsdf', 34, N'dfgdfgdfgdfg', CAST(N'2024-02-26T17:34:56.417' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1030, 1097, N'1031', N'sdfsdf', CAST(N'2024-02-23T00:00:00.000' AS DateTime), 0, N'Male', N'sdfsdf', 23, N'sdfsdf', CAST(N'2024-02-26T19:23:43.490' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1034, 1098, N'1032', N'2323', CAST(N'2024-02-23T00:00:00.000' AS DateTime), 0, N'Male', N'233223', 2, N'22332', CAST(N'2024-02-26T19:45:37.007' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2038, 1099, N'1033', N'dfgdfg', CAST(N'2019-01-08T00:00:00.000' AS DateTime), 5, N'Male', N'dfgdfg', 343, N'sdfsdfsdfsdfsfd', CAST(N'2024-03-29T19:31:57.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2047, 1106, N'1040', N'test', CAST(N'2021-12-28T00:00:00.000' AS DateTime), 2, N'Male', N'family', 45, N'illness', CAST(N'2024-06-03T07:25:27.153' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2057, 1107, N'1041', N'.', CAST(N'1999-12-28T00:00:00.000' AS DateTime), 24, N'Female', N'Daughter', 25, N'None', CAST(N'2024-06-05T04:45:46.460' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[DependantsDetails] ([DependantsDetails_Id], [form_id], [Owners], [DependantsDetails_Name], [DependantsDetails_DOB], [DependantsDetails_Age], [DependantsDetails_gender], [DependantsDetails_relationship], [DependantsDetails_SupportAge], [DependantsDetails_AdditionalInfo], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2062, 1104, N'1037', N'Smit', CAST(N'1989-05-01T00:00:00.000' AS DateTime), 35, N'Male', N'SON', 5, N'Private school', CAST(N'2024-06-07T04:42:45.683' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[DependantsDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[EmploymentDetails] ON 

INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (2, 89, 0, 0, 12, N'Job', N'Satya', N'Satya', N'78', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (3, 92, 0, 0, 12, N'dsfg', N'dfg', N'dfgdfg', N'3', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (4, 93, 0, 0, 12, N'Job', N'Satya', N'Test', N'1200', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1003, 1093, 0, 0, 12, N'Job', N'Satya', N'Satya Testing', N'12500', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1004, 1094, 0, 0, 17, N'100', N'Satya', N'100', N'100', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1005, 1095, 0, 0, 12, N'Job', N'Satya', N'Test', N'12000', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1006, 1096, 0, 0, 12, N'asdasd', N'asd', N'asd', N'asd', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1007, 1097, 0, 0, 12, N'dsfsdf', N'sdf', N'sdf', N'sdf', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1008, 1098, 0, 0, 12, N'dfgdfg', N'dfgdfg', N'dfg', N'dfg', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1009, 1099, 0, 0, 12, N'Test', N'Test', N'Satya', N'10000', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1010, 1104, 0, 0, 15, N'Engineer1', N'test comp', N'test', N'500', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1011, 1106, 0, 0, 12, N'Director', N'Meritzeal Buiness Solutions', N'test', N'25000', NULL, NULL, NULL, NULL)
INSERT [dbo].[EmploymentDetails] ([emp_id], [form_id], [IsPartner], [PID], [Question_ID], [Occupation], [NameOfEmployer], [Notes], [Income], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1012, 1107, 0, 0, 1041, N'Director', N'Forefront Wealth', N'.', N'20000', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EmploymentDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[EstatePlanning] ON 

INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (5, 1093, N'1027', 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, CAST(N'2024-02-16T21:39:55.427' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (10, 1094, N'1028', 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (11, 1095, N'1029', 1, 1, CAST(N'2024-02-20T00:00:00.000' AS DateTime), N'Yest', N'T', 1, 1, N'sdf', N'T', N'sdf', 1, CAST(N'2024-02-20T00:00:00.000' AS DateTime), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (12, 1096, N'1030', 1, 1, CAST(N'2024-02-24T00:00:00.000' AS DateTime), N'dfgdfg', N'Last reviewed', 1, 1, N'dfg', N'dfgdfg', N'dfg', 1, CAST(N'2024-02-24T00:00:00.000' AS DateTime), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (13, 1097, N'1031', 1, 1, CAST(N'2024-02-24T00:00:00.000' AS DateTime), N'sdf', N'sdf', 1, 1, N'sdf', N'sdf', N'sdf', 1, CAST(N'2024-02-24T00:00:00.000' AS DateTime), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (14, 1098, N'1032', 1, 1, CAST(N'2024-02-24T00:00:00.000' AS DateTime), N'32332', N'2332', 1, 1, N'33', N'232', N'2332', 1, CAST(N'2024-02-24T00:00:00.000' AS DateTime), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (15, 1099, N'1033', 1, 1, CAST(N'2024-01-13T00:00:00.000' AS DateTime), N'sdfsdf', N'sdfsdf', 1, 1, N'sdf', N'sdf', N'sdf', 1, CAST(N'2024-01-29T00:00:00.000' AS DateTime), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (16, 1104, N'1037', 1, 1, CAST(N'2023-05-02T00:00:00.000' AS DateTime), N'test', NULL, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (17, 1106, N'1040', 1, 1, CAST(N'2023-04-29T00:00:00.000' AS DateTime), N'sydney', NULL, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[EstatePlanning] ([EstatePlanning_id], [form_id], [Owners], [Will_Exists], [Is_Will_Current], [Date_Of_Will], [Will_Location], [Last_Reviewed], [Funeral_Plan], [Testamentary_Trust], [Power_Attorney], [Executor_Of_Will], [Beneficiary_Of_Your_Estate], [Have_You_Appointed_An_Enduring_Guardian], [Date_Guardianship_Completed], [Enduring_Guardian_Name], [Advance_Care_Directive], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (18, 1107, N'1041', 1, 1, CAST(N'2019-12-29T00:00:00.000' AS DateTime), N'Home', N'2020', 0, 0, N'TBC', N'Alex', N'Alex', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[EstatePlanning] OFF
GO
SET IDENTITY_INSERT [dbo].[ExpectedFutureInflows] ON 

INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (3, N'Renovate Home', 89, N'200', CAST(N'2024-01-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (16, N'New Car', 92, N'200', CAST(N'2024-02-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'24', 0, 6)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (17, N'Renovate Home', 93, N'300', CAST(N'2024-02-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'26', 0, 7)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1010, N'New Car', 1093, N'100', CAST(N'2024-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1026', 0, 6)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1011, N'Renovate Home', 1093, N'200', CAST(N'2024-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1026,1027', 0, 7)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1012, N'New Car', 1094, N'100', CAST(N'2024-02-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1028', 0, 6)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1013, N'Other', 1095, N'200', CAST(N'2024-02-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1029', 0, 8)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1014, N'New Car', 1096, N'100', CAST(N'2024-01-29T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1030', 0, 6)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1015, N'New Car', 1097, N'1000', CAST(N'2024-02-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1031', 0, 6)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1016, N'New Car', 1098, N'100', CAST(N'2024-02-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1032', 0, 6)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1017, N'OtherTest', 1099, N'200', CAST(N'2024-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1033', 0, 8)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1018, N'New Car', 1104, N'120', CAST(N'2024-05-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1037', 0, 6)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1019, N'New Car', 1106, N'45000', CAST(N'2027-01-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1040', 0, 6)
INSERT [dbo].[ExpectedFutureInflows] ([ExpectedFutureInflows_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Owners], [IsJoint], [Question_ID]) VALUES (1020, N'New Car', 1107, N'20000', CAST(N'2025-05-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, N'1041', 0, 6)
SET IDENTITY_INSERT [dbo].[ExpectedFutureInflows] OFF
GO
SET IDENTITY_INSERT [dbo].[ExpenseDetails] ON 

INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2, 89, 18, N'test', N'Satya', N'100', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (3, 92, 18, N'dfg', NULL, NULL, NULL, CAST(N'2024-02-03T11:55:56.510' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (4, 93, 18, N'Test', N'26', N'200', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1003, 1093, 18, N'Test', N'1026', N'100', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1004, 1093, 19, N'Test', N'1026,1027', N'2000', N'Quarterly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1005, 1094, 18, N'dfgdfg', N'1028', N'100', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1006, 1095, 18, N'Test', N'1029', N'100', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1007, 1096, 18, N'asd', N'1030', N'100', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1008, 1096, 19, N'wwqe', N'1030', N'200', N'Fortnightly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1009, 1097, 18, N'sdfsdf', N'1031', N'1000', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1010, 1098, 18, N'ffsdf', N'1032', N'1000', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1011, 1099, 18, N'Dasada', N'1033', N'1000', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1012, 1104, 18, N'test', N'1037', N'50', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1013, 1106, 19, N'max', N'1040', N'45', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1014, 1106, 18, N'kp', N'1040', N'18', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ExpenseDetails] ([ExpenseDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1015, 1107, 1042, N'Living expenses', N'1041', N'500', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ExpenseDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[IncomeDetails] ON 

INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1, 89, 9, N'Test', N'Satya', N'1200', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2, 89, 10, N'Test1', N'Satya', N'100', N'Quarterly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (3, 93, 9, N'Test', N'26', N'300', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1003, 1093, 9, N'1000', N'1026', N'300', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1004, 1093, 10, N'500', N'1026,1027', N'4000', N'Yearly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1005, 1094, 9, N'sdfsdf', N'1028', N'200', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1006, 1095, 9, N'Test', N'1029', N'100', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1007, 1096, 9, N'dfdf', N'1030', N'1000', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1008, 1097, 9, N'sdasd', N'1031', N'1000', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1009, 1098, 9, N'sdfs', N'1032', N'100', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1010, 1099, 9, N'Test', N'1033', N'12300', N'Weekly ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1011, 1099, 10, N'werfsdfsdf', N'1033', N'200', N'Fortnightly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1012, 1104, 9, N'test', N'1037', N'50', N'Fortnightly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1013, 1106, 9, N'test', N'1040', N'55000', N'Monthly', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IncomeDetails] ([IncomeDetails_id], [form_id], [Question_ID], [Description], [Owners], [Amounts], [Frequency], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1014, 1107, 9, N'Salary', N'1041', N'50000', N'Yearly', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[IncomeDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[InsuranceDetails] ON 

INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1, 89, N'Satya', 36, N'100', N'1', N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (2, 89, N'Satya', 37, N'10', N'1', N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (3, 93, N'26', 36, N'100', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1003, 1093, N'1026', 36, N'100', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'300', N'1', NULL, N'hhhj', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1004, 1093, N'1026,1027', 37, N'500', N'2', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'300', N'1', NULL, N'hhjjj', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1005, 1094, N'1028', 39, N'1000', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'100', N'1', NULL, N'Yes', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1006, 1095, N'1029', 36, N'100', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'200', N'1', NULL, N'Test', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1007, 1095, N'1029', 39, N'345', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'45', N'2', N'5 years', N'Test', N'1 year')
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1008, 1096, N'1030', 36, N'2323', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'2323', N'1', NULL, N'sdfsdfsdf', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1009, 1097, N'1031', 36, N'12342', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'12345', N'1', NULL, N'sdasd', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1010, 1098, N'1032', 36, N'23', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'23', N'1', NULL, N'23233', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1011, 1099, N'1033', 36, N'1000', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'100', N'1', NULL, N'Test', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1012, 1104, N'1037', 36, N'500', N'2', N'2', NULL, NULL, NULL, NULL, NULL, NULL, N'50000', N'2', NULL, N'test', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1013, 1106, N'1040', 36, N'16', N'2', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'08', N'1', NULL, N'test', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1014, 1107, N'1041', 36, N'3000', N'1', N'2', NULL, NULL, NULL, NULL, NULL, NULL, N'300000', N'1', NULL, N'.', NULL)
INSERT [dbo].[InsuranceDetails] ([insurance_id], [form_id], [Owners], [Insurer_Type], [premium_amount], [premium_type], [super], [Comments], [created_at], [created_by], [modified_at], [modified_by], [IsJoint], [SumInsured], [premium_frequency], [benefit_period], [other_description], [waiting_period]) VALUES (1015, 1107, N'1041', 39, N'2000', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'10000', N'1', N'to age 70', N'.', N'2 year')
SET IDENTITY_INSERT [dbo].[InsuranceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[InvestmentAssetDetails] ON 

INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (6, 93, N'26', N'Investment Portfolio', N'200', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (7, 93, N'26', N'Investment Portfolio', N'300', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1006, 1093, N'1026', N'Cash', N'600', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1007, 1093, N'1026,1027', N'Investment Portfolio', N'2000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1008, 1094, N'1028', N'Cash', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1009, 1095, N'1029', N'Test', N'123', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1010, 1096, N'1030', N'sdfsdf', N'2323', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1011, 1097, N'1031', N'sdfsdf', N'1000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1012, 1098, N'1032', N'gfhfgh', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1013, 1099, N'1033', N'sdfsdf', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1014, 1104, N'1037', N'test1', N'1500', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1015, 1106, N'1040', N'test', N'22', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1016, 1107, N'1041', N'Cash', N'50000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvestmentAssetDetails] ([InvestmentAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1017, 1107, N'1041', N'Investments', N'200000', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvestmentAssetDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[LiabilitiesDetails] ON 

INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1, 89, N'Satya', N'Primary Residence Mortgage', N'Monthly', N'111', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2, 93, N'26', N'Primary Residence Mortgage', N'Monthly', N'2', N'300', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (3, 93, N'26', N'Motor Vehicle Loan', N'Quarterly', N'2', N'140', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1002, 1093, N'1026', N'Primary Residence Mortgage', N'Monthly', N'1', N'3000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1003, 1093, N'1026,1027', N'Motor Vehicle Loan', N'Quarterly', N'2', N'500', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1004, 1094, N'1028', N'Primary Residence Mortgage', N'Weekly ', N'1', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1005, 1095, N'1029', N'Test', N'Weekly ', N'2', N'234', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1006, 1096, N'1030', N'sdfsdf', N'Weekly ', N'2', N'200', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1007, 1097, N'1031', N'dfsdf', N'Weekly ', N'2', N'1233', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1008, 1098, N'1032', N'fdgdfg', N'Weekly ', N'2', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1009, 1099, N'1033', N'dsafsdf', N'Weekly ', N'2', N'33', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1010, 1104, N'1037', N'test2', N'Fortnightly', N'10', N'500', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1011, 1106, N'1040', N'basic', N'Monthly', N'2', N'180', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LiabilitiesDetails] ([LiabilitiesDetails_id], [form_id], [Owners], [LiabilityType], [Repayment_Frequence], [Interest_Rate], [Outstanding_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1012, 1107, N'1041', N'Mortgage', N'Monthly', N'6%', N'200000', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[LiabilitiesDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[LifeStyleAssetDetails] ON 

INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1, 89, N'Satya', NULL, N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2, 89, N'Satya', NULL, N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (3, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (4, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (5, 89, NULL, NULL, NULL, CAST(N'2024-01-28T17:17:32.453' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (6, 93, N'26', N'Primary Residence', N'200', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (7, 93, N'26', N'Household Contents', N'20', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1006, 1093, N'1026', N'Primary Residence', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1007, 1093, N'1026,1027', N'Household Contents', N'3000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1008, 1094, N'1028', N'Primary Residence', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1009, 1095, N'1029', N'Test', N'1000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1010, 1096, N'1030', N'sdfsdfsdf', N'2323', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1011, 1097, N'1031', N'sdfsdf', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1012, 1098, N'1032', N'dfsdf', N'1000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1013, 1099, N'1033', N'sadfsdf', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1014, 1104, N'1037', N'test', N'50', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1015, 1106, N'1040', N'test', N'54', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1016, 1107, N'1041', N'Home', N'600000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LifeStyleAssetDetails] ([LifeStyleAssetDetails_id], [form_id], [Owners], [Descriptions], [Current_balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1017, 1107, N'1041', N'Home Contents', N'20000', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[LifeStyleAssetDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[MstQuestions] ON 

INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1, N'How much money do you want to keep in your personal bank account for every day expenses?', N'CASH FLOW REQUIREMENTS', 1, CAST(N'2024-01-03T23:14:11.750' AS DateTime), 1, CAST(N'2024-01-03T23:14:11.750' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (2, N'Estimated after tax income (in today''s dollars) required per annum during your retirement?', N'CASH FLOW REQUIREMENTS', 1, CAST(N'2024-01-03T23:14:34.173' AS DateTime), 1, CAST(N'2024-01-03T23:14:34.173' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (3, N'New Car', N'PLANNED EXPENDITURE', 1, CAST(N'2024-01-27T13:05:16.993' AS DateTime), 1, CAST(N'2024-01-27T13:05:16.993' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (4, N'Renovate Home', N'PLANNED EXPENDITURE', 1, CAST(N'2024-01-27T13:05:16.997' AS DateTime), 1, CAST(N'2024-01-27T13:05:16.997' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (5, N'Other', N'PLANNED EXPENDITURE', 1, CAST(N'2024-01-27T13:05:16.997' AS DateTime), 1, CAST(N'2024-01-27T13:05:16.997' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (6, N'New Car', N'EXPECTED FUTURE INFLOWS', 1, CAST(N'2024-01-27T13:39:01.757' AS DateTime), 1, CAST(N'2024-01-27T13:39:01.757' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (7, N'Renovate Home', N'EXPECTED FUTURE INFLOWS', 1, CAST(N'2024-01-27T13:39:01.813' AS DateTime), 1, CAST(N'2024-01-27T13:39:01.813' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (8, N'Other', N'EXPECTED FUTURE INFLOWS', 1, CAST(N'2024-01-27T13:39:01.817' AS DateTime), 1, CAST(N'2024-01-27T13:39:01.817' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (9, N'Employment Income', N'INCOME DETAILS', 1, CAST(N'2024-01-27T17:11:35.983' AS DateTime), 1, CAST(N'2024-01-27T17:11:35.983' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (10, N'Investment Income', N'INCOME DETAILS', 1, CAST(N'2024-01-27T17:11:36.050' AS DateTime), 1, CAST(N'2024-01-27T17:11:36.050' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (11, N'Business Income', N'INCOME DETAILS', 1, CAST(N'2024-01-27T17:11:36.050' AS DateTime), 1, CAST(N'2024-01-27T17:11:36.050' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (12, N'Full TIme', N'EMPLOYMENT DETAILS', 1, CAST(N'2024-01-27T17:58:33.257' AS DateTime), 1, CAST(N'2024-01-27T17:58:33.257' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (13, N'Part Time', N'EMPLOYMENT DETAILS', 1, CAST(N'2024-01-27T17:58:33.257' AS DateTime), 1, CAST(N'2024-01-27T17:58:33.257' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (14, N'Contract', N'EMPLOYMENT DETAILS', 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (15, N'Retired', N'EMPLOYMENT DETAILS', 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (16, N'Unemployed', N'EMPLOYMENT DETAILS', 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (17, N'Casual', N'EMPLOYMENT DETAILS', 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (18, N'Home & Utilities', N'EXPENSES DETAILS', 1, CAST(N'2024-01-28T12:07:12.863' AS DateTime), 1, CAST(N'2024-01-28T12:07:12.863' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (19, N'Insurance & Financial', N'EXPENSES DETAILS', 1, CAST(N'2024-01-28T12:07:12.913' AS DateTime), 1, CAST(N'2024-01-28T12:07:12.913' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (20, N'Groceries', N'EXPENSES DETAILS', 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (21, N'Primary Residence', N'LIFESTYLE ASSETS', 1, CAST(N'2024-01-28T12:33:31.987' AS DateTime), 1, CAST(N'2024-01-28T12:33:31.987' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (22, N'Household Contents', N'LIFESTYLE ASSETS', 1, CAST(N'2024-01-28T12:33:31.987' AS DateTime), 1, CAST(N'2024-01-28T12:33:31.987' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (23, N'Motor Vehicle', N'LIFESTYLE ASSETS', 1, CAST(N'2024-01-28T12:33:31.987' AS DateTime), 1, CAST(N'2024-01-28T12:33:31.987' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (24, N'Cash', N'INVESTMENT ASSETS', 1, CAST(N'2024-01-28T12:47:42.050' AS DateTime), 1, CAST(N'2024-01-28T12:47:42.050' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (25, N'Investment Portfolio', N'INVESTMENT ASSETS', 1, CAST(N'2024-01-28T12:47:42.067' AS DateTime), 1, CAST(N'2024-01-28T12:47:42.067' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (26, N'Investment Property', N'INVESTMENT ASSETS', 1, CAST(N'2024-01-28T12:47:42.067' AS DateTime), 1, CAST(N'2024-01-28T12:47:42.067' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (27, N'Primary Residence Mortgage', N'LIABILITIES', 1, CAST(N'2024-01-28T12:57:55.147' AS DateTime), 1, CAST(N'2024-01-28T12:57:55.147' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (28, N'Motor Vehicle Loan', N'LIABILITIES', 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (29, N'Personal Loan /Credit Card / Store Cards', N'LIABILITIES', 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (30, N'Investment Property Mortgage', N'LIABILITIES', 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (31, N'Margin Loan', N'LIABILITIES', 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (32, N'Investment Loan', N'LIABILITIES', 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (33, N'Other Loan', N'LIABILITIES', 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1, CAST(N'2024-01-28T12:57:55.150' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (34, N'Encircle Superannuation Service (MDA)', N'SUPPER ASSETS', 1, CAST(N'2024-01-28T13:40:57.880' AS DateTime), 1, CAST(N'2024-01-28T13:40:57.880' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (35, N'Encircle Super', N'SUPPER ASSETS', 1, CAST(N'2024-01-28T13:40:58.050' AS DateTime), 1, CAST(N'2024-01-28T13:40:58.050' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (36, N'Life insurance & Total and permanent disability & Critical Illness', N'INSURANCE', 1, CAST(N'2024-01-28T14:18:06.780' AS DateTime), 1, CAST(N'2024-01-28T14:18:06.780' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (39, N'Income Protection', N'INSURANCE', 1, CAST(N'2024-01-28T14:18:06.783' AS DateTime), 1, CAST(N'2024-01-28T14:18:06.783' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (40, N'Self-Managed Superannuation Fund (SMSF)', N'ASSOCIATED STRUCTURES', 1, CAST(N'2024-02-04T12:38:57.583' AS DateTime), 1, CAST(N'2024-02-04T12:38:57.583' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (41, N'Trust structure', N'ASSOCIATED STRUCTURES', 1, CAST(N'2024-02-04T12:38:57.597' AS DateTime), 1, CAST(N'2024-02-04T12:38:57.597' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (42, N'Company structure', N'ASSOCIATED STRUCTURES', 1, CAST(N'2024-02-04T12:38:57.597' AS DateTime), 1, CAST(N'2024-02-04T12:38:57.597' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (43, N'Partnership structure', N'ASSOCIATED STRUCTURES', 1, CAST(N'2024-02-04T12:38:57.597' AS DateTime), 1, CAST(N'2024-02-04T12:38:57.597' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (44, N'Accountant', N'PROFESSIONAL ADVISERS', 1, CAST(N'2024-02-04T14:37:11.620' AS DateTime), 1, CAST(N'2024-02-04T14:37:11.620' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (45, N'Solicitor', N'PROFESSIONAL ADVISERS', 1, CAST(N'2024-02-04T14:37:11.620' AS DateTime), 1, CAST(N'2024-02-04T14:37:11.620' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (46, N'Stock Broker', N'PROFESSIONAL ADVISERS', 1, CAST(N'2024-02-04T14:37:11.620' AS DateTime), 1, CAST(N'2024-02-04T14:37:11.620' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (47, N'Mortgage Broker', N'PROFESSIONAL ADVISERS', 1, CAST(N'2024-02-04T14:37:11.620' AS DateTime), 1, CAST(N'2024-02-04T14:37:11.620' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1041, N'Self Employed', N'EMPLOYMENT DETAILS', 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1, CAST(N'2024-01-27T17:58:33.260' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1042, N'Personal & Medical', N'EXPENSES DETAILS', 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1043, N'Entertainment & eat-out', N'EXPENSES DETAILS', 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1044, N'Transport & Auto', N'EXPENSES DETAILS', 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1)
INSERT [dbo].[MstQuestions] ([Question_ID], [Question_Description], [Section_Name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1045, N'Children', N'EXPENSES DETAILS', 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1, CAST(N'2024-01-28T12:07:12.973' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[MstQuestions] OFF
GO
SET IDENTITY_INSERT [dbo].[MstUserRoles] ON 

INSERT [dbo].[MstUserRoles] ([role_id], [role_name], [activeYN], [created_at], [created_by], [modified_at], [modified_by]) VALUES (1, N'admin', 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[MstUserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[MstUsers] ON 

INSERT [dbo].[MstUsers] ([user_id], [username], [userpassword], [user_givenName], [user_surname], [user_phone], [role_id], [user_loginType], [enforce2FA], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [useremail], [IsUpdated], [OTP], [OTPGeneratedDate], [IsLocked], [LastPwdChangedDate]) VALUES (4, N'satya', N'Satya@1234', N'Satya', N'', N'8951021503', 1, N'', 0, NULL, 0, NULL, 0, NULL, N'emailidsatya@gmail.com', 0, N'', NULL, 0, NULL)
INSERT [dbo].[MstUsers] ([user_id], [username], [userpassword], [user_givenName], [user_surname], [user_phone], [role_id], [user_loginType], [enforce2FA], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [useremail], [IsUpdated], [OTP], [OTPGeneratedDate], [IsLocked], [LastPwdChangedDate]) VALUES (5, N'bala', N'sATYA@1234', N'Bala', N'', N'8951021503', 1, N'', 0, NULL, 0, NULL, 0, NULL, N'bala@gmail.com', 0, N'', NULL, 0, NULL)
INSERT [dbo].[MstUsers] ([user_id], [username], [userpassword], [user_givenName], [user_surname], [user_phone], [role_id], [user_loginType], [enforce2FA], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [useremail], [IsUpdated], [OTP], [OTPGeneratedDate], [IsLocked], [LastPwdChangedDate]) VALUES (6, N'admin', N'admin123', N'Administrator', N'', N'9742976111', 1, N'Admin', 0, CAST(N'2024-05-19T17:06:49.343' AS DateTime), 0, CAST(N'2024-05-19T17:06:49.343' AS DateTime), 0, CAST(N'2024-05-19T17:06:49.343' AS DateTime), N'admin@email.com', 1, N'', CAST(N'2024-05-19T17:06:49.343' AS DateTime), 0, CAST(N'2024-05-19T17:06:49.343' AS DateTime))
INSERT [dbo].[MstUsers] ([user_id], [username], [userpassword], [user_givenName], [user_surname], [user_phone], [role_id], [user_loginType], [enforce2FA], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [useremail], [IsUpdated], [OTP], [OTPGeneratedDate], [IsLocked], [LastPwdChangedDate]) VALUES (7, N'craig', N'n@deem123', N'Craig Smith', N'', N'6431974031', 1, N'', 0, NULL, 0, NULL, 0, NULL, N'support@meritzeal.com', 0, N'', NULL, 0, NULL)
INSERT [dbo].[MstUsers] ([user_id], [username], [userpassword], [user_givenName], [user_surname], [user_phone], [role_id], [user_loginType], [enforce2FA], [created_at], [created_by], [modified_at], [modified_by], [lastlogin_at], [useremail], [IsUpdated], [OTP], [OTPGeneratedDate], [IsLocked], [LastPwdChangedDate]) VALUES (8, N'sha', N'123', N'string', N'string', N'string', 1, N'string', 0, CAST(N'2024-06-02T06:37:47.623' AS DateTime), 0, CAST(N'2024-06-02T06:37:47.623' AS DateTime), 0, CAST(N'2024-06-02T06:37:47.623' AS DateTime), N'string', 1, N'string', CAST(N'2024-06-02T06:37:47.623' AS DateTime), 1, CAST(N'2024-06-02T06:37:47.623' AS DateTime))
SET IDENTITY_INSERT [dbo].[MstUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[PlannedExpenditure] ON 

INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (4, N'Renovate Home', 89, N'200', CAST(N'2024-01-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, NULL, NULL)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (5, N'New Car', 91, N'100', CAST(N'2024-01-28T00:00:00.000' AS DateTime), CAST(N'2024-01-28T19:49:01.773' AS DateTime), NULL, NULL, NULL, 3, NULL, 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (6, N'Renovate Home', 91, N'200', CAST(N'2024-01-27T00:00:00.000' AS DateTime), CAST(N'2024-01-28T19:49:01.773' AS DateTime), NULL, NULL, NULL, 4, NULL, 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (8, N'New Car', 92, N'100', CAST(N'2024-02-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'25', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (9, N'New Car', 93, N'100', CAST(N'2024-02-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'26', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1008, N'New Car', 1093, N'100', CAST(N'2024-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'1026', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1009, N'Renovate Home', 1093, N'200', CAST(N'2024-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'1026,1027', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1010, N'New Car', 1094, N'100', CAST(N'2024-02-19T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'1028', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1011, N'Renovate Home', 1094, N'200', CAST(N'2024-02-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'1028', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1012, N'Other', 1095, N'100', CAST(N'2024-02-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 5, N'1029', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1013, N'Other', 1096, N'100', CAST(N'2024-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 5, N'1030', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1014, N'New Car', 1096, N'200', CAST(N'2024-02-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'1030', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1015, N'New Car', 1097, N'2000', CAST(N'2024-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'1031', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1016, N'New Car', 1098, N'100', CAST(N'2024-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'1032', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1017, N'OtherTest', 1099, N'100', CAST(N'2024-02-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 5, N'1033', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1018, N'New Car', 1104, N'100', CAST(N'2023-09-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'1037', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1019, N'Renovate Home', 1104, N'500', CAST(N'2023-04-14T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'1037', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1020, N'Renovate Home', 1106, N'25', CAST(N'2025-12-22T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'1040', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1021, N'New Car', 1107, N'70000', CAST(N'2026-05-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 3, N'1041', 0)
INSERT [dbo].[PlannedExpenditure] ([PlannedExpenditure_id], [Description], [form_id], [Amount], [Date], [created_at], [created_by], [modified_at], [modified_by], [Question_ID], [Owners], [IsJoint]) VALUES (1022, N'G', 1107, N'10000', CAST(N'2025-05-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 5, N'1041', 0)
SET IDENTITY_INSERT [dbo].[PlannedExpenditure] OFF
GO
SET IDENTITY_INSERT [dbo].[ProfessionalAdvisersDetails] ON 

INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1, 93, N'26', N'44', N'dfg', N'dfg', N'dfg', N'345', NULL, CAST(N'2024-02-04T14:48:01.050' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2, 1093, N'1026', N'44', N'100', N'12', N'455', N'tytt', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (3, 1093, N'1026,1027', N'46', N'ghj', N'ghj', N'ghj', N'ghj', NULL, CAST(N'2024-02-16T21:39:55.427' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (4, 1094, N'1028', N'44', N'ddfs', N'sdf', N'sdfsdf', N'emailidsatya@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (5, 1095, N'1029', N'44', N'S', N'Te', N'we', N'we', NULL, CAST(N'2024-02-20T16:35:19.057' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (6, 1096, N'1030', N'44', N'sdf', N'sdf', N'89510210503', N'emailidsatya@gmail.com', NULL, CAST(N'2024-02-26T17:34:56.417' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (7, 1097, N'1031', N'44', N'sdf', N'sdfsdf', N'8951021503', N'emailidsatya@gmail.com', NULL, CAST(N'2024-02-26T19:23:43.490' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (8, 1098, N'1032', N'44', N'23', N'233', N'8951021503', N'emailidsatya@gmail.com', NULL, CAST(N'2024-02-26T19:45:37.007' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (9, 1099, N'1033', N'44', N'sdf', N'sdf', N'8951021503', N'emailidsatya@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (10, 1104, N'1037', N'44', N'test', N'test', N'9885966255', N'smit@email.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (11, 1106, N'1040', N'46', N'Craig Smith', N'Meritzeal Business Solutions PTY LTD', N'6431974031', N'support@meritzeal.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProfessionalAdvisersDetails] ([ProfessionalAdvisersDetails_id], [form_id], [Owners], [ProfessionalAdvisersDetails_Type], [ProfessionalAdvisersDetails_Name], [ProfessionalAdvisersDetails_BusinessName], [Work_Telephone], [Email_Address], [Notes], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (12, 1107, N'1041', N'44', N'John', N'Joblogs', N'0400428432', N'joshua.logan@forefrontwealth.com.au', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProfessionalAdvisersDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[StrategyForms] ON 

INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (73, 1, CAST(N'2024-01-18T19:51:56.693' AS DateTime), 1, CAST(N'2024-01-18T19:51:56.693' AS DateTime), 1, 2, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (74, NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (76, NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (77, NULL, NULL, NULL, NULL, NULL, 7, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (78, NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (80, 1, CAST(N'2024-01-26T15:42:41.327' AS DateTime), 1, CAST(N'2024-01-26T15:42:41.327' AS DateTime), 1, 2, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (82, 1, CAST(N'2024-01-26T15:50:02.960' AS DateTime), 1, CAST(N'2024-01-26T15:50:02.960' AS DateTime), 1, 2, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (83, NULL, NULL, NULL, NULL, NULL, 6, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (85, NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (86, NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (87, 1, CAST(N'2024-01-27T07:21:33.517' AS DateTime), 1, CAST(N'2024-01-27T07:21:33.517' AS DateTime), 1, 2, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (88, NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (89, 1, CAST(N'2024-01-28T11:47:32.207' AS DateTime), 1, CAST(N'2024-01-28T11:47:32.207' AS DateTime), 1, 2, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (90, 1, CAST(N'2024-01-28T12:09:01.537' AS DateTime), 1, CAST(N'2024-01-28T12:09:01.537' AS DateTime), 1, 2, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (91, NULL, NULL, NULL, NULL, NULL, 5, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (92, NULL, NULL, NULL, NULL, NULL, 10, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (93, NULL, NULL, NULL, NULL, NULL, 15, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1093, NULL, NULL, NULL, NULL, NULL, 15, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1094, NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1095, NULL, NULL, NULL, NULL, NULL, 15, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1096, NULL, NULL, NULL, NULL, NULL, 15, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1097, NULL, NULL, NULL, NULL, NULL, 15, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1098, NULL, NULL, NULL, NULL, NULL, 15, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1099, NULL, NULL, NULL, NULL, NULL, 5, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1100, 1, CAST(N'2024-06-02T10:23:45.977' AS DateTime), 0, CAST(N'2024-06-02T10:23:45.977' AS DateTime), 0, 1, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1101, NULL, NULL, 6, NULL, 6, 4, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1102, 1, CAST(N'2024-06-02T08:50:15.333' AS DateTime), 6, CAST(N'2024-06-02T08:50:15.333' AS DateTime), 6, 2, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1103, NULL, NULL, NULL, NULL, 6, 8, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1104, NULL, NULL, 6, NULL, 6, 6, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1105, 1, CAST(N'2024-06-02T12:51:44.123' AS DateTime), 6, CAST(N'2024-06-02T12:51:44.123' AS DateTime), 6, 2, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1106, NULL, NULL, 6, NULL, 6, 11, NULL)
INSERT [dbo].[StrategyForms] ([form_id], [form_status], [created_at], [created_by], [modified_at], [modified_by], [step], [user_id]) VALUES (1107, 1, CAST(N'2024-06-05T04:45:45.010' AS DateTime), 6, CAST(N'2024-06-05T04:45:45.010' AS DateTime), 6, 2, NULL)
SET IDENTITY_INSERT [dbo].[StrategyForms] OFF
GO
SET IDENTITY_INSERT [dbo].[SuperAssetDetails] ON 

INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1, 89, N'Satya', 34, N'10', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (2, 93, N'26', 34, N'100', N'25996', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (3, 93, N'26', 35, N'200', N'3000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1002, 1093, N'1026', 34, N'100', N'200', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1003, 1094, N'1028', 34, N'50', N'2000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1004, 1094, N'1028', 34, N'50', N'1000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1005, 1095, N'1029', 34, N'12', N'344', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1006, 1096, N'1030', 34, N'sdfsdf', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1007, 1097, N'1031', 34, N'sdfsdf', N'1000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1008, 1098, N'1032', 34, N'1000', N'100', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1009, 1099, N'1033', 34, N'12', N'2000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1010, 1104, N'1037', 34, N'50', N'5000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1011, 1104, N'1037', 35, N'50', N'4000', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1012, 1106, N'1040', 35, N'10', N'5', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SuperAssetDetails] ([SuperAssetDetails_id], [form_id], [Owners], [Superasset_Type], [Contributions], [Fund_Balance], [created_at], [created_by], [modified_at], [modified_by], [IsJoint]) VALUES (1013, 1107, N'1041', 35, N'15000', N'200000', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SuperAssetDetails] OFF
GO
ALTER TABLE [dbo].[AssociatedStructures] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[AssociatedStructures] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[CashFlowRequirements] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[CustomerContactDetails] ADD  DEFAULT ((1)) FOR [IsPartner]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT ((1)) FOR [IsPartner]
GO
ALTER TABLE [dbo].[DependantsDetails] ADD  DEFAULT (getdate()) FOR [DependantsDetails_DOB]
GO
ALTER TABLE [dbo].[DependantsDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[DependantsDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[EmploymentDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT ((0)) FOR [Will_Exists]
GO
ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT ((0)) FOR [Is_Will_Current]
GO
ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT ((0)) FOR [Funeral_Plan]
GO
ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT ((0)) FOR [Testamentary_Trust]
GO
ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT ((0)) FOR [Have_You_Appointed_An_Enduring_Guardian]
GO
ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT ((0)) FOR [Advance_Care_Directive]
GO
ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ExpectedFutureInflows] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ExpectedFutureInflows] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[ExpenseDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ExpenseDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[IncomeDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[IncomeDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[InsuranceDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[InsuranceDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[InvestmentAssetDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[InvestmentAssetDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[LiabilitiesDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[LiabilitiesDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[LifeStyleAssetDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[LifeStyleAssetDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[MstQuestions] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstRoleGroups] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstUserRoles] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstUsers] ADD  DEFAULT ((0)) FOR [IsUpdated]
GO
ALTER TABLE [dbo].[MstUsers] ADD  DEFAULT ((0)) FOR [IsLocked]
GO
ALTER TABLE [dbo].[PlannedExpenditure] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[PlannedExpenditure] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[ProfessionalAdvisersDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ProfessionalAdvisersDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[SuperAssetDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[SuperAssetDetails] ADD  DEFAULT ((0)) FOR [IsJoint]
GO
ALTER TABLE [dbo].[UserRegistration] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[AssociatedStructures]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[CashFlowRequirements]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[CashFlowRequirements]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[CustomerContactDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[DependantsDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[EmploymentDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[EstatePlanning]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[ExpectedFutureInflows]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[ExpectedFutureInflows]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[ExpectedFutureInflows]  WITH CHECK ADD FOREIGN KEY([Question_ID])
REFERENCES [dbo].[MstQuestions] ([Question_ID])
GO
ALTER TABLE [dbo].[ExpenseDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[ExpenseDetails]  WITH CHECK ADD FOREIGN KEY([Question_ID])
REFERENCES [dbo].[MstQuestions] ([Question_ID])
GO
ALTER TABLE [dbo].[IncomeDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[IncomeDetails]  WITH CHECK ADD FOREIGN KEY([Question_ID])
REFERENCES [dbo].[MstQuestions] ([Question_ID])
GO
ALTER TABLE [dbo].[InsuranceDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[InvestmentAssetDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[LiabilitiesDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[LifeStyleAssetDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[MstRoleGroups]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[MstUserRoles] ([role_id])
GO
ALTER TABLE [dbo].[MstUsers]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[MstUserRoles] ([role_id])
GO
ALTER TABLE [dbo].[PlannedExpenditure]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[PlannedExpenditure]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[PlannedExpenditure]  WITH CHECK ADD FOREIGN KEY([Question_ID])
REFERENCES [dbo].[MstQuestions] ([Question_ID])
GO
ALTER TABLE [dbo].[ProfessionalAdvisersDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[SuperAssetDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
ALTER TABLE [dbo].[WillDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
