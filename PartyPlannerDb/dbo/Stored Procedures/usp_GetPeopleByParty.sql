/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Get attendees of a Party

Example Call:

	EXEC usp_GetPeopleByParty 1 

-- ==============================================
*/

CREATE PROCEDURE [dbo].[usp_GetPeopleByParty]
		@PartyId INT

AS BEGIN 

	SET NOCOUNT ON

SELECT 
peo.[PersonId]
,peo.[FullName]
,Peo.[Email]
,dri.[DrinkName]
FROM [dbo].[Attendees] att
INNER JOIN [dbo].[People] peo ON peo.[PersonId] = att.[PersonId]
INNER JOIN [dbo].[Drinks] dri ON dri.[DrinkId] = att.[DrinkId]
WHERE att.[PartyId] = @PartyId

END