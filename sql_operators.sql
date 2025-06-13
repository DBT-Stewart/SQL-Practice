-- SQL Operators --
use PracticeSQLDB;
-- Viewing the created tables
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM projects;
SELECT * FROM salaries;
-- 1. Arithematic Operators - Mathematical Calculations --
-- +,-,*,/,% --
SELECT 20+30 as addition;
SELECT 20-30 as subtraction;
SELECT 20*30 as multiplication;
SELECT 20/30 as division;
SELECT 20%30 as modulous;

-- Test case 1 --
SELECT id, name, hire_date
FROM employees
WHERE hire_date > '2021-01-01';

-- Test case 2 --
SELECT project_name, budget
FROM projects
WHERE budget >= 65000;

-- Test Case 3 --
SELECT name, dept_id
FROM employees
WHERE dept_id IS NOT NULL AND dept_id != 1;

-- Calculate a potential bonus for each employee's January salary, assuming a 10% bonus.
SELECT e.name, s.amount AS base_salary, s.amount * 0.10 AS bonus_amount, s.amount + (s.amount * 0.10) AS total_salary_with_bonus
FROM employees e
JOIN salaries s ON e.id = s.emp_id
WHERE s.salary_month = '2024-01';

-- Find the difference between the 'HR Management System' project budget and the 'Logistics Tracker' project budget.
SELECT
    (SELECT budget FROM projects WHERE project_name = 'HR Management System') -
    (SELECT budget FROM projects WHERE project_name = 'Logistics Tracker') AS budget_difference;

-- Calculate the average salary for each employee if their current salary was divided by 12 months (for a monthly average).
SELECT e.name, s.amount AS annual_salary, s.amount / 12 AS monthly_average_salary
FROM employees e
JOIN salaries s ON e.id = s.emp_id;

-- 2. Comparision Operators - Compares the Operands --
-- =,>,<,>=,<=,<> / != --
-- 1. Retrieve all employees who were hired after '2021-01-01'
SELECT *
FROM employees
WHERE hire_date > '2021-01-01';

-- 2. Find all projects with a budget less than or equal to 70000.
SELECT *
FROM projects
WHERE budget <= 70000;

-- 3. List all salaries that are exactly 50000.
SELECT *
FROM salaries
WHERE amount = 50000;

--4. Get all departments except 'HR'.
SELECT *
FROM departments
WHERE dept_name != 'HR'; -- Or WHERE dept_name <> 'HR';

-- 3. Logical Operators --
--1. Find employees who are in department 'IT' AND were hired after '2022-01-01'.
SELECT e.name, e.hire_date, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.id
WHERE d.dept_name = 'IT' AND e.hire_date > '2022-01-01';

--2. List projects that belong to the 'Finance' department OR have a budget greater than 80000.
SELECT p.project_name, p.budget, d.dept_name
FROM projects p
JOIN departments d ON p.dept_id = d.id
WHERE d.dept_name = 'Finance' OR p.budget > 80000;

--3. Retrieve employees who do NOT have a manager_id (i.e., they are likely managers themselves).
SELECT *
FROM employees
WHERE manager_id IS NULL; -- Note: For NULL values, IS NULL or IS NOT NULL is used, not = NULL or != NULL

--4. Find employees who are NOT in the 'HR' department AND whose salary is less than 50000.
SELECT e.name, s.amount, d.dept_name
FROM employees e
JOIN salaries s ON e.id = s.emp_id
JOIN departments d ON e.dept_id = d.id
WHERE NOT d.dept_name = 'HR' AND s.amount < 50000;

-- 4. Special Operators --
-- 1. Find employees hired between '2020-01-01' and '2022-12-31' (inclusive).
SELECT *
FROM employees
WHERE hire_date BETWEEN '2020-01-01' AND '2022-12-31';

-- 2.  List employees whose dept_id is either 1 or 3.
SELECT *
FROM employees
WHERE dept_id IN (1, 3);

-- 3. Find employees whose names start with 'A'.
SELECT *
FROM employees
WHERE name LIKE 'A%';

-- 4. Retrieve projects whose names contain 'System'.
SELECT *
FROM projects
WHERE project_name LIKE '%System%';

-- 5. Get all employees who have a manager_id (i.e., they report to someone).
SELECT *
FROM employees
WHERE manager_id IS NOT NULL;

-- 6. Find departments that have at least one employee.
SELECT d.dept_name
FROM departments d
WHERE EXISTS (SELECT 1 FROM employees e WHERE e.dept_id = d.id);

--5. Set Operators--
-- List the names of all employees and the names of all projects in a single result set (union of names).
SELECT name AS ItemName
FROM employees
UNION
SELECT project_name AS ItemName
FROM projects;

-- List all dept_id values that appear in both the employees table and the projects table (using INTERSECT).
SELECT dept_id
FROM employees
WHERE dept_id IS NOT NULL -- Exclude employees without a department
INTERSECT
SELECT dept_id
FROM projects;

-- Find dept_id values that are present in the departments table but not currently associated with any employee (using EXCEPT).
SELECT id AS DeptId
FROM departments
EXCEPT
SELECT dept_id AS DeptId
FROM employees
WHERE dept_id IS NOT NULL;

-- Combine employee names and department names, including duplicates if any (using UNION ALL).
SELECT name AS EntityName
FROM employees
UNION ALL
SELECT dept_name AS EntityName
FROM departments;
