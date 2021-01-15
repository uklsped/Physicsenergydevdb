CREATE TABLE [dbo].[BrowserState] (
    [id]          SMALLINT   IDENTITY (1, 1) NOT NULL,
    [linac]       NCHAR (10) NULL,
    [browserOpen] BIT        NULL
);

