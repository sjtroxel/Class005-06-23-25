CREATE TABLE Authors (
    AuthorID int,
    AuthorName varchar(255)
);

CREATE TABLE Books (
    BookID int,
    Title varchar(255),
    AuthorID int,
    PublicationYear int
);

CREATE TABLE Sales (
    SaleID int,
    BookID int,
    QuantitySold int,
    SaleDate date
);

INSERT INTO Authors (AuthorID, AuthorName)
VALUES (1, 'Jane Doe');
INSERT INTO Authors (AuthorID, AuthorName)
VALUES (2, 'John Doe');

INSERT INTO Books (BookID, Title, AuthorID, PublicationYear)
VALUES (1, 'Book 1', 1, 2021);
INSERT INTO Books (BookID, Title, AuthorID, PublicationYear)
VALUES (2, 'Book 2', 2, 2020);

INSERT INTO Sales (SaleID, BookID, QuantitySold, SaleDate)
VALUES (1, 1, 10, '2021-01-01');
INSERT INTO Sales (SaleID, BookID, QuantitySold, SaleDate)
VALUES (2, 1, 20, '2021-02-02');

SELECT * FROM Books INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID;

SELECT * FROM Books LEFT JOIN Sales ON Books.BookID = Sales.BookID WHERE Sales.BookID IS NULL;

SELECT Title, SUM(QuantitySold) FROM Books INNER JOIN Sales ON Books.BookID = Sales.BookID GROUP BY Title;

--      CHATGPT suggests removing the below (commented-out) line from the solution posted in the readings and replacing it with the
--      line below that (not commented-out): 

-- SELECT Title, QuantitySold FROM Books INNER JOIN Sales ON Books.BookID = Sales.BookID WHERE YEAR(SaleDate) = 2021;

SELECT Title, QuantitySold 
FROM Books 
INNER JOIN Sales ON Books.BookID = Sales.BookID 
WHERE strftime('%Y', SaleDate) = '2021';

-- This eliminates the error that came up when I tried the first solution in the jdoodle.
-- Not too sure why right now - GPT says it's cause of the differences between SQLLite and whatever... ?