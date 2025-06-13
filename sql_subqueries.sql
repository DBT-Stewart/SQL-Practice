use PracticeSQLDB;

-- Sub Querries --
-- 1. Find employees who work in the same department as 'Bob'.
SELECT name
FROM employees
WHERE dept_id = (SELECT dept_id FROM employees WHERE name = 'Bob');

-- 2. Find the names of departments that have at least one project with a budget greater than 70000.
SELECT dept_name
FROM departments
WHERE id IN (SELECT dept_id FROM projects WHERE budget > 70000);

-- 3. Find employees whose salary is above the average salary.
SELECT e.name
FROM employees e
JOIN salaries s ON e.id = s.emp_id
WHERE s.amount > (SELECT AVG(amount) FROM salaries);

-- 4. Find the employee with the highest salary.
SELECT e.name
FROM employees e
JOIN salaries s ON e.id = s.emp_id
WHERE s.amount = (SELECT MAX(amount) FROM salaries);

-- 5. Find departments that do not have any employees.
SELECT dept_name
FROM departments
WHERE id NOT IN (SELECT DISTINCT dept_id FROM employees WHERE dept_id IS NOT NULL);

-- 6. Using EXISTS to find departments that have at least one employee:
SELECT d.dept_name
FROM departments d
WHERE EXISTS (SELECT 1 FROM employees e WHERE e.dept_id = d.id);

-- practice --
select id, name, dept_id from employees
where id = (select id from employees where name = 'Bob');

select id, name, dept_id from employees
where dept_id in (select dept_id from departments where dept_name in ('Finance','It'));