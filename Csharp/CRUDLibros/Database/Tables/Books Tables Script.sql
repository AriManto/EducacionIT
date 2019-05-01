/*
AUTHOR
PUBLISHER
CATEGORY
BOOK
*/



if not exists (select * from dbo.sysobjects where id = object_id(N'[AUTHOR]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [AUTHOR]
(
	[AuthorId] [int] IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[AuthorName] [varchar](50) NOT NULL UNIQUE,
	[Address] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[PostCode] [varchar](50) NULL,
	[PostAddress] [varchar](50) NULL,
) 
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[PUBLISHER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [PUBLISHER]
(
	[PublisherId] [int] IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[PublisherName] [varchar](50) NOT NULL UNIQUE,
	[Description] [varchar](1000) NULL,
	[Address] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[PostCode] [varchar](50) NULL,
	[PostAddress] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,	
) 
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[CATEGORY]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [CATEGORY]
(
	[CategoryId] [int] IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[CategoryName] [varchar](50) NOT NULL UNIQUE,
	[Description] [varchar](1000) NULL,
) 
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[BOOK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
CREATE TABLE [BOOK]
(
	[BookId] [int] IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[Title] [varchar](50) NOT NULL UNIQUE,
	[ISBN] [varchar](20) NOT NULL,
	[PublisherId] [int] NOT NULL FOREIGN KEY REFERENCES [PUBLISHER] ([PublisherId]),
	[AuthorId] [int] NOT NULL FOREIGN KEY REFERENCES [AUTHOR] ([AuthorId]),
	[CategoryId] [int] NOT NULL FOREIGN KEY REFERENCES [CATEGORY] ([CategoryId]),
	[Description] [varchar](1000) NULL,
	[Year] [date] NULL,
	[Edition] [int] NULL,
	[AverageRating] [float] NULL,
) 
GO













