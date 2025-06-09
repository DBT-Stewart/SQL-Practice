-- SQL Clause --
-- 1. WHERE Clause
SELECT name, hire_date
FROM employees
WHERE hire_date > '2021-12-31';

-- 2. GROUP BY Clause
SELECT dept_id, COUNT(*) AS emp_count
FROM employees
GROUP BY dept_id;

-- 3. ORDER BY Clause
SELECT name, hire_date
FROM employees
ORDER BY hire_date DESC;

-- 4. HAVING Clause
SELECT dept_id, COUNT(*) AS emp_count
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 1;

-- 5. OFFSET FETCH
SELECT id, name
FROM employees
ORDER BY id
OFFSET 2 ROWS
FETCH NEXT 3 ROWS ONLY;
