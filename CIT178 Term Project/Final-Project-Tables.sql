CREATE DATABASE myComicShop
GO

USE myComicShop;
CREATE TABLE Comics(
	ComicID int NOT NULL,
	Title varchar(200) NOT NULL,
	Writer varchar(100) NOT NULL,
	Artist varchar(50),
	Publisher varchar(50),
	IssuePages varchar(4),
	Price money,
	PRIMARY KEY(ComicID)
);
GO
CREATE TABLE Customers(
	ID int NOT NULL,
	CustName varchar(50) NOT NULL,
	HomeAddress varchar(30) NOT NULL,
	Zipcode varchar(10) NOT NULL,
	Phone varchar(15),
	Membership varchar(5),
	PRIMARY KEY(ID)
);
GO
CREATE TABLE Zipcode(
	Zipcode varchar(10) NOT NULL,
	City varchar(30) NOT NULL,
	State varchar(2) NOT NULL,
	PRIMARY KEY(Zipcode)
);
GO
CREATE TABLE Locations(
	ID int NOT NULL,
	Name varchar(20) NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE PendingOrders(
	ID int NOT NULL,
	LocationID int NOT NULL,
	CustomerID int NOT NULL,
	OrderDate datetime,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE OrderDetails(
	ID int NOT NULL,
	OrderID int NOT NULL,
	Stock int NOT NULL,
	QTY int,
	PRIMARY KEY(ID)
);
GO