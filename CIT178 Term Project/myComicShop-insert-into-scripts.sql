/* USE myComicShop;
GO
INSERT INTO Zipcode VALUES ('2108','Boston','MA')
INSERT INTO Zipcode VALUES ('49601','Cadillac','MI')
INSERT INTO Zipcode VALUES ('49696','Traverse City','MI')
INSERT INTO Zipcode VALUES ('49649','Kingsley','MI')
INSERT INTO Zipcode VALUES ('49690','Williamsburg','MI')
INSERT INTO Zipcode VALUES ('18074','Fredrick','PA')
INSERT INTO Zipcode VALUES ('43003','Columbus','OH') 


INSERT INTO Comics Values (1, 'The Amazing Spider-Man (2022 - Present)', 'Wells', 'Romita Jr.', 'Marvel Comics','28',4.99)
INSERT INTO Comics Values (2, 'The Avengers (2018 - Present)', 'Aaron', 'McGuiness', 'Marvel Comics','43',4.99)
INSERT INTO Comics Values (3, 'Avengers Forever (2021 - Present)', 'Aaron', 'Towe', 'Marvel Comics', '43',4.79)
INSERT INTO Comics Values (4, 'Batman (2016 - Present)', 'Zadarsky', 'Romero', 'DC Comics', '28',2.99)
INSERT INTO Comics Values (5, 'Creepshow (2022 - Present)', 'Misc', 'Misc', 'Skybound', '28',3.99)
INSERT INTO Comics Values (6, 'Daredevil (2022 - Present) ', 'Zadarsky', 'Latorre', 'Marvel Comics', '43',3.99)
INSERT INTO Comics Values (7, 'The Goon (2019 - Present)', 'Powell', 'Powell', 'Albatross Funnybooks','32',3.99)
INSERT INTO Comics Values (8, 'Public Domain (2022 - Present)', 'Zadarsky', 'Zadarsky', 'Image Comics','40',3.99)
INSERT INTO Comics Values (9, 'X-Force (2019 - Present)', 'Percy', 'Gill', 'Marvel Comics', '36',3.99)
INSERT INTO Comics Values (10, 'Thor (2020 - Present)', 'Cates', 'Larroca', 'Marvel Comics', '32',4.75)
INSERT INTO Comics Values (11, 'Spawn (1992 - Present)', 'McFarlane', 'McFarlane', 'Image Comics', '28',2.99)


INSERT INTO Locations VALUES (1, 'Local Store')
INSERT INTO Locations VALUES (2, 'Ebay')
INSERT INTO Locations VALUES (3, 'Website')
INSERT INTO Locations VALUES (4, 'Convention')


INSERT INTO Customers VALUES (1, 'Harvey Pekar', '1123 Noid Rd', '2108', '553-789-9874','100')
INSERT INTO Customers VALUES (2, 'Alfred Pennyworth','1312 Berch  Pl', '49601', '555-555-5547','101')
INSERT INTO Customers VALUES (3, 'Archie Andrews', '1711 Long Rd', '49696', '231-547-4784','102')
INSERT INTO Customers VALUES (4, 'Jean Grey', '9876 Stone Hwy', '49649', '231-125-1254','103')
INSERT INTO Customers VALUES (5, 'Renee Montoya', '2123 Brick Rd', '49690', '231-698-4784','104')
INSERT INTO Customers VALUES (6, 'Will Eisnerr', '5483 Townline', '18074', '553-789-9874','105')
INSERT INTO Customers VALUES (7, 'Bob Barker', '2352 Ridge Way', '43003', '789-874-1478','106')


INSERT INTO PendingOrders VALUES (1, '1', '1', '10/4/2022')
INSERT INTO PendingOrders VALUES (2, '1', '1', '10/5/2022')
INSERT INTO PendingOrders VALUES (3, '1', '2', '10/6/2022')
INSERT INTO PendingOrders VALUES (4, '1', '2', '10/7/2022')
INSERT INTO PendingOrders VALUES (5, '2', '2', '10/8/2022')
INSERT INTO PendingOrders VALUES (6, '2', '3', '10/9/2022')
INSERT INTO PendingOrders VALUES (7, '2', '3', '10/5/2022')
INSERT INTO PendingOrders VALUES (8, '2', '4', '10/6/2022')
INSERT INTO PendingOrders VALUES (9, '3', '5', '10/7/2022')
INSERT INTO PendingOrders VALUES (10, '3','4', '10/9/2022')
INSERT INTO PendingOrders VALUES (11, '3', '4', '10/1/2022')
INSERT INTO PendingOrders VALUES (12, '4', '5', '10/2/2022')
INSERT INTO PendingOrders VALUES (13, '4', '5', '10/3/2022')
INSERT INTO PendingOrders VALUES (14, '3', '6', '10/4/2022')
INSERT INTO PendingOrders VALUES (15, '2', '7', '10/4/2022')

INSERT INTO OrderDetails Values (1, 01, 1, 2)
INSERT INTO OrderDetails Values (2, 02, 1, 2)
INSERT INTO OrderDetails Values (3, 03, 1, 2)
INSERT INTO OrderDetails Values (4, 04, 1, 2)
INSERT INTO OrderDetails Values (5, 05, 1, 2)
INSERT INTO OrderDetails Values (6, 06, 1, 2)
INSERT INTO OrderDetails Values (7, 07, 1, 2)
INSERT INTO OrderDetails Values (8, 08, 1, 2)
INSERT INTO OrderDetails Values (9, 09, 1, 2)
INSERT INTO OrderDetails Values (10, 10, 1, 2)
INSERT INTO OrderDetails Values (11, 11, 1, 2)
INSERT INTO OrderDetails Values (12, 12, 1, 2)
INSERT INTO OrderDetails Values (13, 13, 1, 2)
INSERT INTO OrderDetails Values (14, 14, 1, 2)
INSERT INTO OrderDetails Values (15, 15, 1, 2)
*/
