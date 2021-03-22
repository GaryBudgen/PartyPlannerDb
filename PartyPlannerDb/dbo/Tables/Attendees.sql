CREATE TABLE [dbo].[Attendees] (
    [AttendeeId] INT IDENTITY (1, 1) NOT NULL,
    [PartyId]    INT NOT NULL,
    [PersonId]   INT NOT NULL,
    [DrinkId]    INT NOT NULL,
    CONSTRAINT [PK_Attendees] PRIMARY KEY CLUSTERED ([PartyId] ASC, [PersonId] ASC),
    CONSTRAINT [FK_Attendee_DrinkId] FOREIGN KEY ([DrinkId]) REFERENCES [dbo].[Drinks] ([DrinkId]),
    CONSTRAINT [FK_Attendee_PartyId] FOREIGN KEY ([PartyId]) REFERENCES [dbo].[Party] ([PartyId]),
    CONSTRAINT [FK_Attendee_PersonId] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[People] ([PersonId])
);

