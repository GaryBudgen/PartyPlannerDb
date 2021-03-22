/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Gets a list of all drinks

Example Call:

	EXEC usp_GetDrinksList 

-- ==============================================
*/


CREATE PROCEDURE [dbo].[usp_GetDrinksList]
AS BEGIN 

	SET NOCOUNT ON

SELECT 
[DrinkId]
,[DrinkName] 
FROM [dbo].[Drinks]

END