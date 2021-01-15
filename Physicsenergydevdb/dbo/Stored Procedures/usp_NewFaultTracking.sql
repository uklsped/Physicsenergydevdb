-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NewFaultTracking] 
	-- Add the parameters for the stored procedure here
	
	@Assignedto nvarchar(25) = 'Unassigned',
	@Status nvarchar(50),
	@LastUpDatedBy nvarchar(50),
	@LastUpdatedOn datetime,
	@LinacName nvarchar(10),
	@Action nvarchar(250) = NULL,
	@IncidentID Integer
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into FaultTracking (Trackingcomment, AssignedTo, Status, LastupdatedBy, Lastupdatedon,   linac, action, incidentID)
    VALUES ('', @AssignedTo, @Status, @LastupdatedBy, @Lastupdatedon,  @LinacName, @action, @IncidentID) 
    --SELECT SCOPE_IDENTITY()
    IF @Status = 'Closed'
    Update FaultIDTable SET DateClosed=@LastUpdatedOn,ReportClosed = @LastUpdatedOn WHERE IncidentID=@incidentID
END
