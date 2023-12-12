Delete from [dbo].[Customers]

ALTER TABLE [dbo].[Customers] add form_id int NOT NULL


ALTER TABLE [dbo].[Customers]  WITH CHECK ADD FOREIGN KEY(form_id)
REFERENCES [dbo].[StrategyForms] (form_id)
GO

Delete from [dbo].[CustomerContactDetails]

ALTER TABLE [dbo].[CustomerContactDetails] add form_id int NOT NULL


ALTER TABLE [dbo].[CustomerContactDetails]  WITH CHECK ADD FOREIGN KEY(form_id)
REFERENCES [dbo].[StrategyForms] (form_id)
GO

ALTER TABLE [dbo].[CustomerContactDetails] ALTER COLUMN Customer_id int NULL