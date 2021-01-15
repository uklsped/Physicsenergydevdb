CREATE TABLE [dbo].[PhysicsEnergiesArchive] (
    [EnergyID]     INT           NOT NULL,
    [Energy]       NVARCHAR (10) NOT NULL,
    [Approved]     BIT           NULL,
    [ApprovedBy]   NVARCHAR (50) NULL,
    [DateApproved] DATETIME      NULL,
    [Comment]      VARCHAR (50)  NULL,
    [Linac]        NCHAR (10)    NOT NULL
);

