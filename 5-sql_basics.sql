CREATE DATABASE StudentDB;
USE StudentDB;
CREATE TABLE Student(
	student_id VARCHAR(20) PRIMARY KEY,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	dob DATE,
	email VARCHAR(255)
);
