CREATE DATABASE FluffyPonyManagement;

GO
USE FluffyPonyManagement;
CREATE TABLE ZipCode(
	ZipCode varchar(10) NOT NULL,
	City varchar(30) NOT NULL,
	State varchar(20),
	Country varchar(20) NOT NULL,
	PRIMARY KEY(ZipCode),
);
GO
CREATE TABLE Customers(
	CustID int NOT NULL,
	CompanyName varchar(30) NOT NULL,
	ContactFirstName varchar(20),
	ContactLastName varchar(20),
	Address varchar(30) NOT NULL,
	ZipCode varchar(10) NOT NULL,
	PRIMARY KEY(CustID)
);
GO
CREATE TABLE Employees(
	EmployeeID int NOT NULL,
	FirstName varchar(20) NOT NULL,
	LastName varchar(20) NOT NULL,
	Address varchar(30) NOT NULL,
	ZipCode varchar(10) NOT NULL,
	PRIMARY KEY(EmployeeID)
);
GO
CREATE TABLE Publishers(
	PubID int NOT NULL,
	CompanyName varchar(30) NOT NULL,
	Address varchar(30) NOT NULL,
	ZipCode varchar(10) NOT NULL,
	PRIMARY KEY(PubID)
);
GO
CREATE TABLE Developers(
	DevID int NOT NULL,
	CompanyName varchar(30) NOT NULL,
	Address varchar(30) NOT NULL,
	ZipCode varchar(10) NOT NULL,
	PRIMARY KEY(DevID)
);
GO
CREATE TABLE Sales(
	SaleID int NOT NULL,
	SaleDate datetime NOT NULL,
	EmployeeID int NOT NULL,
	CustID int NOT NULL,
	PRIMARY KEY(SaleID)
);
GO
CREATE TABLE Games(
	GameID int NOT NULL,
	DevID int NOT NULL,
	PubID int NOT NULL,
	Title varchar(40),
	Price money,
	PRIMARY KEY(GameID)
);
GO
CREATE TABLE SaleLineItems(
	ID int NOT NULL,
	SaleID int NOT NULL,
	GameID int NOT NULL,
	QTY int,
	TotalItemPrice money,
	PRIMARY KEY(ID)
);