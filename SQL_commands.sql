-- DDL : Data Definition Language --
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30)
);
-- employees table created

ALTER TABLE employees ADD salary INT;
-- altering the table

DROP TABLE employees;
-- drops the emploees table

select * from sys.tables;
-- to see all the available tables

TRUNCATE TABLE employees;
-- to delete all the records but keeps structure

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30)
);
-- creating the table again 

SELECT * FROM employees;

-- DML : Data Manipulation Language --
INSERT INTO employees (emp_id, name, dept)
VALUES (101, 'Alice', 'HR');
INSERT INTO employees (emp_id, name, dept)
VALUES (102, 'Alia', 'DE');
-- values inserted into employee table

UPDATE employees
SET dept = 'Finance'
WHERE emp_id = 101;
-- updated the data in dept and emp_id

DELETE FROM employees
WHERE emp_id = 101;
-- deleted the details whose employee id is 101

--DQL : Data Query Language--
SELECT name, dept FROM employees;
--displays the table with name and dept columns alone

--TCL : Transaction Control Language--
BEGIN TRANSACTION;

INSERT INTO Employees VALUES (99, 'Alpha', 'HR', 50000);
INSERT INTO Employees VALUES (100, 'Beta', 'DS', 60000);

-- Check current data
SELECT * FROM Employees;
-- To rollback to previous versions
ROLLBACK;

