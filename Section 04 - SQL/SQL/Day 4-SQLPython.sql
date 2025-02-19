
Database --> 

create database breast_cancer_db

use breast_cancer_db

select * from breast_cancer_data


select count(*) from breast_cancer_data where diagnosis=1



1. Read it in multiple dataframes --> use merge to join
2. join in sql --> read in one dataframe


use classicmodels

select * from products limit 5

select * from productlines limit 5


select a.productCode, a.productName, a.MSRP, b.productLine, b.textDescription
from products a, productlines b
where a.productLine = b.productLine


select productCode, productName, MSRP, productLine
from products

select productLine, textDescription
from productlines
