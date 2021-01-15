CREATE TABLE [dbo].[Blogs] (
    [BlogId] INT             IDENTITY (1, 1) NOT NULL,
    [Title]  NVARCHAR (100)  NOT NULL,
    [Body]   NVARCHAR (3000) NOT NULL,
    CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED ([BlogId] ASC)
);

