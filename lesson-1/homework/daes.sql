Easy
1. Data - is raw facts or information that can be recorded and processed by a computer.
It can be numbers, text, images, audio, or any kind of input that represents something meaningful.
  
2. 1) Data Storage and Management
   2) Security and Authentication
   3) High Availability and Disaster Recovery (HA/DR)
   4) Business Intelligence (BI) and Data Analysis
   5) Performance Optimization
  
3. 1) Windows Authentication Mode
Uses the Windows user account to connect to SQL Server.
Login credentials are verified by the Windows operating system.
Considered more secure, since it uses integrated security (no need to store passwords in SQL Server).
  2) SQL Server Authentication Mode
Uses a login and password that are created and stored inside SQL Server
The user must provide these credentials when connecting.
Useful when users are not part of a Windows domain (e.g., web apps or remote users).

Medium
  
4. Steps
  1) Open SQL Server Management Studio (SSMS).
  2) Connect to your SQL Server instance.
  3) Click on “New Query”.
  4) Paste the above SQL command - CREATE DATABASE SchoolDB;.
  5) Click Execute.
    
5. Steps
    1) CREATE DATABASE SchoolDB;
    2) USE SchoolDB;
    3) CREATE TABLE Students (
    StudentID INT PRIMARY KEY, Name VARCHAR(50), Age INT);

6.  1) SQL (Structured Query Language) -SQL is a programming language used to communicate with databases — to create, read, update, and delete data (often called CRUD operations).
    2) SQL Server -SQL Server is a database management system (DBMS) created by Microsoft.
    It’s the software that stores, manages, and secures data, and executes SQL commands.
    3)SSMS (SQL Server Management Studio) -SSMS is a graphical tool (interface) provided by Microsoft to connect to SQL Server, run SQL queries, and manage databases visually.

  Hard

7. 
1) DQL – Data Query Language
Purpose:
Used to retrieve data from the database.
Main Command:
SELECT – extracts data from one or more tables.
Example: SELECT * FROM Students; 

2) DML – Data Manipulation Language
Purpose:
Used to manipulate data stored in database tables — to insert, update, or delete data.
Main Commands:
INSERT – add new records
UPDATE – modify existing record
DELETE – remove records
Examples: 
INSERT INTO Students (Name, Age) VALUES ('Ali', 20);
UPDATE Students SET Age = 21 WHERE Name = 'Ali';
DELETE FROM Students WHERE Name = 'Ali';

3) DDL – Data Definition Language
Purpose:
Used to define and manage the structure of the database — like tables, schemas, or indexes.
Main Commands:
CREATE – create a new table or database
ALTER – modify an existing table structure
DROP – delete a table or database
Examples: 
CREATE TABLE Students (StudentID INT, Name VARCHAR(50), Age INT);
ALTER TABLE Students ADD Grade VARCHAR(10);
DROP TABLE Students;

4) DCL – Data Control Language
Purpose:
Used to control access to data in the database (security and permissions).
Main Commands:
GRANT – give permission to users
REVOKE – take back permissions
Examples:
GRANT SELECT ON Students TO User1;
REVOKE SELECT ON Students FROM User1;

5) TCL – Transaction Control Language
Purpose:
Used to manage transactions in the database. A transaction is a group of SQL operations that are executed together.
Main Commands:
COMMIT – save changes
ROLLBACK – undo changes
SAVEPOINT – create a point to which you can roll back
Examples:
BEGIN TRANSACTION;
UPDATE Students SET Age = 25 WHERE StudentID = 1;
COMMIT;  -- saves changes permanently
-- or, if something goes wrong:
ROLLBACK;  -- undo changes

8. INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20),(2, 'Malika', 22),(3, 'Jasur', 19);

9. Steps
1) Open C Drive (C:)
2) Open Program Files → Microsoft SQL Server.
3) Go to your server folder, e.g.
C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup
4) Copy and paste the AdventureWorksDW2022.bak file into the Backup folder.
5) Open SQL Server Management Studio (SSMS) and connect to your server.
6) Right-click Databases → Restore Database 
7) Choose Device → Browse → Add, then select the AdventureWorksDW2022.bak file from the Backup folder.
8) Click OK, check Restore with Recovery, and click OK again to start.
9) Wait until the message appears:
 “Database 'AdventureWorksDW2022' restored successfully.”
10)Expand Databases to verify the restored database.
