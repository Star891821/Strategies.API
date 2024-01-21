ALTER TABLE [dbo].[MstUsers]
ADD IsUpdated BIT DEFAULT 0;

ALTER TABLE [dbo].[MstUsers]
ADD OTP nvarchar(10) null

ALTER TABLE [dbo].[MstUsers]
ADD OTPGeneratedDate DateTime null

ALTER TABLE [dbo].[MstUsers]
ADD IsLocked BIT DEFAULT 0;

ALTER TABLE [dbo].[MstUsers]
ADD LastPwdChangedDate DateTime null