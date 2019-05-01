
/*
CATEGORY
AUTHOR
PUBLISHER
BOOK
*/


--CATEGORY ----------------------------------
INSERT INTO CATEGORY (CategoryName) VALUES ('Science')
GO
INSERT INTO CATEGORY (CategoryName) VALUES ('Programming')
GO
INSERT INTO CATEGORY (CategoryName) VALUES ('Novel')
GO

--AUTHOR ----------------------------------
INSERT INTO AUTHOR (AuthorName) VALUES ('Knut Hamsun')
GO
INSERT INTO AUTHOR (AuthorName) VALUES ('Gilbert Strang')
GO
INSERT INTO AUTHOR (AuthorName) VALUES ('J.R.R Tolkien')
GO
INSERT INTO AUTHOR (AuthorName) VALUES ('Dorf Bishop')
GO

--PUBLISHER ----------------------------------
INSERT INTO PUBLISHER (PublisherName) VALUES ('Prentice Hall')
GO
INSERT INTO PUBLISHER (PublisherName) VALUES ('Wiley')
GO
INSERT INTO PUBLISHER (PublisherName) VALUES ('McGraw-Hill')
GO

--BOOK ----------------------------------
INSERT INTO BOOK (Title, ISBN, PublisherId, AuthorId, CategoryId) 
VALUES 
(
'Introduction to Linear Algebra',
'0-07-066781-0', 
(select PublisherId from PUBLISHER where PublisherName='Prentice Hall'),
(select AuthorId from AUTHOR where AuthorName='Gilbert Strang'),
(select CategoryId from CATEGORY where CategoryName='Science')
)
GO

INSERT INTO BOOK (Title, ISBN, PublisherId, AuthorId, CategoryId) 
VALUES 
(
'Modern Control System',
'1-08-890781-0',  
(select PublisherId from PUBLISHER where PublisherName='Wiley'),
(select AuthorId from AUTHOR where AuthorName='Dorf Bishop'),
(select CategoryId from CATEGORY where CategoryName='Programming')
)
GO

INSERT INTO BOOK (Title, ISBN, PublisherId, AuthorId, CategoryId) 
VALUES 
(
'The Lord of the Rings',
'2-09-066556-2',  
(select PublisherId from PUBLISHER where PublisherName='McGraw-Hill'),
(select AuthorId from AUTHOR where AuthorName='J.R.R Tolkien'),
(select CategoryId from CATEGORY where CategoryName='Novel')
)
GO