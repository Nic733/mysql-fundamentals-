select * from employee_demographics;
select * from employee_salary;
select * from parks_departments;

--  Show all male employees who are older than 35.
select * from employee_demographics 
where gender = 'Male' and age > 35;

--  Select only first and last names from employee_salary table.
select first_name , last_name from employee_salary;

-- List all employees sorted by age in descending order.
select * from employee_demographics order by age desc;

--  Find employees who work in department 1 and have a salary over 60,000.
select d.first_name,d.last_name,s.dept_id,s.salary from employee_demographics d
join employee_salary s on d.employee_id = s.employee_id 
where dept_id = 1 and salary > 60000;

-- Show full names and salary using alias for full name.

-- Join the two tables and list names and department ID.
select d.first_name,d.last_name, s.dept_id from employee_demographics d
join employee_salary s on d.employee_id = s.employee_id;

-- Show average salary per department using GROUP BY.
select dept_id, avg(salary) as average_salary from employee_salary 
group by dept_id;

-- Show only occupations where average salary is above 60,000.
select occupation, avg(salary) as avg_salary from employee_salary
group by occupation	
having avg(salary) > 60000;
--  List all employees born after the year 1985.
select * from employee_demographics where birth_date > 1985-12-31;

-- Find the top 3 highest-paid employees with their full name, occupation, and salary.
select first_name, last_name,occupation,salary from employee_salary
order by salary desc
limit 3;

select * from employee_demographics order by gender
;

select * from employee_demographics
where gender = 'Female';

select first_name, occupation
from employee_salary;

select * from employee_demographics
where age <= 40;
select * from employee_demographics
where gender = 'Male' and age > 35;

select s.first_name,s.last_name,s.occupation,d.age
from employee_salary s 
join employee_demographics d on s.employee_id = d.employee_id;

select * from employee_salary
order by salary desc;

-- Count how many employees are in each department (dept_id)
select dept_id, count(*) as bilang
from employee_salary
group by dept_id;

-- Show departments with more than 2 employees.
select department_id, department_name from parks_departments
group by department_id 
having department_id > 2;

-- Show departments with more than 2 employees.
select dept_id, count(*) as employe
from employee_salary
group by dept_id
having count(*) > 2;

-- Display the 5 highest-paid employees.
select first_name,last_name,salary from employee_salary 
order by salary desc
limit 5;

-- List department IDs and average salary, but only for departments where the average salary is above 60,000.
select dept_id, avg(salary) as avg_salary
from employee_salary
group by dept_id
having avg(salary) > 60000;

create database Schools;
use schools;

create table students (
student_id int primary key,
Fullname varchar(100)
);
insert into students (student_id,Fullname)
values (1,'Nico G Real');
select * from students;

create table courses (
course_id int primary key,
course_name varchar(100)
);
insert into courses (course_id,course_name)
values (1,'Programming');
select * from courses;

create table student_courses (
student_id int,
course_id int ,
foreign key (student_id) references students (student_id),
foreign key (course_id) references courses (course_id)
);
insert into student_courses (student_id,course_id)
values (1,1);
select * from student_courses;

create database tutoeial_csv;
select * from tutorial_csv;

update tutorial_csv set price = 100 
where product_id = 1;





