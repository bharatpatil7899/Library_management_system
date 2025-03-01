--Inserting the data into the table Authors
INSERT INTO Authors (Name,Nationality) VALUES
    ('George Orwell','British'),
    ('Harper Lee','American'),
    ('F. Scott Fitzgerald','American'),
    ('Jane Austen','British'),
    ('Herman Melville','American'),
    ('Fyodor Dostoevsky','Russian'),
    ('J.D. Salinger','American'),
    ('Gabriel García Márquez','Colombian'),
    ('Leo Tolstoy','Russian'),
    ('Arundhati Roy','Indian'),
    ('R.K. Narayan','Indian'),
    ('Khaled Hosseini','Afghan-American'),
    ('Yann Martel','Canadian'),
    ('Hermann Hesse','German-Swiss'),
    ('Rabindranath Tagore','Indian'),
    ('Vikram Seth','Indian'),
    ('Kiran Desai','Indian'),
    ('Jhumpa Lahiri','Indian');

--Inserting the data into table Books
INSERT INTO Books (Title, AuthorID, Genre, PublishedYear, AVailableCopies) VALUES
     ('1984',1,'Dystopian, Political Fiction',1949,6),
    ('To Kill a Mockingbird',2,'Southern Gothic, Coming-of-Age',1960,4),
    ('The Great Gatsby',3,'Tragedy, Historical Fiction',1925,3),
    ('Pride and Prejudice',4,'Romance, Satire',1813,6),
    ('Moby-Dick',5,'Adventure, Classic',1851,7),
     ('Crime and Punishment',6,'Psychological Fiction',1866,4),
     ('The Catcher in the Rye',7,'Coming-of-Age, Fiction',1951,2),
    ('One Hundred Years of Solitude',8,'Magical Realism',1967,3),
     ('War and Peace',9,'Historical Fiction',1869,5),
     ('The God of Small Things',10,'Fiction, Social Issues',1997,5),
     ('Malgudi Days',11,'Short Stories, Fiction',193,10),
     ('The Kite Runner',12,'Historical Fiction, Drama',2003,12),
     ('Life of Pi',13,'Adventure, Philosophical',2001,15),
     ('Siddhartha',14,'Philosophical, Spirituality',1922,20),
     ('Gitanjali',15,'Poetry, Spirituality',1912,5),
     ('A Suitable Boy',16,'Family Saga, Romance',1993,20),
     ('The Inheritance of Loss',17,'Fiction, Postcolonial Literature',2006,15),
     ('Interpreter of Maladies',18,'Fiction, Postcolonial Literature',2006,20);

--Inserting the data into the table Borrowing
INSERT INTO Borrowing (MemberID, BookID, BorrowDate, ReturnDate, Status) VALUES
    (2,10,'2024-07-12','2024-07-22','Returned'),
    (1,5,'2024-06-01',NULL,'Borrowed'),
    (4,12,'2024-02-14','2024-02-24','Returned'),
    (3,7,'2024-01-02',NULL,'Borrowed'),
    (9,18,'2024-03-13','2024-03-27','Returned');