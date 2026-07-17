### Customer Metrics



* Active customers

Active Customers = 

VAR CurrentYear = YEAR(TODAY())

RETURN

CALCULATE(

&nbsp;   DISTINCTCOUNT('Sales Orders fact table'\[Customer ID]),

&nbsp;   YEAR('Sales Orders fact table'\[Order ID]) = CurrentYear

)



* Orders per customer

Orders per Customer = 

DIVIDE(

&nbsp;   \[Total Orders],

&nbsp;   \[Total Customers]

)



* Revenue per customer

Revenue per Customer = 

DIVIDE(

&nbsp;   \[Total Revenue],

&nbsp;   \[Total Customers]

)



* Total customers

Total Customers = DISTINCTCOUNT('Sales Orders fact table'\[Customer ID])

