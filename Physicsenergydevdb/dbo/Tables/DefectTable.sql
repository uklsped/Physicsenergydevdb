CREATE TABLE [dbo].[DefectTable] (
    [IncidentID] INT           NOT NULL,
    [Defect]     NVARCHAR (50) NOT NULL,
    [Area]       NVARCHAR (50) NOT NULL,
    [LinacType]  NCHAR (10)    NOT NULL,
    [Active]     BIT           NOT NULL,
    CONSTRAINT [PK_DefectTable] PRIMARY KEY CLUSTERED ([IncidentID] ASC)
);

