CREATE TABLE [dbo].[FaultTracking] (
    [TrackingID]      INT            IDENTITY (1, 1) NOT NULL,
    [TrackingComment] NVARCHAR (250) NULL,
    [AssignedTo]      NVARCHAR (50)  NOT NULL,
    [Status]          NVARCHAR (20)  NOT NULL,
    [LastUpDatedBy]   NVARCHAR (50)  NOT NULL,
    [LastUpDatedOn]   DATETIME       NOT NULL,
    [Linac]           NVARCHAR (10)  NOT NULL,
    [Action]          NVARCHAR (250) NULL,
    [IncidentID]      INT            NOT NULL
);

