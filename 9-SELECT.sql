CREATE DATABASE BookDB;

USE BookDB;

CREATE TABLE Books(
    BookID INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    PublicationYear YEAR NOT NULL
);

INSERT INTO Books (BookID, Title, Author, Genre, PublicationYear)
VALUES
(1, 'JoJo''s Bizarre Adventure - Jojolion', 'Hirohiko Araki', 'Action', '2020'),
(2, 'One Piece', 'Eiichiro Oda', 'Adventure', '1997'),
(3, 'Naruto', 'Masashi Kishimoto', 'Action', '1999'),
(4, 'Attack on Titan', 'Hajime Isayama', 'Fantasy', '2009'),
(5, 'Dragon Ball', 'Akira Toriyama', 'Action', '1984'),
(6, 'My Hero Academia', 'Kohei Horikoshi', 'Superhero', '2014'),
(7, 'Fullmetal Alchemist', 'Hiromu Arakawa', 'Fantasy', '2001'),
(8, 'Death Note', 'Tsugumi Ohba', 'Mystery', '2003'),
(9, 'Demon Slayer: Kimetsu no Yaiba', 'Koyoharu Gotouge', 'Dark Fantasy', '2016'),
(10, 'One Punch Man', 'ONE', 'Superhero', '2009');


SELECT * FROM Books
WHERE PublicationYear = '2020';

SELECT DISTINCT Genre FROM Books;

SELECT Author FROM Books as BookAuthor;

