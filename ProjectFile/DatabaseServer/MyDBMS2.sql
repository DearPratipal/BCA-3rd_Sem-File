--2.  Write a Query for Inserting, Deleting, Updating, Alter, Drop Data of Database Tables i.e,
--  1.	Emp1 and Emp2 having 15 and Emp3 having 10 records.
--  2.	Alter/Modify command perform alteration of attribute Type and Adding New Column 
--  i.e., in Emp3 e.g. change the column name Date_of_Joining to Joining_Date, Add Column in same Table Monthly_Salary_, Yearly_Salary.
--  3.	Drop Table Emp4.
--  4.	Inserting, Deleting, Updating Data in Emp1 Table.
--  5.	Inserting, Deleting, Updating Data in Emp2 Table.
--  6.	Inserting, Deleting, Updating Data in Emp3 Table.

(1, "Pratipal", 'IT', 'Software Engineer', 7324010867, 'kumarpratipal123@gmail.com', 'Diploma-ADCA', 'Bug Bounty'),
(2, 'Rahul', 'IT', 'Software Engineer', 9876543210, 'rahul123@gmail.com', 'Diploma-ADCA', 'Bug Bounty'),
(3, 'Rupak', 'IT', 'Web Developer Engineer', 6204322165, 'rk9493920@gmail.com', 'Inter-12th', 'Testing'),
(4, 'Shani', 'Sale', 'Game Engineer', 6299996489, 'shaniraj6489@gmail.com', 'ADCA-KYP', 'Game Developer'),
(5, 'Rahul', 'IT', 'Software Engineer', 9876543210, 'rahul123@gmail.com', 'Diploma-ADCA', 'Bug Bounty'),
(6, 'Rupak', 'IT', 'Web Developer Engineer', 620432216, 'rk9493920@gmail.com', 'Inter-12th', 'Testing'),
(7, 'Shani', 'Sale', 'Game Engineer', 6299996489, 'shaniraj6489@gmail.com', 'ADCA-KYP', 'Game Developer'),
(8, 'Rahul', 'IT', 'Software Engineer', 9876543210, 'rahul123@gmail.com', 'Diploma-ADCA', 'Bug Bounty'),
(9, 'Rupak', 'IT', 'Web Developer Engineer', 620432216, 'rk9493920@gmail.com', 'Inter-12th', 'Testing'),
(10, 'Shani', 'Sale', 'Game Engineer', 6299996489, 'shaniraj6489@gmail.com', 'ADCA-KYP', 'Game Developer'),
(11, 'Rahul', 'IT', 'Software Engineer', 9876543210, 'rahul123@gmail.com', 'Diploma-ADCA', 'Bug Bounty'),
(12, 'Rupak', 'IT', 'Web Developer Engineer', 620432216, 'rk9493920@gmail.com', 'Inter-12th', 'Testing'),
(13, 'Shani', 'Sale', 'Game Engineer', 6299996489, 'shaniraj6489@gmail.com', 'ADCA-KYP', 'Game Developer'),
(14, 'Rahul', 'IT', 'Software Engineer', 9876543210, 'rahul123@gmail.com', 'Diploma-ADCA', 'Bug Bounty'),
(15, 'Rupak', 'IT', 'Web Developer Engineer', 620432216, 'rk9493920@gmail.com', 'Inter-12th', 'Testing'),
(16, 'Shani', 'Sale', 'Game Engineer', 6299996489, 'shaniraj6489@gmail.com', 'ADCA-KYP', 'Game Developer'),
(17, 'Rahul', 'IT', 'Software Engineer', 9876543210 , 'rahul123@gmail.com', 'Diploma-ADCA', 'Bug Bounty'),
(18, 'Rupak', 'IT', 'Web Developer Engineer', 620432216, 'rk9493920@gmail.com', 'Inter-12th', 'Testing'),
(19, 'Shani', 'Sale', 'Game Engineer', 6299996489, 'shaniraj6489@gmail.com', 'ADCA-KYP', 'Game Developer'),
(20, 'Rahul', 'IT', 'Software Engineer', 9876543210 , 'rahul123@gmail.com', 'Diploma-ADCA', 'Bug Bounty');


INSERT INTO CompanyEMP2
VALUES
(1, 'Sawdhan', 'Reena', 05/05/2005 , 'Vill+Post-Dindayalpur', 'Male', 'Hindu'),
(2, 'Sawdhan', 'Reena', 05/05/2005 , 'Vill+Post-Dindayalpur', 'Male', 'Hindu'),

INSERT INTO CompanyEMP3 
VALUES
(1, '2020-01-01', 50000.00, 5000),
(2, '2020-01-01', 50000.00, 5000),
(3, '2020-01-01', 50000.00, 5000),
(4, '2020-01-01', 50000.00, 5000),
(5, '2020-01-01', 50000.00, 5000);

SELECT * FROM CompanyEMP1;
SELECT * FROM CompanyEMP2;
SELECT * FROM CompanyEMP3;

-- 1. Delete all records from table EMP1 where Employee_ID is 1, 2
DELETE FROM CompanyEMP1 WHERE Employee_ID = 1 OR Employee_ID = 2;
-- 2. Delete all records from table EMP2 where Employee_ID is 1, 2
DELETE FROM CompanyEMP2 WHERE Employee_ID = 1 OR Employee_ID = 2;
-- 3. Delete all records from table EMP3 where Employee_ID is 1, 2
DELETE FROM CompanyEMP3 WHERE Employee_ID = 1 OR Employee_ID = 2;


