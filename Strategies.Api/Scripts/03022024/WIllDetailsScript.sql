USE [StrategyDB]
GO

/****** Object:  Table [dbo].[WillDetails]    Script Date: 03-02-2024 17:58:09 ******/
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
	[modified_by] [int] NULL
PRIMARY KEY CLUSTERED 
(
	[will_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WillDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[WillDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO


