### Profitability Metrics



* &nbsp;Average discount percentage

Average Discount % = 

AVERAGE('Sales Orders fact table'\[Discount])



* Profit margin percentage

Profit Margin % = 

DIVIDE(

&nbsp;   \[Total Profit],

&nbsp;   \[Total Revenue]

)



* Revenue after discount



Revenue After Discount = 

SUMX(

&nbsp;   'Sales Orders fact table',

&nbsp;   'Sales Orders fact table'\[Sales] \* (1 - 'Sales Orders fact table'\[Discount])

)



* Revenue after discount percentage

Revenue After Discount % = 

DIVIDE(

&nbsp;   \[Revenue After Discount],

&nbsp;   \[Total Revenue]

)



* Total profit

Total Profit = SUM('Sales Orders fact table'\[Profit])



