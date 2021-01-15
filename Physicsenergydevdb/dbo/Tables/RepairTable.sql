CREATE TABLE [dbo].[RepairTable] (
    [RepID]          INT            IDENTITY (1, 1) NOT NULL,
    [LogInDate]      DATETIME       NOT NULL,
    [LogOutDate]     DATETIME       NOT NULL,
    [LogInName]      NVARCHAR (50)  NOT NULL,
    [LogOutName]     NVARCHAR (50)  NOT NULL,
    [Comment]        NVARCHAR (250) NULL,
    [linac]          NVARCHAR (10)  NOT NULL,
    [LogInStatusID]  INT            NOT NULL,
    [LogOutStatusID] INT            NOT NULL,
    CONSTRAINT [PK_RepairTable] PRIMARY KEY CLUSTERED ([RepID] ASC)
);

