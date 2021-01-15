CREATE TABLE [dbo].[ResetDay] (
    [DateCreated]      DATETIME      NULL,
    [StateID]          INT           NULL,
    [State]            NVARCHAR (50) NULL,
    [ApplicationState] BIT           NULL,
    [Activity]         INT           NULL,
    [OldDayofYear]     INT           NULL,
    [newDayofYear]     INT           NULL,
    [nowStatus]        NVARCHAR (10) NULL,
    [Linac]            NCHAR (10)    NULL
);

