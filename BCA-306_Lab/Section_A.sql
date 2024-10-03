-- Course Objective:
-- ● Understand the basic concepts and the applications of database systems.
-- ● Learn the basics of SQL and construct queries using MySQL.
-- ● Understand the relational database design and different types of key constraints.
-- ● Applying advanced query, joining tables using joins and using subqueries.
-- ● Learn the basics of SQL Queries using Functions, Procedures and Triggers.
-- List of Practicals


-- 1. Database Creation and Table Design
-- ● Task: Create a database named "Employee_Record".
    CREATE DATABASE Employee_Record;
    use Employee_Record;
-- ● Tables:
-- ○ Emp_1: Emp_Id, Emp_Name, Department, Designation, Contact_No, Email, Qualification.
-- ○ Emp_2: Emp_Id, Father_Name, Mother_Name, DOB, Address.
-- ○ Emp_3: Emp_Id, Emp_DOJ, Basic_Salary, Emp_TA_DA.
-- ○ Emp_4: Empty Table.

-- Creating Emp_1 table
CREATE TABLE Emp_1 (
    Emp_Id INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Department VARCHAR(50),
    Designation VARCHAR(50),
    Contact_No VARCHAR(15),
    Email VARCHAR(100),
    Qualification VARCHAR(50)
);

-- Creating Emp_2 table
CREATE TABLE Emp_2 (
    Emp_Id INT PRIMARY KEY,
    Father_Name VARCHAR(100),
    Mother_Name VARCHAR(100),
    DOB DATE,
    Address VARCHAR(255)
);

-- Creating Emp_3 table
CREATE TABLE Emp_3 (
    Emp_Id INT PRIMARY KEY,
    Emp_DOJ DATE,
    Basic_Salary DECIMAL(10, 2),
    Emp_TA_DA DECIMAL(10, 2)
);

-- Creating Emp_4 table as an empty table
CREATE TABLE Emp_4 (
    -- Define columns later as per requirements; currently empty
);



-- 2. Data Manipulation
-- ● Insert: Populate the Emp_1 table with at least 15 records, Emp_2 with 10 records, and Emp_3 with 20 records.
    -- Insert at least 15 records into Emp_1 table
INSERT INTO Emp_1 (Emp_Id, Emp_Name, Department, Designation, Contact_No, Email, Qualification)
VALUES
(1, 'John Doe', 'IT', 'Developer', '1234567890', 'john.doe@example.com', 'B.Tech'),
(2, 'Jane Smith', 'HR', 'HR Manager', '2345678901', 'jane.smith@example.com', 'MBA'),
(3, 'Mike Johnson', 'Finance', 'Accountant', '3456789012', 'mike.johnson@example.com', 'M.Com'),
(4, 'Emily Davis', 'IT', 'Developer', '4567890123', 'emily.davis@example.com', 'B.Tech'),
(5, 'David Wilson', 'Marketing', 'Marketing Manager', '5678901234', 'david.wilson@example.com', 'MBA'),
(6, 'Sophia Brown', 'Sales', 'Sales Executive', '6789012345', 'sophia.brown@example.com', 'BBA'),
(7, 'Chris Jones', 'Finance', 'Financial Analyst', '7890123456', 'chris.jones@example.com', 'M.Com'),
(8, 'Laura Garcia', 'IT', 'System Analyst', '8901234567', 'laura.garcia@example.com', 'MCA'),
(9, 'Robert Martinez', 'HR', 'HR Executive', '9012345678', 'robert.martinez@example.com', 'MBA'),
(10, 'Olivia Rodriguez', 'IT', 'Developer', '1122334455', 'olivia.rodriguez@example.com', 'B.Tech'),
(11, 'William Hernandez', 'Sales', 'Sales Manager', '2233445566', 'william.hernandez@example.com', 'MBA'),
(12, 'Emma Moore', 'Marketing', 'Content Writer', '3344556677', 'emma.moore@example.com', 'BA'),
(13, 'James Taylor', 'IT', 'Network Engineer', '4455667788', 'james.taylor@example.com', 'B.Tech'),
(14, 'Linda Anderson', 'Finance', 'Financial Consultant', '5566778899', 'linda.anderson@example.com', 'M.Com'),
(15, 'Daniel Thomas', 'IT', 'Security Analyst', '6677889900', 'daniel.thomas@example.com', 'B.Tech');

