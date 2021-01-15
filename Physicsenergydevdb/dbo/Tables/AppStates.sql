CREATE TABLE [dbo].[AppStates] (
    [AppID]          INT           IDENTITY (1, 1) NOT NULL,
    [TabLoaded]      NVARCHAR (50) NOT NULL,
    [State]          NVARCHAR (50) NOT NULL,
    [LogOn]          NVARCHAR (50) NOT NULL,
    [Suspended]      NVARCHAR (50) NOT NULL,
    [ActionState]    NVARCHAR (50) NOT NULL,
    [rppTab]         NVARCHAR (50) NOT NULL,
    [FailState]      NVARCHAR (50) NOT NULL,
    [ClinicalOn]     NVARCHAR (50) NOT NULL,
    [Treatment]      NVARCHAR (50) NOT NULL,
    [ActTab]         NVARCHAR (50) NOT NULL,
    [faultstate]     NVARCHAR (50) NOT NULL,
    [loaded]         NVARCHAR (50) NOT NULL,
    [ReturnClinical] NVARCHAR (50) NOT NULL,
    [StateID]        SMALLINT      NOT NULL,
    [Linac]          NVARCHAR (10) NULL
);

