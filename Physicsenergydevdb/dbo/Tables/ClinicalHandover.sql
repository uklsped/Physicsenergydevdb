CREATE TABLE [dbo].[ClinicalHandover] (
    [CHandID]        INT            IDENTITY (1, 1) NOT NULL,
    [CComment]       NVARCHAR (250) NULL,
    [EHandID]        INT            NULL,
    [LogOutDate]     DATETIME       NOT NULL,
    [linac]          NCHAR (10)     NULL,
    [LogInDate]      DATETIME       NULL,
    [Duration]       DECIMAL (6, 2) NULL,
    [iView]          BIT            NULL,
    [XVI]            BIT            NULL,
    [LogOutStatusID] INT            NULL,
    [Approved]       BIT            NULL,
    [LogInName]      NVARCHAR (50)  NULL,
    [LogOutName]     NVARCHAR (50)  NULL,
    [LogInStatusID]  INT            NULL,
    CONSTRAINT [PK_ClinicalHandover] PRIMARY KEY CLUSTERED ([CHandID] ASC),
    CONSTRAINT [FK_ClinicalHandover_HandoverEnergies] FOREIGN KEY ([EHandID]) REFERENCES [dbo].[HandoverEnergies] ([HandoverId])
);

