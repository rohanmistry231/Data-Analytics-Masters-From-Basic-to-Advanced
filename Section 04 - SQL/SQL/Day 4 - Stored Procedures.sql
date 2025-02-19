create database customer

show databases 

use customer

show tables

select * from cust

Q1 --> Find the list of customers who are having total charges greater than the average total charges

select avg(totalCharges) from cust

select count(*) from cust where totalCharges > 2283.30 --> 2644

select count(*) from cust --> 7032

select avg(totalCharges) from cust --> float

select count(*) from cust where totalCharges > (select avg(totalCharges) from cust)

select customerId, gender, seniorCitizen, partner from cust where totalCharges > (select avg(totalCharges) from cust)

select * from cust

Q2 -> Find the count of customers who has a greater totalCharges than customer_id: '9237-HQITU'

select * from cust where totalCharges > (select totalCharges from cust where customerId = '9237-HQITU')



Find the names of employees who has a greater salary than Ravi

select salary from employees where name = 'Ravi' --> 15000


select name from employees where salary > (select salary from employees where name = 'Ravi')

select name from employees where salary > (15000)

https://mysqltutorial.org/ database:

use classicmodels

show tables

select * from orderdetails limit 5 --> orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber

select * from products limit 5 --> productCode, productName, productLine, productVendor, productDesc, 
quantityinstock, buyPrice, MSRP

Q3 --> We want the product code, name & msrp of products whose price of each product is less than 200$

select productCode, productName, MSRP 
from products 
where productCode in (select productCode from orderdetails where priceEach < 200)

select productCode from orderdetails where priceEach < 200

select productCode from orderdetails where priceEach < 200


create database fun

use fun

create table players 
(
player_id int,
player_name varchar(25),
country varchar(25),
goals int
)

select * from players

INSERT INTO players values (901, 'Sunil', 'India', 5);
INSERT INTO players values (902, 'Daniel', 'England', 12);
INSERT INTO players values (903, 'Christiano', 'Portugal', 15);
INSERT INTO players values (904, 'Zlatan', 'Sweden', 12);
INSERT INTO players values (905, 'Rodriguez', 'Columbia', 11);
INSERT INTO players values (906, 'Henry', 'England', 10);
INSERT INTO players values (907, 'Nani', 'Portugal', 2);
INSERT INTO players values (908, 'Neymar', 'Brazil', 14);
INSERT INTO players values (909, 'Jindal', 'Iran', 5);
INSERT INTO players values (910, 'Martial', 'France', 9);

select * from players

Return the list of players that have scored greater than 6 goals in the tournament

select * from players where goals > 6

delimiter &&
create procedure top_players()
begin
select player_name, country, goals from players where goals > 6;
end &&
delimiter ;

call top_players()


STORED PROCEDURES USING IN 

Lets create a procedure which returns the top players based on goals: 

top(5) --> 

select * from players --> Top 3 players based on goals

select player_name, country, goals from players order by goals desc limit 5

delimiter //
create procedure top_players_sort_by_goals(IN var int)
begin
select player_name, country, goals from players order by goals desc limit var;
end //
delimiter ;

call top_players_sort_by_goals(3)

select * from players --> ('PlayerName', number)
Update players set goals = ? where player_name = ?

delimiter //
create procedure update_goals(IN var2 varchar(25),IN var int)
begin
update players set goals = var where player_name = var2;
end //
delimiter ;

call update_goals('Christiano', 25)

select * from players


STORED PROCEDURES USING OUT --> 

select count(*) from players

delimiter //
create procedure player_count(OUT total_players int)
begin
select count(*) from players into total_players;
end //
delimiter ;

call player_count(@total_count)

select @total_count as Total_count


delimiter //
create procedure player_count_portugal(OUT total_players int)
begin
select count(*) from players where country = 'Portugal' into total_players;
end //
delimiter ;

call player_count_portugal(@total_count)

select @total_count as Total_count



delimiter //
create procedure player_count_country(IN var varchar(25), OUT total_players int)
begin
select count(*) from players where country = var into total_players;
end //
delimiter ;

call player_count_country('India', @total_count)
select @total_count as Total_count