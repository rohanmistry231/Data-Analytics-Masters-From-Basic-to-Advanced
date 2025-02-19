use customer
SET SQL_SAFE_UPDATES = 0;
show tables

create database customer

select * from customer

select distinct count(customerID) from customer

1: Find the list of customers having greater than the average total charges

select avg(totalCharges) from customer 

select * from customer where totalCharges > 2283.30

select * from customer where totalCharges > (select avg(totalCharges) from customer)

2: Find the total count of these customers

select count(*) from customer where totalCharges > (select avg(totalCharges) from customer)

3: Find the list of customers who has a greater TotalCharges than customer id: 3668-QPYBK

select totalCharges from customer where customerId = '3668-QPYBK'

select customerID from customer where totalCharges > (select totalCharges from customer where customerId = '3668-QPYBK')

use classicmodels (https://www.mysqltutorial.org/mysql-sample-database.aspx)

show tables

select * from orderdetails limit 4 (ordernumber, productcode, quantityordered, priceeach, orderlinenumber)

select * from products limit 4

Let say, we want the product code, name, & mrp of products whose price of each product is less than 100$

select productCode, productName, msrp from products 
where productCode in 
(
select productcode from orderdetails 
where priceEach < 100
)

# Stored Procedures

create database fun

create table players
(
player_id int,
name varchar(25),
country varchar(25),
goals int 
)

INSERT INTO players values (901, 'Sunil', 'India', 5);
INSERT INTO players values (902, 'Daniel', 'England', 12);
INSERT INTO players values (903, 'Christiano', 'Portugal', 15);
INSERT INTO players values (904, 'Zlatan', 'Sweden', 12);
INSERT INTO players values (905, 'Rodriguez', 'Columbia', 11);
INSERT INTO players values (906, 'Henry', 'England', 10);
INSERT INTO players values (907, 'Nani', 'Portugal', 2);
INSERT INTO players values (908, 'Neymar', 'Brazil', 9);
INSERT INTO players values (909, 'Jindal', 'Iran', 5);
INSERT INTO players values (910, 'Martial', 'France', 12);

select * from players

# Return list of players that have scored less than 6 goals in the tournament

Always starts with a delimiter

delimiter &&
create procedure top_players()
begin 
select name, country, goals from players where goals > 6;
end &&
delimiter ;

call top_players()

# Stored Procedures using IN

delimiter //
create procedure top_players_sort_by_goals(IN var int)
begin
select name, country, goals from players 
order by goals desc limit var;
end //
delimiter ;

call top_players_sort_by_goals(3);


# Update goals of a particular player

delimiter //
create procedure update_players(IN var int, IN var2 varchar(25))
begin
update players set goals = var where name = var2;
end //
delimiter ;

call update_players(23, 'Christiano');


# Stored Procedures using OUT

delimiter //
create procedure player_count(OUT total_players int)
begin
select count(name) into total_players from players;
end //
delimiter ;


call player_count(@total_count);
select @total_count as total;


# Views
use classicmodels
create view cust_details as 
select customerName, phone, city, state, country from customers

select * From cust_details

select customerName, phone, city, state, country from customers where customerName = 'Signal Gift Stores'

create view prod_desc as
(
select productName, quantityinstock, msrp, textdescription
from products as p inner join productlines pl
on p.productline = pl.productline)

select * from prod_desc where productName = '1952 Alpine Renault 1300'

select msrp from products where productName = '1952 Alpine Renault 1300'

show full tables
where table_type = 'VIEW'


# Deleting Views

drop view cust_details
drop view prod_desc

# Windows Functions --> Solving Analytical problems
select * from products

# Find combined msrp for each productLine
select productLine, sum(msrp) over (partition by productLine) as total_msrp
from products
select distinct productLine, sum(msrp) over (partition by productLine) as total_msrp
from products

# Row number function --> Gives a sequential integer to every row within its partition

select row_number() over (order by msrp) as row_num,
productLine, msrp from products order by msrp;

# Rank functions --> 

create table demo (
var_a int);

INSERT into demo values (101), (102), (103), (103), (104), (105), (106), (106), (107)

select var_a,
rank() over (order by var_a) as test_rank 
from demo;


# First Value() --> Returns the value of the specific expression with respect to first row in the window frame

select * from customers

select contactFirstName, city, state, country, creditLimit,
first_value(contactFirstName) over (order by creditLimit desc) as highest_creditLimit from customers

# Country wise --> Highest credit limit customer from each country

select contactFirstName, city, state, country, creditLimit,
first_value(contactFirstName) over (partition by country order by creditLimit desc) as highest_creditLimit from customers
