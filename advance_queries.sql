--Advance Queries

--List all books with their respective authors
select books.Title, authors.Name as Author, books.Genre
from books
inner join authors on books.AuthorID = authors.AuthorID;



--Find the total number of books available in each genre
SELECT Genre, COUNT(*) AS TotalBooks 
FROM Books 
GROUP BY Genre;



--Find the total number of members in the library
SELECT COUNT(*) AS TotalMembers 
FROM Members;


--Retrieve books that have more than 3 available copies
SELECT * FROM Books 
WHERE AvailableCopies > 3;

--Or

select books.BookID, books.Title, authors.Name as Author, books.Genre
from books
inner join authors on books.AuthorID = authors.AuthorID
where books.AvailableCopies > 3;



--Find all members who have borrowed books but have pending fines
select members.FullName as Name, borrowing.BorrowID, fines.FineID, borrowing.BorrowDate, fines.Amount
from ((borrowing
inner join members on borrowing.MemberID = members.MemberID)
inner join fines on borrowing.BorrowID = fines.BorrowID)
where fines.PaidStatus = 'Pending';



--Find the most frequently borrowed book
SELECT Books.Title, COUNT(Borrowing.BookID) AS BorrowCount
FROM Borrowing
JOIN Books ON Borrowing.BookID = Books.BookID
GROUP BY Borrowing.BookID
ORDER BY BorrowCount DESC
LIMIT 1;



--Retrieve all books borrowed by a specific member
SELECT Books.Title, Borrowing.BorrowDate, Borrowing.ReturnDate
FROM Borrowing
JOIN Books ON Borrowing.BookID = Books.BookID
JOIN Members ON Borrowing.MemberID = Members.MemberID
WHERE Members.FullName = 'Alice Johnson';



--Find the members who have borrowed more than one book
SELECT Members.FullName, COUNT(Borrowing.BorrowID) AS BooksBorrowed
FROM Borrowing
JOIN Members ON Borrowing.MemberID = Members.MemberID
GROUP BY Members.MemberID
HAVING BooksBorrowed > 1;