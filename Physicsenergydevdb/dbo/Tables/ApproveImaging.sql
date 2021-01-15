CREATE TABLE [dbo].[ApproveImaging] (
    [ImageID]    INT           IDENTITY (1, 1) NOT NULL,
    [iView]      BIT           NOT NULL,
    [XVI]        BIT           NOT NULL,
    [ApprovedBy] NVARCHAR (50) NOT NULL,
    [Date]       DATETIME      NOT NULL,
    [CHandID]    INT           NOT NULL,
    [Linac]      NCHAR (10)    NOT NULL,
    CONSTRAINT [PK_UpdatedImaging] PRIMARY KEY CLUSTERED ([ImageID] ASC)
);

