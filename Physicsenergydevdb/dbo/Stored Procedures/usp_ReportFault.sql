-- =============================================
-- Author:		David Spendley
-- Create date: <Create Date,,>
-- Description:	This inserts every instance of a reported fault into the report fault table. If it is the first instance of a fault it also writes to the faultidtable
-- =============================================
CREATE PROCEDURE [dbo].[usp_ReportFault] 
	-- Add the parameters for the stored procedure here
	@Description nvarchar(250),
	@ReportedBy nvarchar(50),
	@DateReported DateTime,
	@Area nvarchar(20),
	@Energy nvarchar(10),
	@GantryAngle nvarchar(3),
	@CollimatorAngle nvarchar(3),
	@Linac nvarchar(10),
	@IncidentID int,
	@BSUHID varchar(7),
	@ConcessionNumber nvarchar(25),
	@OriginalFaultID int,
	@RadiationIncident bit,
	@Activity nvarchar(3),
	@LastState nvarchar (25)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO ReportFault (Description, ReportedBy, DateReported, Area, Energy, GantryAngle, CollimatorAngle,Linac, IncidentID, BSUHID, ConcessionNumber, RadiationIncident, Activity, LastState)
    VALUES (@Description, @ReportedBy, @DateReported, @Area, @Energy,@GantryAngle,@CollimatorAngle, @Linac, @IncidentID, @BSUHID, @ConcessionNumber, @RadiationIncident, @Activity, @LastState)
    
    If @OriginalFaultID != -1
    Begin
    Select @OriginalFaultID = SCOPE_IDENTITY()
    
    Update FaultIDTable SET OriginalFaultID=@OriginalFaultID where IncidentID=@IncidentID
    End
           
END