-- Insert at least 10 records into Emp_2 table
INSERT INTO Emp_2 (Emp_Id, Father_Name, Mother_Name, DOB, Address)
VALUES
(1, 'Michael Doe', 'Susan Doe', '1980-01-15', '123 Main St'),
(2, 'Robert Smith', 'Karen Smith', '1985-04-20', '456 Elm St'),
(3, 'David Johnson', 'Jennifer Johnson', '1990-07-12', '789 Oak St'),
(4, 'Christopher Davis', 'Mary Davis', '1982-11-05', '101 Pine St'),
(5, 'William Wilson', 'Linda Wilson', '1993-02-22', '202 Maple St'),
(6, 'Richard Brown', 'Patricia Brown', '1987-09-14', '303 Cedar St'),
(7, 'Joseph Jones', 'Barbara Jones', '1981-05-19', '404 Birch St'),
(8, 'Charles Garcia', 'Nancy Garcia', '1988-08-27', '505 Spruce St'),
(9, 'Thomas Martinez', 'Betty Martinez', '1995-03-03', '606 Redwood St'),
(10, 'Matthew Rodriguez', 'Sandra Rodriguez', '1991-12-09', '707 Fir St');

-- Insert at least 20 records into Emp_3 table
INSERT INTO Emp_3 (Emp_Id, Emp_DOJ, Basic_Salary, Emp_TA_DA)
VALUES
(1, '2010-05-15', 30000, 5000),
(2, '2012-03-12', 25000, 4000),
(3, '2015-07-19', 28000, 4500),
(4, '2011-09-23', 27000, 4700),
(5, '2016-02-10', 26000, 4200),
(6, '2013-06-30', 31000, 5500),
(7, '2017-11-05', 29000, 4800),
(8, '2014-01-18', 32000, 5600),
(9, '2010-04-29', 33000, 5800),
(10, '2011-08-15', 29500, 4900),
(11, '2013-10-11', 27500, 4600),
(12, '2012-07-22', 26000, 4300),
(13, '2015-12-08', 34000, 5900),
(14, '2016-03-04', 35000, 6000),
(15, '2011-05-20', 26500, 4500),
(16, '2014-02-28', 28500, 4800),
(17, '2010-07-16', 25500, 4400),
(18, '2017-01-25', 30000, 5100),
(19, '2013-09-07', 31000, 5300),
(20, '2016-12-01', 29500, 5000);


-- ● Update: Change the column name Emp_DOJ to Joining_Date.
-- Rename the Emp_DOJ column to Joining_Date in Emp_3 table
ALTER TABLE Emp_3 
CHANGE COLUMN Emp_DOJ Joining_Date DATE;


-- ● Delete: Remove the enrollment records of students whose Basic_Salary is less than 25K.
-- Delete records from Emp_3 where Basic_Salary is less than 25,000
DELETE FROM Emp_3 
WHERE Basic_Salary < 25000;


-- ● Alter:
-- ○ Add a column Monthly_Salary, Yearly_Salary in the Emp_3 table.
-- Add Monthly_Salary and Yearly_Salary columns to Emp_3 table
ALTER TABLE Emp_3 
ADD COLUMN Monthly_Salary DECIMAL(10, 2),
ADD COLUMN Yearly_Salary DECIMAL(10, 2);


-- ● Drop the Emp_4 table.
-- Drop the Emp_4 table
DROP TABLE Emp_4;




-- 3. Constraints and Keys
-- ● Primary Key: Apply on Emp_Id column.
-- Alter Emp_1 to add Primary Key on Emp_Id
ALTER TABLE Emp_1 
ADD PRIMARY KEY (Emp_Id);

-- Alter Emp_2 to add Primary Key on Emp_Id
ALTER TABLE Emp_2 
ADD PRIMARY KEY (Emp_Id);

