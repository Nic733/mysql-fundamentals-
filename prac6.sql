create table orders (
id int primary key,
name varchar(255),
amount int,
status varchar(100)
);
select * from  orders;
insert into orders (id,name,amount,status) values
(1, 'Alice', 250, 'Complete'),
(2, 'Bob', 300, 'Pending'),
(3, 'Alice', 100, 'Complete'),
(4, 'Charlie', 400, 'Complete'),
(5, 'Bob', 150, 'Cancelled');

select * from orders;
select count(*) as total_orders from orders;
select sum(amount) from orders;
select avg(amount) from orders;
select max(amount) as high, min(amount) as low from orders;
select name, sum(amount) as bilang from orders
group by name;
select name, sum(amount) as bilang from orders
group by name having sum(amount) > 300;

select name, count(*) as complete_orders 
from orders where status = "Complete" group by name;

create table sales1 ( 
id int primary key auto_increment,
Customer varchar(255),
Region varchar(255),
Amount int,
Status varchar(255)
);

insert into sales1 (Customer,Region,Amount,Status) values 
('Alice','North',120,'Complete'),
('Bob','South',80,'Pending'),
('Carol','North',150,'Complete'),
('Dave','East',100,'Cancelled'),
('Eve','South',200,'Complete'),
('Frank','East',90,'Complete');
select * from sales1;
select count(*) from sales1;
select avg(Amount) from sales1;
select Region, sum(amount) as total_amount
from sales1 group by Region;
select Status, count(*) as number_of_transac
from sales1 group by Status;

select Region, max(Amount) as highest, min(Amount) as lowest from sales1 group by Region;

select avg(Amount) as average from sales1 where Status = 'Complete';

select Region, Count(Amount) as sales from sales1 where Amount > 100
group by Region;

select Region, sum(Amount) as total, count(Amount) as numbers from sales1
where Status = 'Completed' group by Region;

select Region, sum(Amount) as total_sales from sales1 group by Region having sum(amount) > 200;

select Region, sum(Amount) as total from sales1 group by Region;

select Status, count(Amount) as count_ from sales1 group by Status;

select Region, avg(Amount) as avg_ from sales1 group by Region;

select * from sales1 order by Amount desc;
select Region, sum(Amount) as total from sales1 group by Region order by sum(Amount) desc;
select Status ,avg(Amount) as average_sale from sales1 group by Status order by Status asc;
select Region, sum(Amount) as total_sales from sales1 group by Region having sum(Amount) > 200;
select Status, count(*) as totalstatus from sales1 group by Status having count(*) > 1;
select Region, avg(Amount) as avg_sale from sales1 group by Region having avg(Amount) > 100;

select Region, avg(Amount) as total_avg from sales1 where Status = 'Complete' group by Region;
select Region, count(*) as highest from sales1 where Status = 'Complete' group by Region order by highest desc limit 1;
select Region, count(*) as total, sum(Amount) as total_amount from sales1
where Status = 'Complete' group by Region having total > 1 and total_amount > 100;
