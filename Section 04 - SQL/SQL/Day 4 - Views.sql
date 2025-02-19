use classicmodels

show tables

create table cust_details as
select * from customers where country = 'USA'

select * from cust_details 



create view cust_details_v as
select * from customers where country = 'USA'

select * from cust_details_v


select * from products limit 4

select * from productlines limit 4


create view prod_description as
(
select prd.productName, prd.quantityinstock, prd.msrp, pl.textdescription
from products prd inner join productlines pl
on prd.productline = pl.productline
)

select * from prod_description

show full tables where table_type = 'VIEW'

drop view cust_details_v

drop view prod_description