-- Alter Emp_3 to add Primary Key on Emp_Id
ALTER TABLE Emp_3 
ADD PRIMARY KEY (Emp_Id);

-- ● Unique Key: Ensure Contact_No and Email in Emp_1 is unique.
-- Add Unique constraints on Contact_No and Email in Emp_1
ALTER TABLE Emp_1 
ADD UNIQUE (Contact_No),
ADD UNIQUE (Email);

-- ● Not Null: Apply on Qualification, Department, and Designation.
-- Alter Emp_1 to make Qualification, Department, and Designation Not Null
ALTER TABLE Emp_1 
MODIFY Qualification VARCHAR(50) NOT NULL,
MODIFY Department VARCHAR(50) NOT NULL,
MODIFY Designation VARCHAR(50) NOT NULL;

-- ● Foreign Key:
-- ○ Link Emp_Id in Emp_1 to Emp_Id in Emp_2.
-- Add Foreign Key constraint linking Emp_Id in Emp_1 to Emp_Id in Emp_2
ALTER TABLE Emp_1 
ADD CONSTRAINT fk_emp_id 
FOREIGN KEY (Emp_Id) REFERENCES Emp_2(Emp_Id);

-- ● Check Constraint: Ensure that Basic_Salary in Emp_3 shouldn’t be greater than 50K.
-- Add Check constraint on Basic_Salary in Emp_3
ALTER TABLE Emp_3 
ADD CONSTRAINT chk_basic_salary 
CHECK (Basic_Salary <= 50000);



-- 4. Advanced Query Operations
-- ● Order By: List all employees ordered by Emp_Id.
-- List all employees ordered by Emp_Id
SELECT * 
FROM Emp_1 
ORDER BY Emp_Id;

-- ● Group By: Calculate the average salary from table and Group By department.
-- Calculate the average salary from Emp_3 and group by department from Emp_1
SELECT e1.Department, AVG(e3.Basic_Salary) AS Average_Salary
FROM Emp_1 e1
JOIN Emp_3 e3 ON e1.Emp_Id = e3.Emp_Id
GROUP BY e1.Department;

-- ● Having: Identify departments having Designation as Associate Professor.
-- Identify departments having Designation as Associate Professor
SELECT Department
FROM Emp_1
WHERE Designation = 'Associate Professor'
GROUP BY Department
HAVING COUNT(*) > 0;



-- 5. Using SQL Operators
-- ● IN: List employees who belong to the "Engineering" or "Business" departments.
-- List employees who belong to the "Engineering" or "Business" departments
SELECT * 
FROM Emp_1 
WHERE Department IN ('Engineering', 'Business');

-- ● BETWEEN: Find employees with basic_salary between 20K and 50K.
-- Find employees with Basic_Salary between 20K and 50K
SELECT * 
FROM Emp_3 
WHERE Basic_Salary BETWEEN 20000 AND 50000;

-- ● Concatenation: Display the full names of employees by combining their first and last names.
-- Assuming First_Name and Last_Name exist in Emp_1 table
-- Display full names by combining First_Name and Last_Name
SELECT CONCAT(Emp_Name, ' ', Last_Name) AS Full_Name 
FROM Emp_1;

-- ● LIKE: Find employees whose names start with 'S’.
-- Find employees whose names start with 'S'
SELECT * 
FROM Emp_1 
WHERE Emp_Name LIKE 'S%';



-- 6. Views
-- ● Create a View:
-- Create a view to display employee names, DOB, and address for employees living in North India
CREATE VIEW View_North_India_Employees AS
SELECT e1.Emp_Name, e2.DOB, e2.Address
FROM Emp_1 e1
JOIN Emp_2 e2 ON e1.Emp_Id = e2.Emp_Id
WHERE e2.Address LIKE '%Delhi%' 
   OR e2.Address LIKE '%Haryana%' 
   OR e2.Address LIKE '%Punjab%' 
   OR e2.Address LIKE '%Uttar Pradesh%' 
   OR e2.Address LIKE '%Rajasthan%' 
   OR e2.Address LIKE '%Uttarakhand%';

