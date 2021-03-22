CREATE TABLE [dbo].[Drinks] (
    [DrinkId]   INT IDENTITY (1, 1) NOT NULL,
    [DrinkName] NVARCHAR (100) NULL,
    CONSTRAINT [PK_Drink] PRIMARY KEY CLUSTERED ([DrinkId] ASC)
);

