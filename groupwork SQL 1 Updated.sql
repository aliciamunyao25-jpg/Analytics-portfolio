show tables;

#describe
describe offices;

# limit

select *
from offices
limit 10;

#alias
select 
city as pahali,
phone as nambari,
country as nchi
from offices
limit 10;


# calcualtions 

 
 describe products;

select 
productname as kitu,
buyprice as bei,
quantityinstock as mali,
buyprice *0.5 as nusu_bei,
quantityinstock *10 as mwongezo
from products
limit 10;

#when and then 
select 
productname as kitu,
buyprice as bei,
quantityinstock as mali,
buyprice *0.5 as nusu_bei,
quantityinstock *10 as mwongezo,
case
when buyprice >50 then 'mdosi'
when quantityinstock <1000 then 'kidogo'
else 'no sale'
end as 'kitu_mpya'
from products
limit 10;

#where
select 
productname,
buyprice,
quantityinstock
from products
where quantityinstock >20 ;

#concat
#order by asc

describe employees;
select jobtitle, email,
concat(jobtitle, ' ' , email) as 'personal details',
upper(jobtitle) as ucase,
lower(email) as lcase,
length(jobtitle) as urefu
from employees;

# AND and OR

select 
productname,
buyprice,
quantityinstock
from products
where quantityinstock >200
and buyprice <50 
or productname ='p%'
order by quantityinstock asc;

# order by desc
select 
productname,
buyprice,
quantityinstock
from products
where quantityinstock >200
and buyprice <50 
or productname ='p%'
order by buyprice desc;

# Group By
select customerNumber,avg(amount), max(amount), min(amount), sum(amount), count(amount)
From payments
GROUP BY customerNumber
;
# Group by, Having vs. Where
select customerNumber, sum(amount)
From payments
GROUP BY customerNumber
HAVING sum(amount) >=100000
;
# Where, Group By, Having
select customerNumber, sum(amount)
From payments
Where customerNumber >200
GROUP BY customerNumber
HAVING sum(amount) >=100000
limit 5

#Date

SELECT * from orders;

select DATEDIFF (requiredDate,  orderDate) as "Days"
from Orders;

select orderdate, DATE_ADD(orderdate, Interval 14 Day) as "A Two Wks later"
from Orders;

#Date Format function
select * from payments;

select paymentDate,
DATE_FORMAT (paymentDate, "%d") as "Day",
DATE_FORMAT (paymentDate, "%m") as "Month",
DATE_FORMAT (paymentDate, "%Y") as "Year"
from payments;

#Between
show tables;
select * from orderdetails
where quantityordered between 20 And 30
limit 2
;

