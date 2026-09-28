SHOW Tables;
select*
from offices
Limit 10;

# AND, OR, where

Select city, state,phone 
from offices
where city = 'Boston' AND state = 'MA';

Select city, state,country
from offices
where (state = 'CA' OR  state= 'NY') and Country = 'USA';


Select City, phone, state
from offices
where country != 'france';

#CASE

Select 
city,
state,
case
when city = 'London' Then 'maishalondon'
when state = 'CA' Then 'California'
else 'other'
end as nicestates
From offices ;

 # concat
 select  
city,
state,
 concat(city, '  ' ,state ) as "region",
 upper(city) as "UCASE",
 lower(state) as "LCASE",
 length(city) as "citylength"
 from offices
 limit 5;
 
 #LIKE 
 Select city
 from offices
 where city LIKE '%b%';

# Alias 
 Select 
 City as Homearea,
 Phone as contacts,
 State as Jimbo,
 Addressline1 As Location
 from offices;
 
 # ORDER BY
 Select
 city, 
 state
 from offices
 order by City ASC;

 
  #SORT
  Show tables;
  select*
  from orders
  order by ordernumber desc
  Limit 20;
   
   Select 
   orderdate,
   requiredDate,
   date_format(orderDate, '%m') As order_month,
   date_format(orderDate, '%Y') As order_year,
   date_format(orderDate, '%D') As order_day
   FROM oRders;
   
   

  
 
 
 
 




















