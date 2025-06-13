-- Window Functions --
CREATE TABLE window_employee_demo (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO window_employee_demo (emp_id, emp_name, department, salary) VALUES
(1, 'Alice', 'IT', 75000),
(2, 'Bob', 'IT', 70000),
(3, 'Carol', 'HR', 65000),
(4, 'David', 'HR', 63000),
(5, 'Eve', 'Finance', 72000),
(6, 'Frank', 'Finance', 71000),
(7, 'Grace', 'IT', 77000),
(8, 'Heidi', 'HR', 64000);

select * from window_employee_demo;

-- Row Number
SELECT emp_id, emp_name, department, salary,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM window_employee_demo;

-- Rank and Dense Rank
SELECT emp_id, emp_name, department, salary,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_position,
       DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank_position
FROM window_employee_demo;

--Ntile
SELECT emp_id, emp_name, department, salary,
       NTILE(2) OVER(PARTITION BY department ORDER BY salary DESC) AS salary_group
FROM window_employee_demo;

--Lead and Lag
SELECT emp_id, emp_name, department, salary,
       LEAD(salary) OVER(PARTITION BY department ORDER BY salary) AS next_salary,
       LAG(salary) OVER(PARTITION BY department ORDER BY salary) AS previous_salary
FROM window_employee_demo;

--Total Salary
SELECT emp_id, emp_name, department, salary,
       SUM(salary) OVER(PARTITION BY department ORDER BY salary ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM window_employee_demo;
