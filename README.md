# SQL Fundamentals Task  

This repository highlights my SQL task completed during the internship at Main Flow Services and Technologies.  

## Key Concepts Covered  
- **Literals**:
- Literals in SQL are fixed values that are directly written into the query. These values represent data in a constant form and can be of different types, such as numbers, strings, or dates. For example, a numeric literal could be a number like 100, a string literal could be a text like 'John Doe', and a date literal could be '2024-12-01'. These literals are used to define the values you want to insert into tables, filter results, or perform calculations within SQL queries.

- **Datatypes**:
Datatypes in SQL define the type of data that can be stored in a column. Each column in a table has a datatype that determines the kind of values it can hold, ensuring that the data is stored in the correct format. Common datatypes include:
- Numeric: Such as INT, DECIMAL, and FLOAT for storing numbers.
- String: Such as VARCHAR and TEXT for storing text-based values.
- Date/Time: Such as DATE, DATETIME, and TIME for storing date and time information.
- The correct choice of datatype is critical for performance, accuracy, and storage efficiency when managing large datasets.

- **Nulls**:
A NULL value in SQL represents missing, undefined, or unknown data. It’s important to note that NULL is different from an empty string or zero value. In SQL, operations involving NULL generally result in NULL (e.g., 10 + NULL = NULL). You can check for NULL values in queries using IS NULL or IS NOT NULL. Proper handling of NULL is crucial when working with incomplete data and ensures that queries return accurate results despite missing values.

- **Comments**:
Comments in SQL are used to document your code and provide explanations for yourself or other developers. These comments are ignored during query execution, allowing you to add notes, reminders, or clarifications within your SQL scripts. SQL supports two types of comments:
- Single-line comments: Indicated by --. These are used for brief notes or explanations on a single line.
- Multi-line comments: Indicated by /* */. These are used for longer explanations that span multiple lines. Using comments effectively helps in maintaining the readability and clarity of - SQL scripts, especially in complex queries or when collaborating with teams.

- **DDL Commands (Data Definition Language)**:
DDL commands in SQL are used to define and manage database structures. These commands allow you to create, modify, and delete tables and other database objects. Some of the key DDL commands include:
- CREATE: Used to create new tables, views, indexes, or databases.
- ALTER: Used to modify existing database objects, such as adding or modifying columns in a table.
- DROP: Used to delete database objects, such as removing a table or view. DDL commands are essential for managing the structure of a database and ensuring it is set up correctly for data storage and analysis.

## Folder Structure  
- **/scripts**: Contains SQL scripts used for the task.  
- **/screenshots**: Includes screenshots of queries and results.  

## Sample Table  
The `Student` table was created to demonstrate SQL operations.  
Fields include `StudentID`, `FirstName`, `LastName`, `Age`, `Grade`, and more, along with sample data (including duplicates).  
