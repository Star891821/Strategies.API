USE [StrategyDB]
GO

/****** Object:  Table [dbo].[EmploymentDetails]   Script Date: 12-01-2024 21:57:47 ******/
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

ALTER TABLE [dbo].[EmploymentDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[EmploymentDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO


