show databases
use ineuron
SET SQL_SAFE_UPDATES = 0;
show tables

id	name	dob	sex	class	hcode	dcode	mtest

CREATE table student(
id int,
name varchar(100),
dob varchar(100),
sex varchar(100),
class varchar(100),
hcode varchar(100),
dcode varchar(100),
mtest int)

select * from student

ALTER TABLE cust_details
DROP column AGE;

ALTER TABLE cust_details
ADD age int;

update cust_details set age = 35 where gender = 'M';
update cust_details set age = 30 where gender = 'F';

# Importing a csv into MySQL
select * from student

# Importing tables from MySQL interface

# IMPORT TABLES from Command Prompt

CREATE TABLE M_CAST (
index_1 varchar(10),
MID varchar(255),
PID varchar(255),
ID varchar(10))

use imdb

drop table M_Cast


select * from cust_details

select * from cust_details

ALTER TABLE cust_details
DROP COLUMN age;

UPDATE cust_details set Age = 35 where gender = 'M';
UPDATE cust_details set Age = 30 where gender = 'F';


select * from cust_details

select * from cust_details


SELECT COUNT(cust_id), gender
FROM cust_details
GROUP BY gender
HAVING COUNT(cust_id) > 5;

select * from cust_details











Creating a new database --> IMDB

create database imdb

use imdb

show tables

select * from person

select * from movie

drop table m_cast

"index_1","MID","PID","ID"
"0","tt2388771","nm0000288","0"
"1","tt2388771","nm0000949","1"
"2","tt2388771","nm1212722","2"

CREATE table m_cast(
index_1 varchar(1),
mid varchar(255), 
pid varchar(255),
id varchar(1))

show tables;

use ineuron

select gender, count(*) from cust_details
group by gender

select gender, geography, count(cust_id) from cust_details
group by gender, geography having count(cust_id) = 2


select 
where
from
order by
group by
having
limit

select * 
from tablename 
where 
group by
having
order by
limit


len()
select concat(cust_name, ' ', geography) as full_data from cust_details 

select mid(cust_name, 3,2) as char_len, cust_name from cust_details



show tables

CREATE table transaction_details(
prod_name varchar(50),
prod_id int NOT NULL,  
order_date datetime,
amount int)

select * from transaction_details

INSERT INTO transaction_details VALUES ('Motorola', 1, '2020-01-01', 10000);
INSERT INTO transaction_details VALUES ('Canon Camera', 2, '2020-02-01', 60000);
INSERT INTO transaction_details VALUES ('Mousepad', 3, '2020-03-01', 2000);
INSERT INTO transaction_details VALUES ('Razer', 4, '2020-04-01', 3000);
INSERT INTO transaction_details VALUES ('ABC', 5, '2020-05-01', 1200);
INSERT INTO transaction_details VALUES ('DEF', 6, '2020-06-01', 2500);
INSERT INTO transaction_details VALUES ('XYZ', 7, '2020-07-01', 90000);
INSERT INTO transaction_details VALUES ('ABBBB', 8, '2020-08-01', 123100);
INSERT INTO transaction_details VALUES ('ASADASD', 9, '2020-09-01', 1500);
INSERT INTO transaction_details VALUES ('Pencil', 10, '2020-10-01', 10);

select datediff('2021-01-01', order_date) as datediff_today, prod_name, prod_id, order_date from transaction_details

select date_format(order_date, "%Y") from transaction_details;


SELECT DAY("2017-06-15");



SELECT ADDDATE("2017-06-15", INTERVAL -2 DAY);


select * from cust_details where cust_name like 'a%'

select * from cust_details where cust_name REGEXP '^a'

select * from cust_details where cust_name REGEXP "[ty]";

select * from cust_details where cust_name REGEXP "[t-z]";

select * from cust_details where cust_name like '%t%' or cust_name like '%y%';














select * from student where name like '%t%' or name like '%u%' or name like '%v%' or name like '%x%' or name like '%y%' or name like '%z%'

select * from student where name REGEXP '[t-z]'

select substr(name, 1, character_length(name)-1) as something , name  from student

select character_length(name) from student

select LEFT(name, 1) from student where  dcode = 'YMT'

select name from student where name REGEXP  "[e]";

select SUBSTR(name, 1,1) from student where  dcode = 'YMT'

select RIGHT(name,2) , name from student
