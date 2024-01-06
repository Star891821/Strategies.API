 DELETE FROM [dbo].[Customers]
 DELETE FROM [dbo].[CustomerContactDetails]

 ALTER TABLE [dbo].[Customers]
    ADD [IsPartner] BIT
    DEFAULT 1 NULL;

 ALTER TABLE [dbo].[Customers]
    ADD [PID] int NULL;

 ALTER TABLE [dbo].[CustomerContactDetails]
    ADD [IsPartner] BIT
    DEFAULT 1 NULL;

 ALTER TABLE [dbo].[CustomerContactDetails]
    ADD [PID] int NULL;
Drop table [dbo].[Partners]
Drop table [dbo].[PartnerContactDetails]

 ALTER TABLE [dbo].[PlannedExpenditure]
	ADD [Question_ID] int  NULL;
ALTER TABLE [dbo].[PlannedExpenditure]  WITH CHECK ADD FOREIGN KEY([Question_ID])
REFERENCES [dbo].[MstQuestions] ([Question_ID])
GO
 ALTER TABLE [dbo].[PlannedExpenditure]
	ALTER COLUMN [Description] nvarchar(255)  NULL;
ALTER TABLE [dbo].[PlannedExpenditure]
DROP COLUMN Partner_id;
ALTER TABLE [dbo].[ExpectedFutureInflows]
DROP COLUMN Partner_id;