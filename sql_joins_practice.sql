-- Joins Practice --
use PracticeSQLDB;
go

select * from departments;
select * from employees;
select * from projects;
select * from salaries;

-- 1. Inner Join --
select departments.id, name, dept_name
from departments
inner join employees on departments.id = employees.id;

-- 2. Left Join --
select departments.id, name, dept_name
from departments
left join employees on departments.id = employees.id;

--3. Right Join --
select departments.id, name, dept_name
from departments
right join employees on departments.id = employees.id;

--4. Full Outer Join --
select departments.id, name, dept_name
from departments
full outer join employees on departments.id = employees.id;

-- 5. Cross Join --
select * from departments cross join (select distinct name from employees) as emp;

-- Distinct Keyword --
select distinct manager_id from employees;

-- 6. Self Join --
select e.name as Employee, m.name as Manager
from employees e join employees m on e.dept_id < m.manager_id;