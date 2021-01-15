CREATE TABLE [dbo].[ClinicalTable] (
    [ClinicalID]    INT            IDENTITY (1, 1) NOT NULL,
    [PreClinID]     INT            NOT NULL,
    [ClinComment]   NVARCHAR (250) NULL,
    [Linac]         NVARCHAR (10)  NOT NULL,
    [LinacStatusID] INT            NOT NULL,
    [DateTime]      DATETIME       NULL,
    [UserName]      NVARCHAR (25)  NULL,
    CONSTRAINT [PK_ClinicalTable] PRIMARY KEY CLUSTERED ([ClinicalID] ASC)
);

