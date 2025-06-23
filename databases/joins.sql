CREATE TABLE Employees (
    EmployeeID int,
    LastName varchar(255),
    FirstName varchar(255),
    DepartmentID int,
    BirthDate date,
    Notes text,
    Salary float
);

CREATE TABLE Departments (
    DepartmentID int,
    DepartmentName varchar(255),
    ManagerID int,
    Location varchar(255),
    Budget float,
    Notes text,
    Employees int
);

-- INSERT INTO Employees (EmployeeID, LastName, FirstName, DepartmentID, BirthDate, Notes, Salary)
-- VALUES (1, 'Doe', 'John', 1, '1990-01-01', 'John Doe was born on January 1, 1990.', 50000);
INSERT INTO Employees (EmployeeID, LastName, FirstName, DepartmentID, BirthDate, Notes, Salary)
VALUES (2, 'Doe', 'Jane', 1, '1991-02-02', 'Jane Doe was born on February 2, 1991.', 60000);

-- Change the DepartmentID of the first employee to 3
INSERT INTO Employees (EmployeeID, LastName, FirstName, DepartmentID, BirthDate, Notes, Salary)
VALUES (1, 'Doe', 'John', 3, '1990-01-01', 'John Doe was born on January 1, 1990.', 50000);

INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location, Budget, Notes, Employees)
VALUES (1, 'Sales', 1, 'New York', 1000000, 'The Sales department is located in New York.', 10);
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location, Budget, Notes, Employees)
VALUES (2, 'Marketing', 2, 'Los Angeles', 2000000, 'The Marketing department is located in Los Angeles.', 20);

-- SELECT * FROM Employees, Departments;
-- SELECT * FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- SELECT * FROM Employees LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- SELECT * FROM Employees RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- SELECT * FROM Employees FULL JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT * FROM Employees e1 INNER JOIN Employees e2 ON e1.DepartmentID = e2.DepartmentID;