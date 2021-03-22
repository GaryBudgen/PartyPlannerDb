/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Adds a new Drink to the table

Example Call:

	EXEC usp_AddDrink 'Water'

-- ==============================================
*/

CREATE PROCEDURE [dbo].[usp_AddDrink]
		@DrinkName NVARCHAR(100)		
AS BEGIN 
	
	SET NOCOUNT ON

INSERT INTO [dbo].[Drinks]
VALUES(@DrinkName)

END