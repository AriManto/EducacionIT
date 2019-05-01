IF EXISTS (SELECT name 
	   FROM   sysobjects 
	   WHERE  name = 'DeleteBook' 
	   AND 	  type = 'P')
	DROP PROCEDURE DeleteBook
GO

CREATE PROCEDURE DeleteBook
@BookId int
AS


delete from BOOK where BookId=@BookId


GO

