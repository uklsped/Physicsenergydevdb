-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SetRadAckFault] 
	-- Add the parameters for the stored procedure here
	@TrackingID Int,
	@Acknowledge Bit,
	@IncidentID Int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    If (@TrackingID = 0)
    Begin
	Insert into RadAckFault (IncidentID,TrackingID, Acknowledge) VALUES (@IncidentID,@TrackingID,@Acknowledge)
	End
	else
	Begin
	If Exists (Select Acknowledge FROM RadAckFault where IncidentID=@IncidentID)
		Begin
		Set @Acknowledge  =  (Select Acknowledge FROM RadAckFault where IncidentID=@IncidentID)
		If @Acknowledge=0
            Update RadAckFault Set TrackingID = @TrackingID, Acknowledge=1 where IncidentID=@incidentID

        End
	Else
	Begin
		Select 'True'
		End
	End


END

