-- Create the Employees table
CREATE DATABASE EmployeesII;

USE EmployeesII;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert sample data into the Employees table
INSERT INTO
    Employees (EmployeeID, FirstName, LastName, DepartmentID)
VALUES
    (1, 'John', 'Doe', 1),
    (2, 'Jane', 'Smith', 2),
    (3, 'Michael', 'Johnson', 1),
    (4, 'Emily', 'Brown', NULL),
    (5, 'Robert', 'Jones', 2);

-- Create the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert sample data into the Departments table
INSERT INTO
    Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'Engineering'),
    (2, 'Marketing'),
    (3, 'Finance');

-- Create the Salaries table
CREATE TABLE Salaries (
    EmployeeID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert sample data into the Salaries table
INSERT INTO
    Salaries (EmployeeID, Salary)
VALUES
    (1, 60000.00),
    (2, 55000.00),
    (3, 65000.00),
    (4, 50000.00),
    (5, 58000.00);

-- Retrieve a list of employees with their corresponding department names using an appropriate join
SELECT
    Employees.FirstName,
    Employees.LastName,
    Departments.DepartmentName
FROM
    Employees
    LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- Calculate the average salary for each department
SELECT
    Departments.DepartmentName,
    AVG(Salaries.Salary) AS AverageSalary
FROM
    Departments
    LEFT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
    LEFT JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID
GROUP BY
    Departments.DepartmentName;

-- Identify employees who do not belong to any department
SELECT
    EmployeeID,
    FirstName,
    LastName
FROM
    Employees
WHERE
    DepartmentID IS NULL;