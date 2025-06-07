-- Constrains --

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    dept_id INT,
    country VARCHAR(30) DEFAULT 'India',
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Valid Insert
INSERT INTO departments VALUES (1, 'HR');
INSERT INTO employees (emp_id, name, email, age, dept_id) 
VALUES (101, 'Alice', 'alice@abc.com', 25, 1);

SELECT * FROM departments;
SELECT * FROM employees;

-- Try Violating CHECK Constraint (age < 18)
INSERT INTO employees (emp_id, name, email, age, dept_id)
VALUES (102, 'Bob', 'bob@abc.com', 15, 1);  -- Error

-- Try inserting without email (UNIQUE constraint won't fail)
INSERT INTO employees (emp_id, name, age, dept_id)
VALUES (103, 'Carol', 30, 1);  -- email is optional

-- Try duplicate email (UNIQUE constraint fails)
INSERT INTO employees (emp_id, name, email, age, dept_id)
VALUES (104, 'Dan', 'alice@abc.com', 22, 1);  -- Error

DROP TABLE departments;
DROP TABLE employees;

select * from sys.tables;