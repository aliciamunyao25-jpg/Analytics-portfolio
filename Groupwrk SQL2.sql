#---Join

use supermarket_database;
show tables;
select * from products;
select * from suppliers;

select * from suppliers as Sup
Join products as Prod
	on Sup.supplier_id = Prod.supplier_id
    ;
    
 select Sup.first_name as FName,
 Sup.last_name as LName,
 Prod.product_id,
 Prod.product_name as item,
 Prod.price as Mbeca
 from suppliers as Sup
Join products as Prod
	on Sup.supplier_id = Prod.supplier_id
    ;  
   
#Subqueries
select first_name,
last_name,
 ( select price
 from products
 where suppliers.supplier_id = products.supplier_id
 ) As mbeca
 from suppliers; 
 
 
#Outer Join-Left
select * from suppliers as Sup
Left Join products as Prod
	on Sup.supplier_id = Prod.supplier_id
    ;  
    
#Outer Join-right
select * from suppliers as Sup
Right Join products as Prod
	on Sup.supplier_id = Prod.supplier_id
    ;   
    
    
#Self Join
select * from stores;
select * from employees;

select * 
from employees emp1
join employees emp2
On emp1.employee_id + 1=emp2.employee_id
;

select emp1.employee_id As emp_id,
emp1.first_name,
emp1.last_name,
emp2.employee_id As emp_Holid,
emp2.first_name As emp_holConnect,
emp2.last_name as emp_holConnect
from employees emp1
join employees emp2
On emp1.employee_id + 1=emp2.employee_id
;

#join multiple tables
select * from suppliers as Sup
Join products as Prod
	on Sup.supplier_id = Prod.supplier_id
join stores as Stor
on Prod.S_id= Stor.store_id
    ;

#UNION Distinct
select supplier_id, product_name
from products
union All
select  supplier_id, first_name
from Suppliers;

select * from products;
    
   




