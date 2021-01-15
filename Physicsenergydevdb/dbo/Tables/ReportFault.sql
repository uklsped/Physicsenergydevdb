CREATE TABLE [dbo].[ReportFault] (
    [FaultID]           INT            IDENTITY (1, 1) NOT NULL,
    [Description]       NVARCHAR (250) NULL,
    [ReportedBy]        NVARCHAR (50)  NOT NULL,
    [DateReported]      DATETIME       NOT NULL,
    [Area]              NVARCHAR (20)  NOT NULL,
    [Energy]            NVARCHAR (10)  NULL,
    [GantryAngle]       NVARCHAR (3)   NULL,
    [CollimatorAngle]   NVARCHAR (3)   NULL,
    [Linac]             NVARCHAR (10)  NOT NULL,
    [IncidentID]        INT            NULL,
    [BSUHID]            VARCHAR (7)    NULL,
    [ConcessionNumber]  NVARCHAR (25)  NULL,
    [RadiationIncident] BIT            NULL,
    [Activity]          NVARCHAR (3)   NULL,
    [LastState]         NVARCHAR (25)  NULL
);

