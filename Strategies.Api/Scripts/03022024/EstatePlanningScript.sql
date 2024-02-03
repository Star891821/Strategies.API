USE [StrategyDB]
GO
Drop table [dbo].[WillDetails]
Drop Table [dbo].[EstatePlanning]
/****** Object:  Table [dbo].[EstatePlanning]    Script Date: 03-02-2024 20:50:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EstatePlanning](
	[EstatePlanning_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[Owners] [nvarchar](50) NULL,
	[Will_Exists] BIT DEFAULT 0,
	[Is_Will_Current] BIT DEFAULT 0,
	[Date_Of_Will] [datetime] NULL,
	[Will_Location] [nvarchar](255) NULL,
	[Last_Reviewed] [nvarchar](255) NULL,
	[Funeral_Plan] BIT DEFAULT 0,
	[Testamentary_Trust] BIT DEFAULT 0,
	[Power_Attorney] [nvarchar](255) NULL,
	[Executor_Of_Will] [nvarchar](255) NULL,
	[Beneficiary_Of_Your_Estate] [nvarchar](255) NULL,
	[Have_You_Appointed_An_Enduring_Guardian] BIT DEFAULT 0,
	[Date_Guardianship_Completed] [datetime] NULL,
	[Enduring_Guardian_Name] [nvarchar](255) NULL,
	[Advance_Care_Directive] BIT DEFAULT 0,
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

ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[EstatePlanning] ADD  DEFAULT ((0)) FOR [IsJoint]
GO

ALTER TABLE [dbo].[EstatePlanning]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO


