/* Final Project Procedures 

USE FluffyPonyManagement;
GO
CREATE PROC spHighPricedGames
AS
SELECT Title, Price, DevID, PubID
FROM Games
WHERE Price > 29.99;

EXEC spHighPricedGames;


USE FluffyPonyManagement;
GO
CREATE PROC spGetTitle
	@GameID int
AS
BEGIN
	SELECT * FROM Games
	WHERE GameID = @GameID;
END
GO

EXEC spGetTitle 1003;


USE FluffyPonyManagement;
GO
CREATE PROC spDeveloperInfo
	@DevID int,
	@CompanyName varchar(30) OUTPUT,
	@Address varchar(30) OUTPUT,
	@ZipCode varchar(10) OUTPUT
AS
SELECT @CompanyName = CompanyName, @Address = [Address], @ZipCode = ZipCode
FROM Developers WHERE DevID = @DevID;
GO

DECLARE @CompanyName varchar(30);
DECLARE @Address varchar(30);
DECLARE @ZipCode varchar(10);
EXEC spDeveloperInfo 205, @CompanyName OUTPUT, @Address OUTPUT, @ZipCode OUTPUT;
SELECT @CompanyName AS 'Company Name', @Address AS 'Address', @ZipCode AS 'Zipcode';

USE FluffyPonyManagement;
GO
CREATE PROC spSalesOrders
AS
DECLARE @Count int;
SELECT @Count = COUNT(*)
FROM SaleLineItems
RETURN @Count;
GO

DECLARE @Count int;
EXEC @Count = spSalesOrders;
PRINT 'We have fulfilled ' + CONVERT(varchar, @Count) + ' orders to date.';
GO
*/

/* Final Project User Defined Functions 

USE FluffyPonyManagement;
GO
CREATE FUNCTION fnGameID
	(@Title varchar(40) = '%')
	RETURNS int
BEGIN
	RETURN (SELECT GameID FROM Games WHERE Title Like @Title);
END;

GO
SELECT GameID, Title, Price 
FROM Games
WHERE GameID = dbo.fnGameID('Dig%');

USE FluffyPonyManagement;
GO
CREATE FUNCTION fnCustomerID
	(@CompanyName varchar(30) = '%')
	RETURNS table
RETURN 
	(SELECT * FROM Customers WHERE CompanyName Like @CompanyName);
GO

SELECT * FROM dbo.fnCustomerID('%Inc%');
*/

/* Final Project Triggers 

USE FluffyPonyManagement;
GO
SELECT * INTO PublisherChanges FROM Publishers

SELECT * FROM PublisherChanges;

ALTER TABLE PublisherChanges
ADD ChangeMade varchar(20);
GO

SELECT * FROM PublisherChanges;

CREATE TRIGGER PublisherChanges_INSERT ON Publishers
	AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PubID int
		DECLARE @CompanyName varchar(30)
		DECLARE @Address varchar(30)
		DECLARE @ZipCode varchar(20)

	SELECT @PubID = INSERTED.PubID, @CompanyName = INSERTED.CompanyName, @Address = INSERTED.[Address], @ZipCode = INSERTED.ZipCode
	FROM INSERTED

INSERT INTO PublisherChanges VALUES(@PubID, @CompanyName, @Address, @ZipCode,'Inserted')
END
GO

DELETE FROM Publishers WHERE PubID=107;
DELETE FROM PublisherChanges WHERE PUBID=107;
INSERT INTO Publishers(PubID, CompanyName, [Address], ZipCode)
VALUES(107,'Purple Poncho Publishing','602 West Turkey St.','11720');
GO

SELECT * FROM PublisherChanges;
SELECT * FROM Publishers;

CREATE TRIGGER PublisherChanges_DELETE ON Publishers
	AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PubID int
		DECLARE @CompanyName varchar(30)
		DECLARE @Address varchar(30)
		DECLARE @ZipCode varchar(10)

	SELECT @PubID = DELETED.PubID, @CompanyName = DELETED.CompanyName, @Address = DELETED.[Address], @ZipCode = DELETED.ZipCode
	FROM DELETED

INSERT INTO PublisherChanges VALUES(@PubID, @CompanyName, @Address, @ZipCode, 'Deleted')
END
GO

INSERT INTO Publishers(PubID, CompanyName, [Address], ZipCode)
VALUES(108,'Loco Logos','6509 Adam Blvd.','11720');
GO

DELETE FROM Publishers WHERE PubID=108;

SELECT * FROM PublisherChanges;

CREATE TRIGGER PublisherChanges_UPDATE ON Publishers
	AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PubID int
		DECLARE @CompanyName varchar(30)
		DECLARE @Address varchar(30)
		DECLARE @ZipCode varchar(10)

	SELECT @PubID = INSERTED.PubID, @CompanyName = INSERTED.CompanyName, @Address = INSERTED.[Address], @ZipCode = INSERTED.ZipCode
	FROM INSERTED

INSERT INTO PublisherChanges VALUES(@PubID, @CompanyName, @Address, @ZipCode, 'Updated')
END
GO

INSERT INTO Publishers VALUES(109,'Skewed Statistics Corp','401 Geneva Ave.','11720');
GO
UPDATE Publishers
SET CompanyName = 'Statistics Corp'
WHERE PubID = 109;
GO

SELECT * FROM PublisherChanges;*/

