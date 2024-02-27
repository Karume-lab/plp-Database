-- Switch to the 'StudentDB' database
USE StudentDB;

-- Create a table named 'Student' with an auto-incremented 'studentID' as the primary key
CREATE TABLE Student(
    studentID INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(1)
);

-- Insert data into the 'Student' table with sample records
INSERT INTO Student (first_name, last_name, age, grade)
VALUES 
    ('John', 'Doe', 20, 'A'),
    ('Alice', 'Smith', 22, 'B'),
    ('Bob', 'Johnson', 26, 'C'),
    ('Emma', 'Williams', 23, 'A'),
    ('Michael', 'Davis', 19, 'B'),
    ('Sophie', 'Brown', 27, 'C'),
    ('Ryan', 'Taylor', 22, 'A'),
    ('Olivia', 'Miller', 30, 'B'),
    ('Daniel', 'Jones', 24, 'C'),
    ('Grace', 'White', 18, 'A');

-- Select names and ages of students older than 25, ordered by age in ascending order
SELECT CONCAT(first_name, " ", last_name) AS names, age
FROM Student
WHERE age > 25
ORDER BY age ASC;

-- Select names and grades of students with grades 'A' or 'B', ordered by grade in ascending order
SELECT CONCAT(first_name, " ", last_name) AS names, grade
FROM Student
WHERE grade = 'A' OR grade = 'B'
ORDER BY grade ASC;

-- Select ages of students older than 25, ordered by age in ascending order
SELECT age
FROM Student
WHERE age > 25
ORDER BY age ASC;
