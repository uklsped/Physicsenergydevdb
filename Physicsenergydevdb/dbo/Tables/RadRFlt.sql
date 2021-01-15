CREATE TABLE [dbo].[RadRFlt] (
    [RRFId]         INT            IDENTITY (1, 1) NOT NULL,
    [Defect]        NVARCHAR (50)  NOT NULL,
    [DefectTime]    SMALLDATETIME  NOT NULL,
    [DefectComment] NVARCHAR (250) NULL,
    [RadSig]        NVARCHAR (10)  NOT NULL,
    [CAuthId]       INT            NOT NULL,
    [Linac]         NVARCHAR (10)  NULL,
    CONSTRAINT [PK_RadRFlt] PRIMARY KEY CLUSTERED ([RRFId] ASC)
);

