--1.	Write a Query for creating new Database Named “Microsoft_Corporation”. Use currently created Database. Create at-least Three Tables “EMP1, EMP2, EMP3” in “Company”. EMP1: Includes Professional Information of Employee, EMP2: Personal Information of Employee and EMP3; Salary related records, EMP4: Empty Table. Attributes are:
--1.	EMP1: Emp_Id, Emp_Name, Emp_Dept, Emp_Des, Emp_Contact, Emp_Email, Emp_Qualification, Emp_Research_Area.
--2.	EMP2: Emp_Id, Emp_FatherName, Emp_Mother_Name, Emp_DOB, Emp_Address, Emp_Gender, Emp_Religion.
-- 3.	EMP3: Emp_Id, Emp_Date_of_Joining, Emp_Basic_Salary, Emp_TA_DA.

CREATE DATABASE Microsoft_Corporation;
USE Microsoft_Corporation;
CREATE TABLE EMP1 (
    Emp_Id INT PRIMARY KEY,
    Emp_Name VARCHAR(50) NOT NULL,
    Emp_Dept VARCHAR(50) NOT NULL,
    Emp_Des VARCHAR(50) NOT NULL,
    Emp_Contact BIGINT NOT NULL,
    Emp_Email VARCHAR(50) NOT NULL,
    Emp_Qualification VARCHAR(50) NOT NULL,
    Emp_Research_Area VARCHAR(50) NOT NULL
    );

CREATE TABLE EMP2 (
    Emp_Id INT PRIMARY KEY,
    Emp_FatherName VARCHAR(50) NOT NULL,
    Emp_Mother_Name VARCHAR(50) NOT NULL,
    Emp_DOB DATE NOT NULL,
    Emp_Address VARCHAR(50) NOT NULL,
    Emp_Gender VARCHAR(50) NOT NULL,
    Emp_Religion VARCHAR(50) NOT NULL
    );

CREATE TABLE EMP3 (
    Emp_Id INT PRIMARY KEY,
    Emp_Date_of_Joining DATE NOT NULL,
    Emp_Basic_Salary DECIMAL(10,2) NOT NULL,
    Emp_TA_DA DECIMAL(10,2) NOT NULL
    );

CREATE TABLE EMP4 (
    Emp_Id INT PRIMARY KEY
    );



-- Write a Query for Inserting, Deleting, Updating, Alter, Drop Data of Database Tables i.e,
-- 1.	Emp1 and Emp2 having 15 and Emp3 having 10 records.
-- 2.	Alter/Modify command perform alteration of attribute Type and Adding New Column i.e., in Emp3 e.g. change the column name Date_of_Joining toJoining_Date, Add Column in same Table Monthly_Salary_, Yearly_Salary.
-- 3.	Drop Table Emp4.

INSERT INTO Emp1 VALUES 
(1323607,"Pratipal Kumar Singh","MMICT&BM","Student",6207852281,"kumarpratipal123@gmail.com","BCA_DS","Data Scientist"),
(1323574,"Rahul Kumar Gupta","MMICT&BM","Student",628721274,"rahulkumargupta@gmail.com","BCA_AIML","Reseach_ML"),
(1323575,"Suresh Diwali","MMICTBM","Student",7988767250,"sureshdiwali@gmail.com","BCA_AIML","Testing_Joim");

INSERT INTO Emp2 VALUES
(1323607,"Sawdhan Singh","Reena Kumari",2004-03-20,"VPO-Dindayalpur PS-G B Nagar Dist. Siwan(Bihar)","Male","Sanatan_Hindu"),
(1323574,"Rahul Kumar Gupta","Rajeshwari Gupta",2003-05-12,"VPO-Dindayalpur PS-G B Nagar Dist. Siwan(Bihar)","Male","Sanatan_Hindu"),
(1323575,"Suresh Diwali","Smt. Sunita Devi",2002-02-20,"VPO-Dindayalpur PS-G B Nagar Dist. Siwan(Bihar)","Male","Sanatan_Hindu"),

INSERT INTO Emp3 VALUES
(1323607,'2022-01-01', 50000.00, 500);

INSERT INTO Emp4 VALUES
(1323607);




--Alter/Modify command perform alteration of attribute Type and Adding New Column i.e.,
-- in Emp3 e.g. change the column name Date_of_Joining toJoining_Date, Add Column in same Table Monthly_Salary_, Yearly_Salary.
ALTER TABLE Emp3
ADD Monthly_Salary DECIMAL(10,2),
ADD Yearly_Salary DECIMAL(10,2);

--3.	Drop Table Emp4.


