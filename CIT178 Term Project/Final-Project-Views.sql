



/*
USE ComicShop;
GO

 /* View 1 */ 
 CREATE VIEW OngoingSeries
 AS
 SELECT Title, Writer, Artist,IssuePages, Price
 FROM Comics;

 UPDATE OngoingSeries
 SET IssuePages = 100
 WHERE Title = 'The Amazing Spider-Man (2022 - Present)'

SELECT  * FROM OngoingSeries

/* View 2 */ 
GO
CREATE VIEW CustomerContact
AS
SELECT CustName, Phone, Membership FROM Customers;
GO

/* View 3 */ 
GO 
CREATE VIEW OutgoingOrders
AS
SELECT CustName, Phone, Membership, LocationID, OrderDate
FROM Customers
JOIN PendingOrders ON Customers.CustID = PendingOrders.PendingID

/* View 4 */ 
GO
CREATE VIEW TitlesOrdered
AS 
SELECT Title, Price, OrderID, QTY
FROM Comics 
JOIN OrderDetails ON Comics.ComicID = OrderDetails.OrderDetailsID*/

