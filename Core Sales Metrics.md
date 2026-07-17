### Core Sales Metrics



* Average items per order

Average Items per Order = 

DIVIDE(

&nbsp;   \[Total Quantity Sold],

&nbsp;   \[Total Orders]

)



* Average order value

Average Order Value = 

DIVIDE(

&nbsp;   \[Total Revenue],

&nbsp;   \[Total Orders]

)



* Total orders

Total Orders = DISTINCTCOUNT('Sales Orders fact table'\[Order ID])



* Total quantity sold

Total Quantity Sold = SUM('Sales Orders fact table'\[Quantity])



* Total revenue

Total Revenue = SUM('Sales Orders fact table'\[Sales])



* Total transactions

Total Transactions = COUNTROWS('Sales Orders fact table')

