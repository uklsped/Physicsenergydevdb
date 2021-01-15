CREATE TABLE [dbo].[FaultIDTable] (
    [IncidentID]       INT           IDENTITY (1, 1) NOT NULL,
    [DateInserted]     DATETIME      NOT NULL,
    [Status]           NVARCHAR (20) NOT NULL,
    [OriginalFaultID]  INT           NOT NULL,
    [Linac]            NVARCHAR (10) NOT NULL,
    [DateClosed]       DATETIME      NULL,
    [ConcessionNumber] NVARCHAR (10) NULL,
    [ReportClosed]     DATETIME      NULL,
    [StatusID]         INT           NULL,
    CONSTRAINT [PK_FaultIDTable] PRIMARY KEY CLUSTERED ([IncidentID] ASC)
);

