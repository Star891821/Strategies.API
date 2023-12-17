
/****** Object:  Table [dbo].[MstCategory]    Script Date: 16-12-2023 17:02:01 ******/
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

ALTER TABLE [dbo].[MstQuestions] ADD  DEFAULT (getdate()) FOR [created_at]
GO



/****** Object:  Table [dbo].[CashFlowRequirements]    Script Date: 18-09-2023 12:45:11 ******/
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
ALTER TABLE [dbo].[CashFlowRequirements] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[CashFlowRequirements]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO

/****** Object:  Table [dbo].[CashFlowRequirements]    Script Date: 18-09-2023 12:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlannedExpenditure](
	[PlannedExpenditure_id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[form_id] [int] NOT NULL,
	[Partner_id]  [int]  NULL,
	[Customer_id]  [int]  NULL,
	[Amount] [nvarchar](255) NOT NULL,
	[Date] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlannedExpenditure_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[PlannedExpenditure] ADD  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[PlannedExpenditure]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO



/****** Object:  Table [dbo].[[ExpectedFutureInflows]]    Script Date: 18-09-2023 12:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpectedFutureInflows](
	[ExpectedFutureInflows_id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[form_id] [int] NOT NULL,
	[Partner_id]  [int]  NULL,
	[Customer_id]  [int]  NULL,
	[Amount] [nvarchar](255) NOT NULL,
	[Date] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ExpectedFutureInflows_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[ExpectedFutureInflows] ADD  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[ExpectedFutureInflows]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO
