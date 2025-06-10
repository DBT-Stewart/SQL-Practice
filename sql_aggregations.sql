-- SQL Aggregations --
-- 1. To check total number of employees
SELECT COUNT(*) AS TotalEmployees FROM employees;

-- 2. To check the salary paid in January
SELECT SUM(amount) AS TotalSalary FROM salaries
WHERE salary_month = '2024-01';

-- 3. To find average salary of all employees
SELECT AVG(amount) AS AverageSalary FROM salaries;

-- 4. To find the maximum and minimum salary
SELECT MAX(amount) AS HighestSalary, MIN(amount) AS LowestSalary FROM salaries;

-- 5. To find number of employees in each department.
SELECT d.dept_name, COUNT(e.id) AS EmployeeCount
FROM departments d
LEFT JOIN employees e ON d.id = e.dept_id
GROUP BY d.dept_name;

-- 6. To find the total budget per department.
SELECT d.dept_name, SUM(p.budget) AS TotalBudget
FROM departments d
JOIN projects p ON d.id = p.dept_id
GROUP BY d.dept_name;
