CREATE TABLE [dbo].[TreatmentTable] (
    [TreatmentID]        INT           IDENTITY (1, 1) NOT NULL,
    [TreatmentStartTime] DATETIME      NOT NULL,
    [TreatmentStopTime]  DATETIME      NULL,
    [LinacStatusID]      INT           NOT NULL,
    [Duration]           FLOAT (53)    NULL,
    [Linac]              NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_TreatmentTable] PRIMARY KEY CLUSTERED ([TreatmentID] ASC)
);

