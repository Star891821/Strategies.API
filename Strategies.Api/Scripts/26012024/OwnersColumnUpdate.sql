Delete from [dbo].[ExpectedFutureInflows]

ALTER TABLE [dbo].[ExpectedFutureInflows]
DROP COLUMN Customer_id;

ALTER TABLE [dbo].[ExpectedFutureInflows] 
ADD Owners nvarchar(255)  NULL

ALTER TABLE [dbo].[ExpectedFutureInflows]
ADD IsJoint BIT DEFAULT 0;


Delete from [dbo].[PlannedExpenditure]

ALTER TABLE [dbo].[PlannedExpenditure]
DROP COLUMN Customer_id;

ALTER TABLE [dbo].[PlannedExpenditure] 
ADD Owners nvarchar(255)  NULL

ALTER TABLE [dbo].[PlannedExpenditure]
ADD IsJoint BIT DEFAULT 0;



ALTER TABLE [dbo].[AssociatedStructures]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[DependantsDetails]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[EstatePlanning]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[ExpenseDetails]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[IncomeDetails]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[InsuranceDetails]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[InvestmentAssetDetails]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[LiabilitiesDetails]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[LifeStyleAssetDetails]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[ProfessionalAdvisersDetails]
ADD IsJoint BIT DEFAULT 0;

ALTER TABLE [dbo].[SuperAssetDetails]
ADD IsJoint BIT DEFAULT 0;



ALTER TABLE [dbo].[ExpectedFutureInflows]
ADD [Question_ID] int null;


ALTER TABLE [dbo].[ExpectedFutureInflows]  WITH CHECK ADD FOREIGN KEY([Question_ID])
REFERENCES [dbo].[MstQuestions] ([Question_ID])
GO
