create database powerbi_relation

use powerbi_relation

create table CUSTOMERS
(
cust_id int not null,
cust_name varchar(100),
email varchar(100),
address varchar(100),
city varchar(100),
zip varchar(100)
)

create table RECHARGE_DETAILS
(
cust_id int,
recharge_date date,
recharge_amount int
)

INSERT INTO CUSTOMERS VALUES (1, 'Satyajit', 'satyajit@ineuron.ai', 'TC', 'HK','000000');
INSERT INTO CUSTOMERS VALUES (2, 'Ravi', 'Ravi@ineuron.ai', 'TC', 'India','000000');
INSERT INTO CUSTOMERS VALUES (3, 'Shalini', 'Shalini@ineuron.ai', 'TC', 'India','000000');
INSERT INTO CUSTOMERS VALUES (4, 'Supriya', 'Supriya@ineuron.ai', 'TC', 'HK','000000');
INSERT INTO CUSTOMERS VALUES (5, 'Tej', 'Tej@ineuron.ai', 'TC', 'India','000000');

SET SQL_SAFE_UPDATES = 0
delete from RECHARGE_DETAILS

INSERT INTO RECHARGE_DETAILS 
VALUES (1, STR_TO_DATE('01-01-2021', '%d-%m-%Y'), 50);
INSERT INTO RECHARGE_DETAILS 
VALUES (1, STR_TO_DATE('01-03-2021', '%d-%m-%Y'), 100);
INSERT INTO RECHARGE_DETAILS 
VALUES (1, STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 50);
INSERT INTO RECHARGE_DETAILS 
VALUES (2, STR_TO_DATE('01-01-2021', '%d-%m-%Y'), 200);


select * from customers 

select * from recharge_details
