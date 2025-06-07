-- Joins --
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO students VALUES
(1, 'John', 'Delhi'),
(2, 'Anita', 'Mumbai'),
(3, 'Ravi', 'Chennai');

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course VARCHAR(50)
);

INSERT INTO enrollments VALUES
(101, 1, 'Math'),
(102, 2, 'Science'),
(103, 4, 'English');

SELECT * FROM students;
SELECT * FROM enrollments;

-- INNER JOIN
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e ON s.id = e.student_id;
SELECT * FROM students;
SELECT * FROM enrollments;

-- LEFT JOIN
SELECT s.name, e.course
FROM students s
LEFT JOIN enrollments e ON s.id = e.student_id;
SELECT * FROM students;
SELECT * FROM enrollments;

-- RIGHT JOIN
SELECT s.name, e.course
FROM students s
RIGHT JOIN enrollments e ON s.id = e.student_id;
SELECT * FROM students;
SELECT * FROM enrollments;

-- FULL OUTER JOIN
SELECT s.name, e.course
FROM students s
FULL OUTER JOIN enrollments e ON s.id = e.student_id;
SELECT * FROM students;
SELECT * FROM enrollments;
