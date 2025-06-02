create database Sales;
create table sales (
sale_id int primary key,
Customer_name varchar(255),
Product varchar(255),
amount int,
sale_date date
);
insert into sales (sale_id,Customer_name,Product,Amount,sale_date) values 
(1,'Alice','Laptop',1200,'2024-1-15'),
(2,'Bob','Smartphone',800,'2024-02-20'),
(3,'Alice','Headphone',150,'2024-03-02'),
(4,'Charlie','Laptop',1250,'2024-03-12'),
(5,'Bob','Laptop',1200,'2024-04-10'),
(6,'Alice','Smartphone',850,'2024-05-01');
select * from sales;

select * from sales where amount > 1000;
select * from sales order by sale_date asc;
select customer_name,count(sale_id) as bilang
from sales
group by Customer_name;
select customer_name, count(*) as costumer
from sales group by Customer_name having count(*) > 1;
select customer_name, sum(amount) as total_spent
from sales group by Customer_name;

select min(amount) as average_sale from sales;

create database school;

create table Classes (
id int primary key,
class_name varchar(255)
);
create table Students (
id int primary key,
name varchar(255),
age int,
class_id int,
foreign key (class_id) references Classes (id)
);

insert into Classes  (id,class_name) values
(1,'Math'),(2,'Science'),(3,'History');
select * from Classes;

insert into Students (id,name,age,class_id) values
(1,'Alice',17,1),
(2,'Bob',18,1),
(3,'Charlie',16,2),
(4,'Diana',17,3),
(5,'Edward',18,2);
select * from Students;
select * from Classes;

select * from Students where age > 16;
select * from Students order by age asc;
select * from Students limit 3;
select S.name, C.class_name from Students S
join Classes C on S.id = C.id;

select class_id , count(*) as number_students
from Students group by class_id;

select class_id from Students group by class_id
having class_id > 1;

SELECT classes.class_name, COUNT(students.id) AS student_count
FROM students
JOIN classes ON students.class_id = classes.id
GROUP BY classes.class_name
HAVING COUNT(students.id) > 1;
