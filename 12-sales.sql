-- Step 1: Create the database
CREATE DATABASE SalesDB;

-- Switch to the new database
USE SalesDB;

-- Step 2: Create the Sales table
CREATE TABLE Sales (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Category VARCHAR(50),
    QuantitySold INT,
    Revenue DECIMAL(10, 2)
);

-- Step 3: Insert sample data into the Sales table
INSERT INTO
    Sales (Category, QuantitySold, Revenue)
VALUES
    ('Electronics', 100, 20000.00),
    ('Electronics', 150, 30000.00),
    ('Clothing', 200, 10000.00),
    ('Clothing', 300, 15000.00),
    ('Furniture', 50, 25000.00),
    ('Furniture', 75, 37500.00),
    ('Books', 500, 5000.00),
    ('Books', 400, 4000.00),
    ('Sports', 250, 12500.00),
    ('Sports', 300, 15000.00);

-- Step 4: Calculate the total quantity sold and revenue for each product category
SELECT
    Category,
    SUM(QuantitySold) AS TotalQuantitySold,
    SUM(Revenue) AS TotalRevenue
FROM
    Sales
GROUP BY
    Category;

-- Step 5: Find the average revenue per unit sold for each product category
SELECT
    Category,
    AVG(Revenue / QuantitySold) AS AverageRevenuePerUnit
FROM
    Sales
GROUP BY
    Category;

-- Step 6: Identify the product categories with the highest total revenue
SELECT
    Category,
    SUM(Revenue) AS TotalRevenue
FROM
    Sales
GROUP BY
    Category
ORDER BY
    TotalRevenue DESC
LIMIT
    1;