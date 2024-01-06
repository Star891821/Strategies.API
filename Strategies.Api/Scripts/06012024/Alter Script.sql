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