-- ○ Display employee names, DOB, and address.
-- Modify the view to include the employee’s country
ALTER VIEW View_North_India_Employees AS
SELECT e1.Emp_Name, e2.DOB, e2.Address, 'India' AS Country
FROM Emp_1 e1
JOIN Emp_2 e2 ON e1.Emp_Id = e2.Emp_Id
WHERE e2.Address LIKE '%Delhi%' 
   OR e2.Address LIKE '%Haryana%' 
   OR e2.Address LIKE '%Punjab%' 
   OR e2.Address LIKE '%Uttar Pradesh%' 
   OR e2.Address LIKE '%Rajasthan%' 
   OR e2.Address LIKE '%Uttarakhand%';

-- ○ Filter the view to include only employees living in North India.
-- Drop the view when no longer needed
DROP VIEW IF EXISTS View_North_India_Employees;

-- ● Update View: Modify the view to also include the employee’s Country.

-- ● Drop View: Remove the view when it is no longer needed.


-- 7. Join Operations
-- ● Inner Join: List all employees along with their father name and mother name that have matching values in Emp_1 and Emp_2 table.
-- Inner Join: List all employees along with their father and mother names
SELECT e1.Emp_Name, e2.Father_Name, e2.Mother_Name
FROM Emp_1 e1
INNER JOIN Emp_2 e2 ON e1.Emp_Id = e2.Emp_Id;

-- ● Left Outer Join: Return all records from the Emp_1 table, and the matched records from the Emp_2 table.
-- Left Outer Join: Return all records from Emp_1, and matched records from Emp_2
SELECT e1.Emp_Id, e1.Emp_Name, e1.Department, e2.Father_Name, e2.Mother_Name
FROM Emp_1 e1
LEFT JOIN Emp_2 e2 ON e1.Emp_Id = e2.Emp_Id;

-- ● Right Outer Join: Return all records from the Emp_3 table, and the matched records from the Emp_2 table.
-- Right Outer Join: Return all records from Emp_3, and matched records from Emp_2
SELECT e3.Emp_Id, e3.Basic_Salary, e3.Emp_TA_DA, e2.Father_Name, e2.Mother_Name
FROM Emp_3 e3
RIGHT JOIN Emp_2 e2 ON e3.Emp_Id = e2.Emp_Id;

-- ● Full Outer Join: Return all records when there is a match in either Emp_1 or Emp_2 table records.
-- Full Outer Join: Return all records with a match in either Emp_1 or Emp_2
SELECT e1.Emp_Id, e1.Emp_Name, e1.Department, e2.Father_Name, e2.Mother_Name
FROM Emp_1 e1
LEFT JOIN Emp_2 e2 ON e1.Emp_Id = e2.Emp_Id

UNION

SELECT e1.Emp_Id, e1.Emp_Name, e1.Department, e2.Father_Name, e2.Mother_Name
FROM Emp_1 e1
RIGHT JOIN Emp_2 e2 ON e1.Emp_Id = e2.Emp_Id;

-- ● Self Join: Identify employees who share the same address.
-- Self Join: Identify employees who share the same address
SELECT e1.Emp_Id AS Emp1_Id, e1.Father_Name AS Emp1_Father_Name, e1.Mother_Name AS Emp1_Mother_Name, 
       e2.Emp_Id AS Emp2_Id, e2.Father_Name AS Emp2_Father_Name, e2.Mother_Name AS Emp2_Mother_Name, 
       e1.Address
FROM Emp_2 e1
JOIN Emp_2 e2 ON e1.Address = e2.Address 
              AND e1.Emp_Id <> e2.Emp_Id;



-- 8. Aggregation and Subqueries
-- ● Aggregation:
-- ○ Calculate the average salary of all employees.
-- Calculate the average salary of all employees
SELECT AVG(Basic_Salary) AS Average_Salary
FROM Emp_3;

-- ○ List the names of employees having minimum and maximum salary.
-- Find the minimum and maximum salary from Emp_3
SELECT e1.Emp_Name, e3.Basic_Salary
FROM Emp_1 e1
JOIN Emp_3 e3 ON e1.Emp_Id = e3.Emp_Id
WHERE e3.Basic_Salary = (SELECT MIN(Basic_Salary) FROM Emp_3)
   OR e3.Basic_Salary = (SELECT MAX(Basic_Salary) FROM Emp_3);

