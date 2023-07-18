# Creating a Computed Column that Extracts Customer Info and Detects the Number of Days Since the Customers Last Transaction
* Using datediff() to calculate the number of days since the last transaction
* Combining all the data cleaning methods that we used up until this point to extract customer info and computing the number of days

## Explanation
* First create a new worksheet, declare the context and repeat the step in the previous task for date by reformatting the LASTTRANSACTION column as seen on image 1
* Now I want to compute the number of days since the last transaction up until current day. To do so I use the datediff() function to make the calculation. The datediff() syntax requires us to input the unit of calculation which in our case is days. Followed by the column that will be the source for the calculation which is the date of the transaction. Finally we input from how long are we calculating the difference by, in our case it will be from current day where I declare that by the CURRENT_DATE() as seen on image 2
* Now that we are able to compute the Number of days since the last transaction, we're going to extract all the customers info while also ensuring we are adapting the data cleaning methods we use thus far. In image 3, we use all the functions from the previous task combined together, and we also add a WHERE clause to show the customers who last transaction was greater than 182 days or roughly 6 months

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/ComputedColumn/Computed1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/ComputedColumn/Computed2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/ComputedColumn/Computed3.png?raw=true)
