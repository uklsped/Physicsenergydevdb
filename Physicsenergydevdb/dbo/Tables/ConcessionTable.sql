CREATE TABLE [dbo].[ConcessionTable] (
    [ConcessID]             INT            IDENTITY (1, 1) NOT NULL,
    [ConcessionNumber]      AS             ([PreFix]+right('0000'+CONVERT([varchar](4),[ConcessID],(0)),(4))) PERSISTED,
    [ConcessionDescription] NVARCHAR (50)  NOT NULL,
    [IncidentID]            INT            NOT NULL,
    [Linac]                 NCHAR (10)     NOT NULL,
    [ConcessionActive]      BIT            NOT NULL,
    [Action]                NVARCHAR (250) NULL,
    [AssignedTo]            NVARCHAR (25)  NULL,
    [PreFix]                VARCHAR (3)    NULL,
    CONSTRAINT [PK_ConcessionTable] PRIMARY KEY CLUSTERED ([ConcessID] ASC)
);

