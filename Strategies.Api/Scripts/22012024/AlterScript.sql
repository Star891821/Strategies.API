Delete from [dbo].[Customers]
ALTER TABLE [dbo].[Customers] 
ALTER COLUMN Tax_Resident BIT 

 ALTER TABLE [dbo].[DependantsDetails]
DROP COLUMN DependantsDetails_FundingForPrivateSchool;

 ALTER TABLE [dbo].[DependantsDetails]
DROP COLUMN DependantsDetails_NumberOfYears;
 ALTER TABLE [dbo].[DependantsDetails]
DROP COLUMN DependantsDetails_WhichSchools;
ALTER TABLE [dbo].[DependantsDetails]
DROP COLUMN DependantsDetails_CurGradeOrPrepYear;

Drop Table [dbo].DISASQuentionnaire