-- ● Subqueries:
-- a. Find employees who earn more than the average salary.
-- Find employees who earn more than the average salary
SELECT e1.Emp_Name, e3.Basic_Salary
FROM Emp_1 e1
JOIN Emp_3 e3 ON e1.Emp_Id = e3.Emp_Id
WHERE e3.Basic_Salary > (SELECT AVG(Basic_Salary) FROM Emp_3);

-- b. Find employees who work in departments located in a specific city.
-- Find employees who work in departments located in a specific city (e.g., 'Delhi')
SELECT e1.Emp_Name, e1.Department, e2.Address
FROM Emp_1 e1
JOIN Emp_2 e2 ON e1.Emp_Id = e2.Emp_Id
WHERE e2.Address LIKE '%Delhi%';  -- Replace 'Delhi' with the specific city you are searching for



-- 9. Stored Procedures
-- ● Create a Stored Procedure that will retrieve details of an employee based on their EmployeeID.
-- Create a stored procedure to retrieve details of an employee based on EmployeeID
DELIMITER //

CREATE PROCEDURE GetEmployeeDetails(IN empId INT)
BEGIN
    SELECT e1.Emp_Id, e1.Emp_Name, e1.Department, e2.Father_Name, e2.Mother_Name, e2.DOB, e2.Address, e3.Basic_Salary, e3.Emp_TA_DA
    FROM Emp_1 e1
    JOIN Emp_2 e2 ON e1.Emp_Id = e2.Emp_Id
    JOIN Emp_3 e3 ON e1.Emp_Id = e3.Emp_Id
    WHERE e1.Emp_Id = empId;
END //

DELIMITER ;

-- ● Execute the stored procedure and get the details of an employee with a specific EmployeeID.
-- Execute the stored procedure with a specific EmployeeID (e.g., 101)
CALL GetEmployeeDetails(101);



-- 10.Transaction Management and Security
-- ● Roles and Privileges:
-- ○ Create roles for "Company_Admin" with appropriate access permissions.
-- Create a role named 'Company_Admin'
CREATE ROLE 'Company_Admin';

-- Grant privileges to 'Company_Admin' role
GRANT SELECT, INSERT, UPDATE, DELETE ON Employee_Records.* TO 'Company_Admin';

-- Grant the role to a user (replace 'username' with the actual username)
GRANT 'Company_Admin' TO 'username'@'hostname';

-- ● Grant and Revoke:
-- Grant specific privileges to 'Company_Admin' role on Employee_Records database
GRANT ALL PRIVILEGES ON Employee_Records.* TO 'Company_Admin';

-- ○ Implement commands to manage access for these roles on the Employee_Records database.
-- Revoke specific privileges from 'Company_Admin' role on Employee_Records database
REVOKE ALL PRIVILEGES ON Employee_Records.* FROM 'Company_Admin';

-- Drop the role if no longer needed
DROP ROLE 'Company_Admin';

-- Revoke the role from a user (if necessary)
REVOKE 'Company_Admin' FROM 'username'@'hostname';

-- ● Transaction Control:
-- ○ Demonstrate the use of Commit, Rollback, and Savepoint by simulating a scenario where a employee's enrollment needs to be reverted.
-- Start a transaction
START TRANSACTION;

-- Insert a new employee record
INSERT INTO Emp_1 (Emp_Id, Emp_Name, Department, Designation, Contact_No, Email, Qualification)
VALUES (102, 'John Doe', 'Engineering', 'Software Engineer', '1234567890', 'john.doe@example.com', 'B.Tech');

-- Create a savepoint for potential rollback
SAVEPOINT Before_Enrollment;

-- Assuming you also want to add records in Emp_2 and Emp_3
INSERT INTO Emp_2 (Emp_Id, Father_Name, Mother_Name, DOB, Address)
VALUES (102, 'Michael Doe', 'Sarah Doe', '1990-01-01', '123 Main St');

