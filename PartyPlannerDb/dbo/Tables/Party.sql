CREATE TABLE [dbo].[Party] (
    [PartyId]   INT IDENTITY (1, 1) NOT NULL,
    [PartyName] NVARCHAR (100) NULL,
    [Location]  NVARCHAR (100) NULL,
    [StartTime] DATETIME       NULL,
    CONSTRAINT [PK_Party] PRIMARY KEY CLUSTERED ([PartyId] ASC)
);

