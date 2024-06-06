-- Create the database
CREATE DATABASE EmployeesDB;

-- Use the database
USE EmployeesDB;

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    BonusPercentage DECIMAL(5, 2)
);

-- Insert sample data into the Employees table
INSERT INTO Employees (FirstName, LastName, Salary, BonusPercentage)
VALUES
    ('John', 'Doe', 75000, 10),
    ('Jane', 'Smith', 80000, 15),
    ('Alice', 'Johnson', 60000, 5),
    ('Bob', 'Brown', 50000, 8),
    ('Carol', 'Davis', 45000, 12),
    ('Dave', 'Miller', 90000, 10),
    ('Eve', 'Wilson', 30000, 20),
    ('Frank', 'Taylor', 40000, 10),
    ('Grace', 'Anderson', 85000, 12),
    ('Hank', 'Thomas', 70000, 5);

-- Task 1: Add the TotalCompensation column using a SELECT statement with a CASE expression
SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    BonusPercentage,
    Salary + (Salary * BonusPercentage / 100) AS TotalCompensation
FROM Employees;

-- Task 2: Identify employees with Total Compensation greater than $80,000
SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    BonusPercentage,
    Salary + (Salary * BonusPercentage / 100) AS TotalCompensation
FROM Employees
HAVING TotalCompensation > 80000;

-- Task 3: Update the FirstName of employees with Total Compensation less than $60,000 to 'LowCompensation'
UPDATE Employees
SET FirstName = 'LowCompensation'
WHERE Salary + (Salary * BonusPercentage / 100) < 60000;
