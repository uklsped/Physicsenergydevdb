CREATE TABLE [dbo].[AuxTable] (
    [AuxID]          INT            IDENTITY (1, 1) NOT NULL,
    [Tab]            INT            NOT NULL,
    [LogInDate]      DATETIME       NOT NULL,
    [LogOutDate]     DATETIME       NOT NULL,
    [LogInName]      NVARCHAR (50)  NOT NULL,
    [LogOutName]     NVARCHAR (50)  NOT NULL,
    [Comment]        NVARCHAR (250) NULL,
    [linac]          NVARCHAR (10)  NOT NULL,
    [LogInStatusID]  INT            NOT NULL,
    [LogOutStatusID] INT            NOT NULL,
    CONSTRAINT [PK_AuxTable] PRIMARY KEY CLUSTERED ([AuxID] ASC)
);

