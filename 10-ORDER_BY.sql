-- Switch to the 'BookDB' database
USE BookDB;
-- Select all columns from the 'Books' table and order the result by 'Title' in ascending order,
-- then by 'BookID' in ascending order
SELECT *
FROM Books
ORDER BY Title ASC,
BookID ASC;
