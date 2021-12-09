/* Final Project Views 
USE FluffyPonyManagement;
GO
CREATE VIEW GameTitles
AS
SELECT Title,Price
FROM Games;
GO

SELECT * FROM GameTitles

USE FluffyPonyManagement;
GO
CREATE VIEW Developers_vw
AS
SELECT DevID,CompanyName
FROM Developers;
GO

SELECT * FROM Developers_vw

USE FluffyPonyManagement;
GO
CREATE VIEW Publishers_vw
AS
SELECT PubID, CompanyName
FROM Publishers;
GO

SELECT * FROM Publishers_vw;

USE FluffyPonyManagement;
GO
CREATE VIEW Customers_vw
AS
SELECT CustID, CompanyName
FROM Customers;
GO

SELECT * FROM Customers_vw;

USE FluffyPonyManagement;
GO
UPDATE Customers_vw
SET CompanyName='United Games Inc.'
WHERE CompanyName='Games United';

SELECT * FROM Customers_vw;*/