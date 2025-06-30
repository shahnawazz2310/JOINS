CREATE DATABASE PRODUCT;

USE PRODUCT;

CREATE TABLE CUSTOMERS(
CustomerID int primary key,
CustomerName Varchar(150)
);

INSERT INTO CUSTOMERS
VALUES
("1", "Alex"),
("2", "Bob"),
("3", "Casey"),
("4", "Donald"),
("5", "Eva"),
("6", "Franklin"),
("7", "Gwen"),
("8", "Hailee")
;



CREATE TABLE ORDERS(
OrderID int primary key,
OrderDate date,
CustomerID int,
FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMERS (CUSTOMERID)
);

INSERT INTO ORDERS
VALUES
("1", "2025-06-23", "8"),
("2", "2025-06-24", "6"),
("3", "2025-06-25", "1"),
("4", "2025-06-26", "7"),
("5", "2025-06-27", "2"),
("6", "2025-06-28", "5");

SELECT * FROM ORDERS;

--------------------------------------------------------------------------------------------------------------------------------------------------

-- INNER JOIN
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN 
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL JOIN

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;



