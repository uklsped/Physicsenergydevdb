CREATE TABLE [dbo].[PhysicsEnergies] (
    [EnergyID]     INT           IDENTITY (1, 1) NOT NULL,
    [Energy]       NVARCHAR (10) NULL,
    [Approved]     BIT           NULL,
    [ApprovedBy]   NVARCHAR (50) NULL,
    [DateApproved] DATETIME      NULL,
    [Comment]      VARCHAR (50)  NULL,
    [Linac]        NCHAR (10)    NULL
);

