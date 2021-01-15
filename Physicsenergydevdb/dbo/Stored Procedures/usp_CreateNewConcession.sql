-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_CreateNewConcession] 
	-- Add the parameters for the stored procedure here

	
	@IncidentID int,
	@ConcessionDescription nvarchar(50),
	@Linac nvarchar(10),
	@ConcessionActive bit,
	@Action nvarchar(250),
	@AssignedTo nvarchar(25) = 'Unassigned',
	@ReportedBy nvarchar(50),
	@LastUpdatedOn datetime,
	@TrackingComment nvarchar(250)= NULL,
	@TrackingNum int OUTPUT
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DECLARE @PreFix as varchar(3)
	SET @PreFix = 'ELF'
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Declare @concessNum as int
Declare @ConcessionNumber as Varchar(7)

Insert into ConcessionTable (PreFix, ConcessionDescription, IncidentID, Linac, ConcessionActive, Action, AssignedTo)
VALUES (@PreFix, @ConcessionDescription, @IncidentID, @Linac, @ConcessionActive, @Action, @AssignedTo)

SELECT  @concessNum = SCOPE_IDENTITY()
SET @ConcessionNumber = (Select ConcessionNumber from ConcessionTable where ConcessID=@concessNum)

Update FaultIDTable SET Status = 'Concession',ConcessionNumber=@ConcessionNumber,ReportClosed = @LastUpdatedOn WHERE IncidentID=@incidentID


INSERT into FaultTracking (TrackingComment, AssignedTo, Status,LastUpDatedBy,LastUpdatedOn, Linac,Action,IncidentID)
Values (@TrackingComment, @AssignedTo, 'Concession', @ReportedBy,@LastUpdatedOn, @Linac, @Action, @IncidentID)
                                     
SELECT @TrackingNum = SCOPE_IDENTITY()
	
	
END

