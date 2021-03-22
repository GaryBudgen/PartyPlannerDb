/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Adds a new Person to the table

Example Call:

	EXEC usp_AddPerson 'Gary Budgen', 'Gary@email.com'

-- ==============================================
*/

CREATE PROCEDURE [dbo].[usp_AddPerson]
		@FullName NVARCHAR(100), 
		@EmailAddress NVARCHAR(150)		
AS BEGIN 
	
	SET NOCOUNT ON

INSERT INTO  [dbo].[People]
VALUES(@FullName, @EmailAddress)

END