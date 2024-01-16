USE [StrategyDB]
GO

/****** Object:  Table [dbo].[ExpenseDetails]    Script Date: 16-01-2024 21:32:12 ******/
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
	[Amounts] [nvarchar](255)  NULL,
	[Frequency] [nvarchar](255)  NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	
PRIMARY KEY CLUSTERED 
(
	[ExpenseDetails_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ExpenseDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[ExpenseDetails]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

ALTER TABLE [dbo].[ExpenseDetails]  WITH CHECK ADD FOREIGN KEY([Question_ID])
REFERENCES [dbo].[MstQuestions] ([Question_ID])
GO


