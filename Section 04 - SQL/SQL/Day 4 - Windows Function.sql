Row_number() → Gives a sequential integer to every row within its partition

select * from products

Find combined msrp for each productLine

select * from products

select a.productLine, a.*, sum(a.msrp) over (partition by a.productLine) as total_msrp
from products a

Row number --> 

select row_number() over (order by msrp) as row_num, productLine, msrp from products order by msrp 

Rank() functions → Ranking records

create table demo
(
var_a int)

select * from demo

INSERT INTO DEMO VALUES (101), (102), (103), (103), (104), (105), (106), (106)

select var_a,
rank() over (order by var_a) as test_rank from demo

First_value() functions → Returns the value of the specific expression with respect to first row in the window frame


select max(creditLimit) from customers

select contactFirstName from customers where creditLimit = (select max(creditLimit) from customers)

select contactFirstName from customers order by creditLimit desc

Who has the highest credit limit --> name

select contactFirstName, city, state, country, creditLimit, 
first_value(contactFirstName) over (order by creditLimit desc) as highest_creditlimit from customers

Who has the highest credit limit per each country

select contactFirstName, city, state, country, creditLimit, 
first_value(contactFirstName) over (partition by country order by creditLimit desc) as highest_creditlimit from customers
