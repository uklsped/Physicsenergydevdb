CREATE TABLE [dbo].[WriteDuration] (
    [DurationID] INT            IDENTITY (1, 1) NOT NULL,
    [linac]      NCHAR (10)     NULL,
    [Activity]   INT            NULL,
    [StartTime]  DATETIME       NULL,
    [EndTime]    DATETIME       NULL,
    [Duration]   DECIMAL (6, 2) NULL,
    [StatusID]   INT            NULL,
    CONSTRAINT [PK_WriteDuration] PRIMARY KEY CLUSTERED ([DurationID] ASC)
);

