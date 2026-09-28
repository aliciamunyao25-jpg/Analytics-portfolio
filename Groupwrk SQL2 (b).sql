
use supermarket_database;

#Add/Alter column

Alter table products 
Add store_id int;

alter table products
rename column store_id to S_id;

#Update Column

update products
set store_id=1
WHERE product_id=1
and price between 600 and 900
;

update products
set store_id= 2
where product_id between 90 and 100
and price between 7 and 200
;

update products
set store_id= 6
where product_id between 3 and 10
and price between 599 and 2000
;

update products
set store_id= 5
where product_id between 101 and 108
and price between 2 and 200
;

update products
set store_id= 4
where product_id between 11 and 50
;

update products
set store_id= 3
where product_id between 51 and 64
;

update products
set store_id= 1
where product_id between 64 and 77
;

update products
set store_id= 1
where product_id between 78 and 89
;

select * from products;

#Delete
Delete from products
where S_id < 2
and price >100
;



