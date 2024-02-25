-- Create a new database named 'BookDB'
CREATE DATABASE BookDB;

-- Switch to the 'BookDB' database
USE BookDB;

-- Create a table named 'Books' in the 'BookDB' database
CREATE TABLE Books(
    BookID INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    PublicationYear YEAR NOT NULL
);

-- Insert data into the 'Books' table
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

-- Select books published in the year 2020
SELECT * FROM Books
WHERE PublicationYear = '2020';

-- Select distinct genres from the 'Books' table
SELECT DISTINCT Genre FROM Books;

-- Select unique authors from the 'Books' table and alias the result as 'BookAuthor'
SELECT Author AS BookAuthor FROM Books ;
