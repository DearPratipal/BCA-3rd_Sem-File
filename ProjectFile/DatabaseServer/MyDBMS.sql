--//1.	Write a Query for creating new Database Named “Microsoft_Corporation”. 
--      Use currently created Database. Create at-least Three Tables “EMP1, EMP2, EMP3” in “Company”. 
-- EMP1: Includes Professional Information of Employee, 
-- EMP2: Personal Information of Employee and 
-- EMP3; Salary related records, 
-- EMP4: Empty Table. Attributes are:
--1.	EMP1: Emp_Id, Emp_Name, Emp_Dept, Emp_Des, Emp_Contact, Emp_Email, Emp_Qualification, Emp_Research_Area.
--2.	EMP2: Emp_Id, Emp_FatherName, Emp_Mother_Name, Emp_DOB, Emp_Address, Emp_Gender, Emp_Religion.
--3.	EMP3: Emp_Id, Emp_Date_of_Joining, Emp_Basic_Salary, Emp_TA_DA.


CREATE DATABASE Microsoft_Corporation;
USE Microsoft_Corporation;

CREATE TABLE CompanyEMP1 (
    Emp_Id INT PRIMARY KEY,
    Emp_Name VARCHAR(255) NOT NULL,
    Emp_Dept VARCHAR(255) NOT NULL,
    Emp_Des VARCHAR(255) NOT NULL,
    Emp_Contact INT NOT NULL,
    Emp_Email VARCHAR(255) NOT NULL,
    Emp_Qualification VARCHAR(255) NOT NULL,
    Emp_Research_Area VARCHAR(255) NOT NULL
    );

CREATE TABLE CompanyEMP2 (
    Emp_Id INT PRIMARY KEY,
    Emp_FatherName VARCHAR(255) NOT NULL,
    Emp_Mother_Name VARCHAR(255) NOT NULL,
    Emp_DOB DATE NOT NULL,
    Emp_Address VARCHAR(255) NOT NULL,
    Emp_Gender VARCHAR(255) NOT NULL,
    Emp_Religion VARCHAR(255) NOT NULL
    );

CREATE TABLE CompanyEMP3 (
    Emp_Id INT PRIMARY KEY,
    Emp_Date_of_Joining DATE NOT NULL,
    Emp_Basic_Salary DECIMAL(10,2) NOT NULL,
    Emp_TA_DA DECIMAL(10,2) NOT NULL
    );


--2.  Write a Query for Inserting, Deleting, Updating, Alter, Drop Data of Database Tables i.e,
--  1.	Emp1 and Emp2 having 15 and Emp3 having 10 records.
--  2.	Alter/Modify command perform alteration of attribute Type and Adding New Column 
--  i.e., in Emp3 e.g. change the column name Date_of_Joining to Joining_Date, Add Column in same Table Monthly_Salary_, Yearly_Salary.
--  3.	Drop Table Emp4.

INSERT INTO CompanyEMP1
VALUES 
(001, "Pratipal", "IT", "Software Engineer", 7324010867, "kumarpratipal123@gmail.com", "Diploma", "Testing");



