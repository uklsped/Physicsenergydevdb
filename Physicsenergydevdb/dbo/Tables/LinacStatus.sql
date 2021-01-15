CREATE TABLE [dbo].[LinacStatus] (
    [StateID]    INT           IDENTITY (1, 1) NOT NULL,
    [State]      NVARCHAR (50) NOT NULL,
    [DateTime]   DATETIME      NOT NULL,
    [usergroup]  INT           NULL,
    [userreason] INT           NULL,
    [linac]      NCHAR (10)    NULL,
    [UserName]   NVARCHAR (50) NULL,
    [LoggedOn]   BIT           NULL,
    CONSTRAINT [PK_LinacStatus] PRIMARY KEY CLUSTERED ([StateID] ASC)
);

