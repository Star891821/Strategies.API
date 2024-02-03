USE [StrategyDB]
GO
ALTER TABLE [dbo].[InsuranceDetails]
ADD SumInsured nvarchar(250)  null

ALTER TABLE [dbo].[InsuranceDetails]
ADD premium_frequency nvarchar(200)  null


ALTER TABLE [dbo].[InsuranceDetails]
ADD benefit_period nvarchar(250)  null

ALTER TABLE [dbo].[InsuranceDetails]
ADD other_description nvarchar(250)  null


ALTER TABLE [dbo].[InsuranceDetails]
ADD waiting_period nvarchar(250)  null