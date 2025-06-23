CREATE TABLE Customers (
    CustomerID int PRIMARY KEY,
    Name varchar(255),
    Email varchar(255)
);

INSERT INTO Customers (CustomerID, Name, Email)
VALUES  (1, 'John Doe', 'john.doe@email.com'),
        (2, 'Jane Smith', 'jane.smith@email.com'),
        (3, 'Luke James', 'luke.james@email.com');
        
-- SELECT * FROM Customers;
-- SELECT * FROM Customers WHERE Name = 'John Doe';

SELECT * FROM Customers ORDER BY Name ASC LIMIT 2;