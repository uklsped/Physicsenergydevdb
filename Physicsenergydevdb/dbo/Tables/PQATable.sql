CREATE TABLE [dbo].[PQATable] (
    [pqaID]          INT            IDENTITY (1, 1) NOT NULL,
    [LogInDate]      DATETIME       NOT NULL,
    [LogOutDate]     DATETIME       NOT NULL,
    [LogInName]      NVARCHAR (50)  NOT NULL,
    [LogOutName]     NVARCHAR (50)  NOT NULL,
    [Comment]        NVARCHAR (250) NULL,
    [linac]          NVARCHAR (50)  NOT NULL,
    [LogInStatusID]  INT            NOT NULL,
    [LogOutStatusID] INT            NOT NULL
);

