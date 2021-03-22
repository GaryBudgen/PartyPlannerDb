/*
=============================================
-- Created by	Gary Budgen
-- Created on	18/03/2021
-- Description	Adds a new Party to the table

Example Call:

	EXEC usp_AddParty 'Xmas Party', 'Manchester', '2020-12-08 19:00'

-- ==============================================
*/

CREATE PROCEDURE [dbo].[usp_AddParty]
		@PartyName NVARCHAR(100), 
		@Location NVARCHAR(100), 
		@StartTime DATETIME
AS BEGIN 
	
	SET NOCOUNT ON

INSERT INTO [dbo].[Party]
VALUES(@PartyName, @Location, @StartTime)	

END