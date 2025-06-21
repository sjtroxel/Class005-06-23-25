CREATE TABLE Employees (
    EmployeeID int,
    LastName varchar(255),
    FirstName varchar(255),
    BirthDate date,
    Notes text
);

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Notes)
VALUES (1, 'Doe', 'John', '1990-01-01', 'John Doe was born on January 1, 1990.');
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Notes)
VALUES (2, 'Doe', 'Jane', '1991-02-02', 'Jane Doe was born on February 2, 1991.');
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Notes)
VALUES (3, 'Doe', 'Mary', '1992-03-03', 'Mary Doe was born on March 3, 1992.');
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Notes)
VALUES (4, 'Doe', 'Mark', '1993-04-04', 'Mark Doe was born on April 4, 1993.');
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Notes)
VALUES (5, 'Doe', 'Lisa', '1994-05-05', 'Lisa Doe was born on May 5, 1994.');
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Notes)
VALUES (6, 'Doe', 'Robert', '1995-06-06', 'Robert Doe was born on June 6, 1995.');

SELECT * FROM Employees LIMIT 3;
