-- Views --
-- Table Creation
CREATE TABLE view_employees_demo (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_name VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- Value Insertion
INSERT INTO view_employees_demo (emp_id, emp_name, dept_name, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'Finance', 60000),
(3, 'Charlie', 'IT', 75000),
(4, 'David', 'Finance', 67000),
(5, 'Eva', 'HR', 52000),
(6, 'Frank', 'IT', 72000);

-- TO view the table
Select * from view_employees_demo;

-- Creating the VIEW table
CREATE VIEW finance_only_view AS
SELECT emp_id, emp_name, salary
FROM view_employees_demo
WHERE dept_name = 'Finance';

-- To view all the VIEWS in the database
SELECT name 
FROM sys.views;

-- To view the VIEW table
SELECT * FROM finance_only_view;

-- Updating main table using VIEW
UPDATE finance_only_view
SET salary = 67000
WHERE emp_name = 'David';

-- Droping the VIEW
DROP VIEW finance_only_view;

SELECT name 
FROM sys.views;