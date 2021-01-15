-- =============================================
-- Author:		
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertNewFault] 
	-- Add the parameters for the stored procedure here
	@Linac Nvarchar(10),
	@DateInserted DateTime,
	@StateID Integer,
	@Status Nvarchar(20),
	@IncidentID int OUTPUT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

            INSERT INTO FaultIDTable (DateInserted, Linac, Status, originalFaultID, ConcessionNumber, StatusID)
            VALUES (@DateInserted, @Linac, @status, 0, '', @StateID)
            SELECT @IncidentID = SCOPE_IDENTITY()


END
