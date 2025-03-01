/* This database contains five tables called authors, books, members, borrowing, and fines. */

create table Authors(
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100)
    );

create table Books(
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(180),
    AuthorID INT,
    Genre VARCHAR(50),
    PublishedYear INT,
    AvailableCopies INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
    );

create table Members(
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(60) UNIQUE,
    JoinDate DATE
    );

create table Borrowing(
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    Status ENUM('Borrowed','Returned'),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
    );

CREATE TABLE Fines (
    FineID INT AUTO_INCREMENT PRIMARY KEY,
    BorrowID INT,
    Amount DECIMAL(10,2),
    PaidStatus ENUM('Pending', 'Paid'),
    FOREIGN KEY (BorrowID) REFERENCES Borrowing(BorrowID)
);