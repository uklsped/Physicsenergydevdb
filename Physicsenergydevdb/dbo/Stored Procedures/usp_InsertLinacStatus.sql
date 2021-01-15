-- =============================================
-- Author:		David Spendley
-- Create date: 14/09/18
-- Description:	Inserts new row into Linac Status table
-- Amended: 06/08/20 to add logged on state
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertLinacStatus] 
	-- Add the parameters for the stored procedure here
	@State nvarchar(50),
	@DateTime datetime,
	@usergroup int,
	@userreason int,
	@linac nvarchar(10),
	@UserName nvarchar (50),
	@LoggedOn bit,
	@LinacStatusID int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 INSERT INTO LinacStatus (State, DateTime, Usergroup, Userreason, linac, UserName, LoggedOn)
                              VALUES ( @State, @Datetime, @Usergroup, @Userreason, @linac, @UserName, @LoggedOn)
     SELECT @LinacStatusID =   SCOPE_IDENTITY()
END
