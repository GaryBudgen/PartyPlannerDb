/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Adds a Person to a Party

Example Call:

	EXEC usp_AddPersonToParty 1, 1, 1

-- ==============================================
*/

CREATE PROCEDURE [dbo].[usp_AddPersonToParty]
		@PartyId INT,
		@PersonId INT,
		@DrinkId INT

AS BEGIN 

	SET NOCOUNT ON

INSERT INTO  [dbo].[Attendees]
VALUES(@PartyId, @PersonId, @DrinkId)

END