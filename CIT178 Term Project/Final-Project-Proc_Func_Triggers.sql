

/*Final Project Procedures 


-- Retrieves and displays comics published by Marvel Comics in order of writer. 
USE ComicShop;
GO
CREATE Proc spComicDetails
AS
SELECT * FROM Comics
WHERE Publisher = 'Marvel Comics'
Order BY Writer

Go
EXEC spComicDetails;

-- Takes an input parameter
USE ComicShop;
GO
CREATE PROC spPubTitles
@ComicID int
AS
BEGIN
SELECT * FROM Comics
WHERE ComicID = @ComicID;
END
GO
EXEC spPubTitles 4

-- Takes one input parameter and returns four output parameters

USE ComicShop;
GO
CREATE PROC spCurrentTitles
	@ComicID int,
	@Title nvarchar(55) OUTPUT,
	@Writer nvarchar(50) OUTPUT,
	@Artist nvarchar(50) OUTPUT, 
	@Price DECIMAL(19,2) OUTPUT
AS
SELECT @Title = Title, @Writer = Writer, @Artist = Artist, @Price = Price
FROM Comics 
WHERE ComicID = @ComicID;
GO
-- Run the Proc
DECLARE @Title nvarchar(55);
DECLARE @Writer nvarchar(50);
DECLARE @Artist nvarchar(50);
DECLARE @Price DECIMAL(19,2);
EXEC spCurrentTitles 3, @Title OUTPUT, @Writer OUTPUT, @Artist OUTPUT, @Price OUTPUT;
SELECT @Title AS 'Current Title', @Writer AS 'Comic Writer', @Artist AS 'Comic Artist', @Price AS 'Comic Price';

-- Stored procedure that has a return value 
USE ComicShop;
GO
CREATE PROC spOrders
AS
DECLARE @Stock int;
SELECT @Stock = COUNT(*)
FROM OrderDetails 
RETURN @Stock;
GO
DECLARE @Stock int;
EXEC @Stock = spOrders;
PRINT 'There are ' + CONVERT(varchar, @Stock) + ' comics on order';

 Final Project User Defined Functions 

-- creates the function 
USE ComicShop;
GO
CREATE FUNCTION fnGetPublisher
	(@Publisher nvarchar(50) = '%')
	RETURNS int
	BEGIN
	RETURN (Select ComicID FROM Comics WHERE Publisher LIKE @Publisher);
	END;

-- uses the function
SELECT ComicID, Title, IssuePages, Price 
FROM Comics
WHERE ComicID = dbo.fnGetPublisher ('DC Comics');

USE ComicShop;
GO
CREATE FUNCTION fnStoreFront
	(@LocationName nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Locations WHERE LocationName LIKE @LocationName);
GO
SELECT * FROM dbo.fnStoreFront('%B%');


 Final Project Triggers 

 -- create archive table by copying customer table without any rows
 
 USE ComicShop;
 GO
 SELECT * INTO OOPIssues
 FROM Comics
 WHERE 1=0;

  -- update OOPIssues table and add activity column for status
 ALTER TABLE OOPIssues
 ADD Activity varchar(50);
 GO

   -- create insert trigger
 CREATE TRIGGER OOPIssues_INSERT ON Comics
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @ComicID int
	DECLARE @Title varchar(55);
	DECLARE @Writer varchar(50);
	DECLARE @Artist varchar(50);
	DECLARE @Publisher varchar(50);
	DECLARE @IssuePages int;
	DECLARE @Price DECIMAL(19,2);

    SELECT @ComicID =INSERTED.ComicID, @Title =INSERTED.Title, @Writer=INSERTED.Writer,
	@Artist =INSERTED.Artist, @Publisher =INSERTED.Publisher, @IssuePages =INSERTED.IssuePages, @Price = INSERTED.Price 
	FROM INSERTED

    INSERT INTO OOPIssues VALUES(@ComicID, @Title, @Writer,@Artist, @Publisher, @IssuePages, @Price, 'INSERTED' )
END
GO

-- add row into customer to test insert trigger
INSERT INTO OOPIssues VALUES(15,'Howard The Duck ','Zdarsky','Quinones','Marvel Comics','79','4.99');
GO
-- view data in customer archive
SELECT * FROM OOPIssues;
GO

 -- create delete trigger
 CREATE TRIGGER OOPIssues_Delete ON Comics
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
	DECLARE @ComicID int
	DECLARE @Title varchar(55);
	DECLARE @Writer varchar(50);
	DECLARE @Artist varchar(50);
	DECLARE @Publisher varchar(50);
	DECLARE @IssuePages int;
	DECLARE @Price DECIMAL(19,2);

   SELECT @ComicID =DELETED.ComicID, @Title =DELETED.Title, @Writer=DELETED.Writer,
	@Artist =DELETED.Artist, @Publisher =DELETED.Publisher, @IssuePages =DELETED.IssuePages, @Price = DELETED.Price 
	FROM DELETED

    INSERT INTO OOPIssues VALUES(@ComicID,@Title ,@Writer,@Artist, @Publisher, @IssuePages, @Price, 'Deleted' )
END
GO
-- delete row from customer to test delete trigger
DELETE FROM Comics WHERE ComicID = 4;
GO
;

GO
 -- create update trigger
 CREATE TRIGGER OOPIssues_Update ON Comics
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
	DECLARE @ComicID int
	DECLARE @Title varchar(55);
	DECLARE @Writer varchar(50);
	DECLARE @Artist varchar(50);
	DECLARE @Publisher varchar(50);
	DECLARE @IssuePages int;
	DECLARE @Price DECIMAL(19,2);

  SELECT @ComicID =INSERTED.ComicID, @Title =INSERTED.Title, @Writer=INSERTED.Writer,
	@Artist =INSERTED.Artist, @Publisher =INSERTED.Publisher, @IssuePages =INSERTED.IssuePages, @Price = INSERTED.Price 
	FROM INSERTED

	-- Since all the data is being written to the archive table, there is no need to identify what was changed
    INSERT INTO OOPIssues VALUES(@ComicID,@Title ,@Writer,@Artist, @Publisher, @IssuePages, @Price, 'Updated' )
END
GO
-- insert a new row and then update the row (this will test the insert and update triggers)
INSERT INTO Comics VALUES(12,'Saga of the Swamp Thing','Moore','Various','DC Comics','300','200.00');
GO
UPDATE Comics
SET Title = 'Man Thing'
WHERE ComicID = 12;
GO
-- view data in customer archive
SELECT * FROM OOPIssues;*/