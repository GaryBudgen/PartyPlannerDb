/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Get Party info by Person

Example Call:

	EXEC usp_GetPartiesByPerson 1

-- ==============================================
*/

CREATE PROCEDURE [dbo].[usp_GetPartiesByPerson]
		@PersonId INT

AS BEGIN 

	SET NOCOUNT ON

SELECT 
par.[PartyId]
,par.[PartyName]
,par.[Location]
,par.[StartTime]
,dri.[DrinkName] 
FROM [dbo].[Attendees] att
INNER JOIN [dbo].[Party] par ON par.[PartyId] = att.[PartyId]
INNER JOIN [dbo].[Drinks] dri ON dri.[DrinkId] = att.[DrinkId]
WHERE att.[PersonId] = @PersonId

END