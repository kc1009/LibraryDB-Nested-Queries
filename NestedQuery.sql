-- Scalar subquery in SELECT
SELECT 
    Title,
    (SELECT COUNT(*) 
     FROM Loans 
     WHERE Loans.BookID = Books.BookID) AS LoanCount
FROM Books;

-- Subquery in WHERE with IN
SELECT MemberName
FROM Members
WHERE MemberID IN (
    SELECT MemberID
    FROM Loans
    WHERE BookID IN (
        SELECT BookID
        FROM Books
        WHERE AuthorID = (
            SELECT AuthorID FROM Authors WHERE AuthorName = 'J.K. Rowling'
        )
    )
);

-- Correlated subquery in WHERE
SELECT Title
FROM Books b
WHERE NOT EXISTS (
    SELECT 1
    FROM Loans l
    WHERE l.BookID = b.BookID
);

-- Subquery in FROM (Derived Table)
SELECT Title, LoanCount
FROM (
    SELECT b.Title, COUNT(l.LoanID) AS LoanCount
    FROM Books b
    JOIN Loans l ON b.BookID = l.BookID
    GROUP BY b.Title
) AS BookLoanCounts
ORDER BY LoanCount DESC
LIMIT 1;

-- Subquery with Aggregate Filtering (HAVING)
SELECT AuthorName
FROM Authors
WHERE AuthorID IN (
    SELECT b.AuthorID
    FROM Books b
    JOIN Loans l ON b.BookID = l.BookID
    GROUP BY b.AuthorID
    HAVING COUNT(l.LoanID) > 5
);
