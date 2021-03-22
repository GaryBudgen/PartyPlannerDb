CREATE TABLE [dbo].[People] (
    [PersonId] INT  IDENTITY (1, 1) NOT NULL,
    [FullName] NVARCHAR (100) NULL,
    [Email]    NVARCHAR (150) NULL,
    CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED ([PersonId] ASC)
);