INSERT INTO Emp_3 (Emp_Id, Basic_Salary, Emp_TA_DA)
VALUES (102, 30000, 5000);

-- If something goes wrong or you want to rollback to savepoint
-- ROLLBACK TO Before_Enrollment;

-- If everything is fine, commit the transaction
COMMIT;



-- 11.Triggers
--  Write a trigger to ensure that no employee of age less than 25 can be inserted in the database
-- Create a trigger to prevent insertion of employees younger than 25 years old
DELIMITER //

CREATE TRIGGER Prevent_Young_Employees
BEFORE INSERT ON Emp_2
FOR EACH ROW
BEGIN
    DECLARE age INT;
    SET age = TIMESTAMPDIFF(YEAR, NEW.DOB, CURDATE());
    IF age < 25 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Employee must be at least 25 years old';
    END IF;
END //

DELIMITER ;

--  Create a trigger which will work before deletion in employee table and create a duplicate copy of the record in another table employee_backup.
-- Create a backup table for employee records
CREATE TABLE employee_backup AS
SELECT * FROM Emp_1
WHERE 1=2;  -- Creates the table with the same structure but no data

-- Create a trigger to backup employee record before deletion
DELIMITER //

CREATE TRIGGER Backup_Before_Delete
BEFORE DELETE ON Emp_1
FOR EACH ROW
BEGIN
    INSERT INTO employee_backup (Emp_Id, Emp_Name, Department, Designation, Contact_No, Email, Qualification)
    VALUES (OLD.Emp_Id, OLD.Emp_Name, OLD.Department, OLD.Designation, OLD.Contact_No, OLD.Email, OLD.Qualification);
END //

DELIMITER ;

--  Write a trigger to count number of new tuples inserted using each insert statement
-- Create a log table to count new tuples inserted
CREATE TABLE insert_log (
    Log_Id INT AUTO_INCREMENT PRIMARY KEY,
    Insert_Timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    Record_Count INT
);

-- Create a trigger to count number of new tuples inserted
DELIMITER //

CREATE TRIGGER Count_New_Inserts
AFTER INSERT ON Emp_1
FOR EACH STATEMENT
BEGIN
    INSERT INTO insert_log (Record_Count)
    VALUES (ROW_COUNT());
END //

DELIMITER ;



-- 12.Complex queries
-- ● Write a Query to print the number of employees per department in the organization.
-- Query to print the number of employees per department
SELECT Department, COUNT(*) AS Number_of_Employees
FROM Emp_1
GROUP BY Department;

-- ● Write a query to Find duplicate employee records.
-- Query to find duplicate employee records based on name and contact number
SELECT Emp_Name, Contact_No, COUNT(*)
FROM Emp_1
GROUP BY Emp_Name, Contact_No
HAVING COUNT(*) > 1;

-- ● Write a query to display Nth Record from Employee table.
-- Query to display the Nth record (e.g., 5th record) from the Employee table
SET @row_number = 0;
SELECT Emp_Id, Emp_Name, Department
FROM (
    SELECT @row_number := @row_number + 1 AS row_num, Emp_Id, Emp_Name, Department
    FROM Emp_1
    ORDER BY Emp_Id
) AS Ranked
WHERE row_num = 5;

-- ● Write a query to fetch 3rd highest salary using Rank Function.
-- Query to fetch the 3rd highest salary
SET @rank := 0;
SET @prev_salary := NULL;

SELECT DISTINCT Salary
FROM (
    SELECT @rank := IF(@prev_salary = Basic_Salary, @rank, @rank + 1) AS rank,
           @prev_salary := Basic_Salary AS Salary
    FROM Emp_3
    ORDER BY Basic_Salary DESC
) AS Ranked
WHERE rank = 3;

-- ● Write a query to get distinct records from the table without using distinct keyword.
-- Query to get distinct records from the table without using DISTINCT keyword
SELECT Emp_Id, Emp_Name, Department, Contact_No
FROM Emp_1
GROUP BY Emp_Id, Emp_Name, Department, Contact_No;


