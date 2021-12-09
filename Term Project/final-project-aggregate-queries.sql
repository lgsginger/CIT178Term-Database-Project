/*
USE FluffyPonyManagement;
SELECT Publishers.CompanyName, COUNT(DISTINCT Games.GameID) AS [Games published]
FROM Games JOIN Publishers ON Games.PubID = Publishers.PubID
GROUP BY Publishers.CompanyName
ORDER BY Publishers.CompanyName ASC;

SELECT Games.Title, COUNT(SaleLineItems.GameID) AS [Orders purchased],
					SUM(SaleLineItems.TotalItemPrice) AS [Total sales by title]
FROM SaleLineItems JOIN Games ON SaleLineItems.GameID = Games.GameID
GROUP BY Games.Title
ORDER BY [Total sales by title] ASC;

SELECT Games.Title, AVG(SaleLineItems.QTY) AS [Average copys sold per order]
FROM SaleLineItems JOIN Games ON SaleLineItems.GameID = Games.GameID
GROUP BY Games.Title
ORDER BY [Average copys sold per order] DESC;

SELECT MIN(Games.Price) AS [Lowest priced game],
		MAX(Games.Price) AS [Highest priced game],
		AVG(Games.Price) AS [Average game cost from all titles]
FROM Games;
*/