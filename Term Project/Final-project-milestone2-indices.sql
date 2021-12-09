USE FluffyPonyManagement;
GO
CREATE INDEX IDX_ZipCodeOne ON Customers(ZipCode)
GO
CREATE INDEX IDX_ZipCodeTwo ON Developers(ZipCode)
GO
CREATE INDEX IDX_ZipCodeThree ON Employees(ZipCode)
GO
CREATE INDEX IDX_DevID ON Games(DevID)
GO
CREATE INDEX IDX_PubID ON Games(PubID)
GO
CREATE INDEX IDX_ZipCodeFour ON Publishers(ZipCode)
GO
CREATE INDEX IDX_SaleID ON SaleLineItems(SaleID)
GO
CREATE INDEX IDX_GameID ON SaleLineItems(GameID)
GO
CREATE INDEX IDX_EmployeeID ON Sales(EmployeeID)
GO
CREATE INDEX IDX_CustID ON Sales(CustID)