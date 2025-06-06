CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(30)
);
-- students table created

INSERT INTO students VALUES
(1, 'John', 20, 'Delhi'),
(2, 'Anita', 18, 'Mumbai'),
(3, 'Ravi', 21, 'Delhi'),
(4, 'Meena', 17, 'Chennai');
-- inserted values into the table

SELECT * FROM students;                            -- selecting all columns
SELECT name, age FROM students WHERE age > 18;     -- filtering records using 'WHERE'
SELECT DISTINCT city FROM students;                -- using 'DISTINCT' to remove duplicates
SELECT * FROM students ORDER BY name DESC;         -- sorting records using 'ORDER BY'

