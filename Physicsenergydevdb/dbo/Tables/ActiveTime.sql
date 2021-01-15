CREATE TABLE [dbo].[ActiveTime] (
    [ActID]           INT        IDENTITY (1, 1) NOT NULL,
    [userreason]      INT        NOT NULL,
    [StartID]         INT        NOT NULL,
    [StartTime]       DATETIME   NOT NULL,
    [StopID]          INT        NULL,
    [StopTime]        DATETIME   NULL,
    [Linac]           NCHAR (10) NOT NULL,
    [PreviousStateID] INT        NULL,
    CONSTRAINT [PK_ActiveTime] PRIMARY KEY CLUSTERED ([ActID] ASC)
);

