-- =============================================
-- Author:		David Spendley
-- Create date: 15/01/19
-- Description:	Gets values to display in concession form for updating
-- =============================================
CREATE PROCEDURE [dbo].[usp_SetConcessionView] 
	-- Add the parameters for the stored procedure here
	@IncidentID int,
	@ConcessionDescription nvarchar(250) OUTPUT,
	@ConcessionNumber varchar (54),
	@Action nvarchar(250) OUTPUT,
	@AssignedTo nvarchar(50) OUTPUT,
	@Status nvarchar (20) OUTPUT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select distinct @Status=f.status, @ConcessionNumber = ISNULL(c.ConcessionNumber, '') , @ConcessionDescription = ISNULL(c.concessiondescription, ''),
	@Action = ISNULL(c.action, ''), @AssignedTo = ISNULL(c.AssignedTo, 'Unassigned')
    from FaultIDTable f left outer join ConcessionTable c on f.ConcessionNumber=c.ConcessionNumber where f.incidentID = @incidentID
END
