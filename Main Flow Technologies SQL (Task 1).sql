-- TASK 1: 
-- Introduction to Databases
-- A database is an organized collection of data that allows for easy access, management, and updating.
-- Databases are important for storing and organizing data systematically to enable efficient retrieval and analysis.
-- SQL (Structured Query Language) is the standard language used for interacting with relational databases.

-- SQL Basics
-- SQL is used to manage and manipulate relational databases. 
-- It includes commands for querying, updating, and managing data and the structure of the database.
-- It is used to perform C(create), R(read), U(update), D(delete) operations.

-- SQL Syntax:
-- Statements usually begin with a keyword (e.g., CREATE, SELECT) and end with a semicolon (;).
-- Example structure: 
-- SELECT column_name FROM table_name WHERE condition;

-- Basic Elements of SQL
-- LITERALS
-- Literals in SQL refer to constant values that are explicitly written into a query.
-- These can be strings, numbers, or date values.
-- Examples: 1. Numeric Literal: SELECT 123;
-- 2. String Literal: SELECT 'Hello, World!';
-- 3. Date Literal: SELECT '2024-12-01';
-- Literals are used in SQL queries to represent fixed values for filtering, calculations, or conditions.

-- DATATYPES
-- SQL uses data types to define the type of data that can be stored in a column.
-- 1. Numeric Types:
--    - INT: Integer values (e.g., 1, 2, 100), DECIMAL(p, s) or NUMERIC(p, s): Fixed-point numbers with precision and scale
--    - FLOAT or DOUBLE: Approximate numerical values
-- 2. String Types:
--    - CHAR(n): Fixed-length string (e.g., 'Hello'), VARCHAR(n): Variable-length string (e.g., 'World')
--    - TEXT: Large text data
-- 3. Date and Time Types:
--    - DATE: Stores date values (e.g., '2023-09-01')
--    - DATETIME: Stores both date and time values (e.g., '2023-09-01 10:00:00')
--    - TIME: Stores time values (e.g., '10:00:00')
-- Choosing the correct data type is essential for efficient data storage and accurate queries.

-- NULLS
-- NULL represents missing, unknown, or undefined values in SQL.
-- Important Points:
-- 1. NULL is not the same as zero (0) or an empty string ('').
-- 2. Operations involving NULL generally return NULL (e.g., 10 + NULL = NULL).
-- 3. Use the IS NULL or IS NOT NULL condition to check for NULL values.
-- Example: SELECT * FROM TableName WHERE ColumnName IS NULL;
-- NULLs help in handling incomplete or missing data, but they can complicate data analysis.

-- COMMENTS
-- Comments in SQL are used to include explanatory notes in your code for better understanding.
-- SQL supports two types of comments:
-- 1. Single-Line Comments:
--    - Syntax: Use -- at the beginning of the line
--    - Example: -- This is a single-line comment
-- 2. Multi-Line Comments:
--    - Syntax: Use /* at the start and */ at the end
--    - Example: 
/*
This is a multi-line comment.
You can use it for detailed explanations.
*/
-- Comments are ignored by the SQL engine and do not affect the execution of queries.
-- They are essential for documenting code, making it easier to understand and maintain.

-- Creating a sample database and using it
CREATE DATABASE Sample;
USE Sample;

-- Data Definition Language (DDL)
-- DDL is a subset of SQL used to define or modify database structures.
-- Key commands in DDL:
-- 1. CREATE: Used to create new databases or database objects like tables.
-- CREATE Command
-- Creating the Student table
-- The table contains fields typically required for storing student data.

CREATE TABLE Student1 (
    StudentID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each student
    FirstName VARCHAR(50) NOT NULL,          -- First name of the student (mandatory)
    LastName VARCHAR(50),                    -- Last name of the student (optional)
    Age INT,                                 -- Age of the student
    Grade CHAR(2),                           -- Grades
    AdmissionDate DATE                       -- Date of admission
);

-- Inserting sample data into the Student table and also including some duplicate values too
INSERT INTO Student1 (FirstName, LastName, Age, Grade, AdmissionDate)
VALUES
('John', 'Doe', 15, 'A', '2023-09-01'),
('Jane', 'Doe', 16, 'B', '2022-08-15'),
('Alice', 'Smith', 15, 'A', '2023-09-01'),
('Bob', 'Brown', 17, 'C', '2021-07-10'),
('John', 'Doe', 15, 'A', '2023-09-01'),    
('Eve', 'Johnson', 16, 'B', '2022-08-15'), 
('Alice', 'Smith', 15, 'A', '2023-09-01'); 

-- Displaying all the data in the Student1 table using SELECT command
SELECT * FROM Student1;

 -- Displaying values of a single column present in student1 table
 SELECT FirstName FROM Student1;
 
 -- Displaying unique or distinct values present in grade column
 SELECT DISTINCT Grade FROM Student1;
 
 -- Displaying all the values from a single column present in student1 table including duplicates
 SELECT ALL Grade FROM Student1;
 
 -- 2. ALTER Command: Modifying the structure of an existing table
-- Adding a new column named Email to store student's email addresses
ALTER TABLE Student1
ADD Email VARCHAR(100);
SELECT * FROM Student1;

-- To increase the size of the FirstName column from 50 to 100 characters
ALTER TABLE Student1
MODIFY FirstName VARCHAR(100);
describe Student1;

-- To rename the LastName column to Surname
ALTER TABLE Student1
CHANGE LastName Surname VARCHAR(50);
SELECT * FROM Student1;

-- To remove the Grade column
ALTER TABLE Student1
DROP COLUMN Grade;
SELECT * FROM Student1;

-- To rename the Student1 table to Students:
ALTER TABLE Student1
RENAME TO Student;
SELECT * FROM Student;

-- 3. DROP: Used to delete database objects.
-- To delete the Email column from the Student table:
ALTER TABLE Student
DROP COLUMN Email;
SELECT * FROM Student;

-- To delete the Student table, including its structure and all data
DROP TABLE Student;

-- To delete the entire database SampleDB, including all its tables
DROP DATABASE Sample;
