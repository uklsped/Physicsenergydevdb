CREATE TABLE [dbo].[RecordStates] (
    [AppID]           INT           IDENTITY (1, 1) NOT NULL,
    [CallingFunction] NVARCHAR (50) NULL,
    [Setuptab]        INT           NULL,
    [State]           NVARCHAR (50) NOT NULL,
    [LogOn]           BIT           NOT NULL,
    [Suspended]       INT           NOT NULL,
    [rppTab]          INT           NOT NULL,
    [ActTab]          INT           NOT NULL,
    [StateID]         INT           NOT NULL,
    [DateTime]        DATETIME      NOT NULL,
    [Linac]           NVARCHAR (10) NOT NULL
);

