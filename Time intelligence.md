### Time intelligence



* Profit ytd

Profit YTD = 

TOTALYTD(

&nbsp;   \[Total Profit],

&nbsp;   'Calendar'\[Date]

)



* Revenue Last Month 

Revenue Last Month = 

CALCULATE(

&nbsp;   \[Total Revenue],

&nbsp;   PREVIOUSMONTH('Calendar'\[Date])

)



* Revenue last year

Revenue Last Year = 

CALCULATE(

&nbsp;   \[Total Revenue],

&nbsp;   SAMEPERIODLASTYEAR('Calendar'\[Date])

)



* Revenue month on month growth percentage

Revenue MoM Growth % = 

VAR CurrentMonth = \[Total Revenue]

VAR LastMonth = \[Revenue Last Month]

RETURN

DIVIDE(CurrentMonth - LastMonth, LastMonth)



* Revenue month to date

Revenue MTD = 

TOTALMTD(

&nbsp;   \[Total Revenue],

&nbsp;   'Calendar'\[Date]

)



* Revenue year on year growth %

Revenue YoY Growth % = 

DIVIDE(

&nbsp;   \[Total Revenue] - \[Revenue Last Year],

&nbsp;   \[Revenue Last Year]

)



* Revenue ytd

Revenue YTD = 

TOTALYTD(

&nbsp;   \[Total Revenue],

&nbsp;   'Calendar'\[Date]

)



