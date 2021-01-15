-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_ClassicFaultTracking] 
	-- Add the parameters for the stored procedure here
	@TrackingComment nvarchar(250)= NULL,
	@ConcessionDescription nvarchar (50) = NULL,
	@Assignedto nvarchar(25) = 'Unassigned',
	@Status nvarchar(50),
	@LastUpDatedBy nvarchar(50),
	@LastUpdatedOn datetime,
	@LinacName nvarchar(10),
	@Action nvarchar(250) = NULL,
	@IncidentID Integer,
	@concess integer,
	@TrackingID integer OUTPUT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	Insert into FaultTracking (Trackingcomment, AssignedTo, Status, LastupdatedBy, Lastupdatedon,   linac, action, incidentID)
    VALUES (@Trackingcomment, @AssignedTo, @Status, @LastupdatedBy, @Lastupdatedon,  @LinacName, @action, @IncidentID) 
    SELECT @TrackingID = SCOPE_IDENTITY()
	
	IF @Status = 'Open'
	begin
	Update FaultIDTable SET Status=@Status WHERE IncidentID=@incidentID
	end
	IF @Status = 'Concession'
	Begin
	Update ConcessionTable SET ConcessionDescription = @ConcessionDescription, Action = @Action, AssignedTo=@Assignedto where IncidentID = @IncidentID
	End
     IF @Status = 'Closed'
    Begin
        If @concess = 1
		Begin
			Update ConcessionTable SET ConcessionActive = 0 where IncidentID = @IncidentID
			Update FaultIDTable SET DateClosed=@LastUpdatedOn, Status=@Status WHERE IncidentID=@incidentID
		End
		Else
			Update FaultIDTable SET DateClosed=@LastUpdatedOn,ReportClosed=@LastUpdatedOn, Status=@Status WHERE IncidentID=@incidentID
    End
    
END
