IF EXISTS (SELECT name 
	   FROM   sysobjects 
	   WHERE  name = 'CreateBook' 
	   AND 	  type = 'P')
	DROP PROCEDURE CreateBook
GO

CREATE PROCEDURE CreateBook
@Title varchar(50),
@Isbn varchar(20),
@PublisherName varchar(50),
@AuthorName varchar(50),
@CategoryName varchar(50)
AS



if not exists (select * from CATEGORY where CategoryName = @CategoryName)
	INSERT INTO CATEGORY (CategoryName) VALUES (@CategoryName)

if not exists (select * from AUTHOR where AuthorName = @AuthorName)
	INSERT INTO AUTHOR (AuthorName) VALUES (@AuthorName)

if not exists (select * from PUBLISHER where PublisherName = @PublisherName)
	INSERT INTO PUBLISHER (PublisherName) VALUES (@PublisherName)


if not exists (select * from BOOK where Title = @Title)
	INSERT INTO BOOK (Title, ISBN, PublisherId, AuthorId, CategoryId) 
	VALUES 
	(
	@Title,
	@ISBN, 
	(select PublisherId from PUBLISHER where PublisherName=@PublisherName),
	(select AuthorId from AUTHOR where AuthorName=@AuthorName),
	(select CategoryId from CATEGORY where CategoryName=@CategoryName)
	)


GO

