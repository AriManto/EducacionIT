IF EXISTS (SELECT name 
	   FROM   sysobjects 
	   WHERE  name = 'UpdateBook' 
	   AND 	  type = 'P')
	DROP PROCEDURE UpdateBook
GO

CREATE PROCEDURE UpdateBook
@BookId int,
@Title varchar(50),
@ISBN varchar(20),
@PublisherName varchar(50),
@AuthorName varchar(50),
@CategoryName varchar(50)
AS



--execute UpdateeBook BookId, 'Title', 'Author', 'Publisher', 'ISBN', 'Category'

if not exists (select * from CATEGORY where CategoryName = @CategoryName)
	INSERT INTO CATEGORY (CategoryName) VALUES (@CategoryName)

if not exists (select * from AUTHOR where AuthorName = @AuthorName)
	INSERT INTO AUTHOR (AuthorName) VALUES (@AuthorName)

if not exists (select * from PUBLISHER where PublisherName = @PublisherName)
	INSERT INTO PUBLISHER (PublisherName) VALUES (@PublisherName)



UPDATE BOOK SET
Title = @Title, 
ISBN = @ISBN, 
PublisherId = (select PublisherId from PUBLISHER where PublisherName=@PublisherName), 
AuthorId = (select AuthorId from AUTHOR where AuthorName=@AuthorName), 
CategoryId = (select CategoryId from CATEGORY where CategoryName=@CategoryName) 
	 
WHERE BookId = @BookId

GO

