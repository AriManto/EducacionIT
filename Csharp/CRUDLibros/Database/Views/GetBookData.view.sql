IF EXISTS (SELECT name 
	   FROM   sysobjects 
	   WHERE  name = 'GetBookData' 
	   AND 	  type = 'V')
	DROP VIEW GetBookData
GO

CREATE VIEW GetBookData
AS

SELECT
BOOK.BookId, 
BOOK.Title, 
BOOK.ISBN, 
PUBLISHER.PublisherName, 
AUTHOR.AuthorName, 
CATEGORY.CategoryName

FROM BOOK 
INNER JOIN AUTHOR ON BOOK.AuthorId = AUTHOR.AuthorId 
INNER JOIN PUBLISHER ON BOOK.PublisherId = PUBLISHER.PublisherId 
INNER JOIN CATEGORY ON BOOK.CategoryId = CATEGORY.CategoryId

GO