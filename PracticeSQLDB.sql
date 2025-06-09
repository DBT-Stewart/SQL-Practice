USE PracticeSQLDB;
GO
-- For Using the PracticeSQLBB Database 

-- Table: departments
CREATE TABLE departments (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Table: employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    manager_id INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(id)
);

-- Table: projects
CREATE TABLE projects (
    id INT PRIMARY KEY,
    project_name VARCHAR(100),
    dept_id INT,
    budget DECIMAL(10, 2),
    FOREIGN KEY (dept_id) REFERENCES departments(id)
);

-- Table: salaries
CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    salary_month VARCHAR(10),
    amount DECIMAL(10, 2),
    FOREIGN KEY (emp_id) REFERENCES employees(id)
);

-- departments
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Operations');

-- employees
INSERT INTO employees VALUES
(1, 'Alice', 1, NULL, '2019-01-15'),
(2, 'Bob', 2, 1, '2020-03-01'),
(3, 'Charlie', 2, 1, '2021-06-10'),
(4, 'David', NULL, 2, '2021-09-05'),
(5, 'Eve', 3, 1, '2022-02-20'),
(6, 'Frank', 4, 2, '2023-01-10');

-- projects
INSERT INTO projects VALUES
(1, 'HR Management System', 1, 50000.00),
(2, 'Financial Audit Tool', 2, 75000.00),
(3, 'Network Infrastructure', 3, 100000.00),
(4, 'Logistics Tracker', 4, 65000.00);

-- salaries
INSERT INTO salaries VALUES
(1, 1, '2024-01', 60000),
(2, 2, '2024-01', 50000),
(3, 3, '2024-01', 50000),
(4, 4, '2024-01', 45000),
(5, 5, '2024-01', 55000),
(6, 6, '2024-01', 47000);

-- Viewing the created tables
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM projects;
SELECT * FROM salaries;