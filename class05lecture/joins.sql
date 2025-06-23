CREATE TABLE Customers (
    CustomerID int PRIMARY KEY,
    Name varchar(255),
    Email varchar(255)
);

CREATE TABLE Orders (
    OrderID int,
    CustomerID int,
    Quantity int,
    Total float
);


INSERT INTO Customers (CustomerID, Name, Email)
VALUES  (1, 'John Doe', 'john.doe@email.com'),
        (2, 'Jane Smith', 'jane.smith@email.com'),
        (3, 'Luke James', 'luke.james@email.com');
        
INSERT INTO Orders (OrderID, CustomerID, Quantity, Total)
VALUES  (1, 1, 1, 50),
        (2, 2, 1, 25);
        
-- SELECT * FROM Customers;
-- SELECT * FROM Customers WHERE Name = 'John Doe';
-- SELECT * FROM Customers ORDER BY Name ASC LIMIT 2;
-- SELECT Customers.Name, Orders.Total FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
-- SELECT Customers.Name, Orders.Total FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.Name, Orders.Total FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID WHERE Orders.Total < 25;

