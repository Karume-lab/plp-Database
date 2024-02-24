-- DANIEL KARUME

-- Create a new database named 'UniversityDB'
CREATE DATABASE UniversityDB;

-- Switch to the 'UniversityDB' database
USE UniversityDB;

-- Create a table named 'Students' in the 'UniversityDB' database
CREATE TABLE Students(
    -- Define primary key 'StudentID' with INT data type
    StudentID INT PRIMARY KEY NOT NULL,
    
    -- Define 'FirstName' column with VARCHAR data type and a maximum length of 50
    FirstName VARCHAR(50) NOT NULL,
    
    -- Define 'LastName' column with VARCHAR data type and a maximum length of 50
    LastName VARCHAR(50) NOT NULL,
    
    -- Define 'Age' column with INT data type
    Age INT NOT NULL,
    
    -- Define 'Major' column with VARCHAR data type and a maximum length of 50
    Major VARCHAR(50)
);

-- Insert data into the 'Students' table
INSERT INTO Students
VALUES
(1, "Daniel", "Karume", 20, "Computer Science"),
(2, "Tom", "Smith", 19, "Engineering"),
(3, "Shelby", "Martins", 25, "Information Technology"),
(4, "Hasan", "Hussein", 20, "Electronics"),
(5, "John", "Juma", 18, "Food Engineering"),
(6, "Emma", "Watson", 22, "Chemistry"),
(7, "Alex", "Johnson", 21, "Mechanical Engineering"),
(8, "Grace", "Mwangi", 23, "Physics"),
(9, "Ryan", "Kim", 19, "Biotechnology"),
(10, "Sophie", "Omar", 24, "Mathematics");

-- Add the 'gpa' column to the 'Students' table
ALTER TABLE Students ADD gpa DECIMAL(2,1);

-- Rename the 'Students' table to 'EnrolledStudents'
ALTER TABLE Students RENAME TO EnrolledStudents;

-- Create a table named 'Courses' in the 'UniversityDB' database
CREATE TABLE Courses(
    -- Define primary key 'CourseID' with INT data type
    CourseID INT PRIMARY KEY NOT NULL,
    
    -- Define 'CourseName' column with VARCHAR data type and a maximum length of 100
    CourseName VARCHAR(100) NOT NULL,
    
    -- Define 'Instructor' column with VARCHAR data type and a maximum length of 100
    Instructor VARCHAR(100) NOT NULL,
    
    -- Define 'Credits' column with INT data type
    Credits INT
);

-- Insert data into the 'Courses' table
INSERT INTO Courses
VALUES
(1, "Computer Science 101", "Prof. Anderson", 3),
(2, "Mechanical Engineering Fundamentals", "Dr. Smith", 4),
(3, "Data Structures and Algorithms", "Dr. Johnson", 3),
(4, "Chemistry for Beginners", "Prof. Williams", 2),
(5, "Mathematics in Action", "Dr. Davis", 4);
-- Drop the 'EnrolledStudents' table
DROP TABLE EnrolledStudents;