-- 3. Write a Query for using: Primary Key Constraints on EMP_ID Column, 
--Unique Key Constraints on EMP_CONTACT Column, Not Null Key Constraints on EMP_QUALIFICATION Column, EMP_RESEARCH_AREA Column. 
--Also use Foreign key Constraints in “EMP2 tables not on EMP3. 
--Apart from use Check Constraints for EMP_BASIC_SALRY i.e., 
--it shouldn’t greater than Rs. 30000 of any employee.
ALTER TABLE Emp1
ADD CONSTRAINT PK_Emp1 PRIMARY KEY (Emp_ID),
ADD CONSTRAINT UQ_Emp1 UNIQUE (Emp_Contact),
ADD CONSTRAINT NN_Emp1 NOT NULL (Emp_Qualification),
ADD CONSTRAINT NN_Emp1 NOT NULL (Emp_Research_Area);
ALTER TABLE Emp2
ADD CONSTRAINT FK_Emp2 FOREIGN KEY (Emp_ID) REFERENCES Emp1(Emp_ID);
ALTER TABLE Emp3
ADD CONSTRAINT CK_Emp3 CHECK (Emp_Basic_Salary <= 30000);

--4. Write a Query:
--  1.	Find Average of Salaries of those Employees having designation=”Asst. Manager”.[use of where clause].
--  2.	Find Id, Name, BasicSalary of those Employee having Research Area=”Software Engineering” and Gender=” Male”.
--  3.	Find the total number of employees in the database.

SELECT AVG(Emp_Basic_Salary) FROM Emp1 WHERE Emp_Designation = "Asst. Manager";
SELECT Emp_ID, Emp_Name, Emp_Basic_Salary FROM Emp1 WHERE Emp_Research_Area= "Software Engineering" AND Gender="Male";
SELECT COUNT(*) FROM Emp1;

--5. Write a Query for: (Order By, Group By and Having Clause) Select EmpName, Salary from table and Order ByEmpName. 
    --Select Average Salary from table and Group By Department. 
    --Select Average Salary from table and Group By Department Having Designation Associate Professor.	

SELECT Emp_Name, Emp_Basic_Salary FROM Emp1 ORDER BY Emp_Name;
SELECT AVG(Emp_Basic_Salary) FROM Emp1 GROUP BY Emp_Department;
SELECT AVG(Emp_Basic_Salary) FROM Emp1 GROUP BY Emp_Department HAVING Emp_Designation;

--6. Write a Query to implement Operators (IN, Between, Concatenation (+) and Like) .
-- 1. Find the names of employees whose salary is between 20000 and 30000.
-- 2. Find the names of employees whose salary is greater than 20000 and less than 30000.

SELECT Emp_Name FROM Emp1 WHERE Emp_Basic_Salary BETWEEN 20000 AND 30000
SELECT Emp_Name FROM Emp1 WHERE Emp_Basic_Salary > 20000 AND Emp_Basic_Salary <30000;

--7. Write a Query to Create and Execute a View.
-- 1. Create a view named “Emp_View” which includes Emp_ID, Emp_Name,
--  Emp_Basic_Salary, Emp_Department, Emp_Designation, Emp_Research
--  Area, Emp_Gender, Emp_Contact, Emp_Qualification, Emp_Blood
--  Group.
CREATE VIEW Emp_View AS SELECT Emp_ID, Emp_Name, Emp_Basic_Salary, Emp_Department, Emp_Designation, Emp_Research_Area, Emp_Gender, Emp_Contact, Emp_Qualification, Emp_Blood_Group FROM Emp1;

-- 2. Execute the view “Emp_View” to get the details of all employees.


-- 2. Execute the view “Emp_View” and display the result.
SELECT * FROM Emp_View;


--8. Write a Query for : Join [Inner, Outer (Left, Right), Full and Self Join].
-- 1. Find the details of employees who are working in the department “CSE” and
--  their designation is “Asst. Manager” using Inner Join.
SELECT * FROM Emp1 INNER JOIN Emp2 ON Emp1.Emp_ID = Emp2.Emp_ID WHERE Emp1.Emp_Department = "CSE" AND Emp1.Emp_Designation = "Asst. Manager";

-- 2. Find the details of employees who are working in the department “CSE” using
--  Left Join.
SELECT * FROM Emp1 LEFT JOIN Emp2 ON Emp1.Emp_ID = Emp2.Emp_ID WHERE Emp1.Emp_Department = "CSE";

-- 3. Find the details of employees who are working in the department “CSE” using
--  Right Join.
SELECT * FROM Emp1 RIGHT JOIN Emp2 ON Emp1.Emp_ID = Emp2.Emp_ID WHERE Emp1.Emp_Department = "CSE";

-- 4. Find the details of employees who are working in the department “CSE” using
--  Full Join.
SELECT * FROM Emp1 FULL JOIN Emp2 ON Emp1.Emp_ID = Emp2.Emp_ID WHERE Emp1.Emp_Department = "CSE";

-- 5. Find the details of employees who are working in the department “CSE” using
--  Self Join.
SELECT * FROM Emp1 AS E1 INNER JOIN Emp1 AS E2 ON E1.Emp_ID = E2.Emp_ID WHERE E1.Emp_Department = "CSE";




--7. Write a Query to implement Aggregate Functions (SUM, AVG, MAX, MIN, COUNT)
--8. Write the Query to Login Dashboard.
--9. 





