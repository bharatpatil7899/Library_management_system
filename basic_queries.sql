--Basic Queries

--Retrieve all books and authors available in the library.
SELECT * FROM Books; 
--and
SELECT * FROM Authors;


--Find all members who joined after January 1, 2024
SELECT * FROM Members 
WHERE JoinDate > '2024-01-01';


--Get the borrowing history of a specific member
SELECT * FROM Borrowing
WHERE MemberID = 1;


--List all books borrowed but not yet returned
SELECT * FROM Borrowing 
WHERE Status = 'Borrowed';


--Update the status of a borrowed book to 'Returned'
update borrowing set ReturnDate = '2024-06-21', Status='Returned'
where BorrowID=2;


--Delete a member record (if they no longer use the library)
DELETE FROM Members 
WHERE MemberID = 3;


--Increase available copies of a book when a copy is returned
UPDATE Books SET AvailableCopies = AvailableCopies + 1 WHERE BookID = 1;