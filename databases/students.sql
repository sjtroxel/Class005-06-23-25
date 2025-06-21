CREATE TABLE Students (
    StudentID int,
    LastName varchar(255),
    FirstName varchar(255),
    BirthDate date,
    Notes text,
    GPA float,
    Major varchar(255)
);

INSERT INTO Students (StudentID, LastName, FirstName, BirthDate, Notes, GPA, Major)
VALUES (1, 'Doe', 'John', '1990-01-01', 'John Doe was born on January 1, 1990.', 3.5, 'Computer Science');
INSERT INTO Students (StudentID, LastName, FirstName, BirthDate, Notes, GPA, Major)
VALUES (2, 'Doe', 'Jane', '1991-02-02', 'Jane Doe was born on February 2, 1991.', 3.6, 'Computer Science');

SELECT * FROM Students WHERE Major = 'Computer Science' AND GPA >= 3.5 ORDER BY GPA DESC LIMIT 1;
