

/****** Object:  Table [dbo].[DISASQuentionnaire]    Script Date: 16-01-2024 23:57:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DISASQuentionnaire](
	[DISASQ_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[DISASQ_Question] [nvarchar](max) NULL,
	[DISASQ_Answer] [nvarchar](max) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DISASQ_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DISASQuentionnaire] ADD  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[DISASQuentionnaire]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[StrategyForms] ([form_id])
GO


