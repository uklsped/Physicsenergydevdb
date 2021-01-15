CREATE TABLE [dbo].[ClinicalStatus] (
    [ClinID]         INT           IDENTITY (1, 1) NOT NULL,
    [PClinID]        INT           NULL,
    [LogInDate]      DATETIME      NULL,
    [LogOutDate]     DATETIME      NULL,
    [Linac]          NVARCHAR (10) NULL,
    [Duration]       FLOAT (53)    NULL,
    [LogInName]      NVARCHAR (50) NULL,
    [LogOutName]     NVARCHAR (50) NULL,
    [LogOutStatusID] INT           NOT NULL,
    [LogInStatusID]  INT           NULL,
    CONSTRAINT [PK_ClinicalStatus_1] PRIMARY KEY CLUSTERED ([ClinID] ASC),
    CONSTRAINT [FK_ClinicalStatus_ClinicalHandover] FOREIGN KEY ([PClinID]) REFERENCES [dbo].[ClinicalHandover] ([CHandID])
);

