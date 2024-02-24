-- Create a new database named 'StudentDB'
CREATE DATABASE StudentDB;
-- Switch to the 'StudentDB' database
USE StudentDB;
-- Create a table named 'Student' in the 'StudentDB' database
CREATE TABLE Student(
	-- Define a primary key 'student_id' with VARCHAR data type and a maximum length of 20
	student_id VARCHAR(20) PRIMARY KEY,
	-- Define 'first_name' column with VARCHAR data type and a maximum length of 40
	first_name VARCHAR(40),
	-- Define 'last_name' column with VARCHAR data type and a maximum length of 40
	last_name VARCHAR(40),
	-- Define 'dob' column with DATE data type for date of birth
	dob DATE,
	-- Define 'email' column with VARCHAR data type and a maximum length of 255
	email VARCHAR(255)
);
