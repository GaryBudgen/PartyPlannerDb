/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Gets a list of all Parties

Example Call:

	EXEC usp_GetPartyList 

-- ==============================================
*/

CREATE PROCEDURE [dbo].[usp_GetPartyList]
AS BEGIN 

	SET NOCOUNT ON

SELECT 
[PartyId]
,[PartyName]
,[Location]
,[StartTime]
FROM [dbo].[Party]

END