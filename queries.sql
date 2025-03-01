--Add a column to an existing table i.e, Authors
Alter table Authors
ADD COLUMN Nationality VARCHAR(50)  AFTER Name;



--To view the table
DESC Authors;
--Or
SHOW COLUMNS FROM Authors;



--To reterive the data from the table
SELECT * FROM Authors;



--Make sure the borrow date column is not null (but return date column can be null)
ALTER TABLE Borrowing
MODIFY COLUMN BorrowDate DATE NOT NULL;