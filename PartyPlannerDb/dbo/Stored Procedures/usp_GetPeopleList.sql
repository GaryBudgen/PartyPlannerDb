/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Gets a list of all People

Example Call:

	EXEC usp_GetPeopleList

-- ==============================================
*/

CREATE PROCEDURE [dbo].[usp_GetPeopleList]
AS BEGIN 

	SET NOCOUNT ON

SELECT  
[PersonId]
,[FullName]
,[Email]
FROM [dbo].[People]

END