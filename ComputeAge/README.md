# Computing Customer Age by Using DATEDIFF() function
* Same Approach for the LASTTRANSACTION but different parameters

## Explanation
* Since the process here is very similar to computing the number of days since the last transaction as done previously everything here will be summarized briefly. After creating a new worksheet and establish the context I want to calculate the customer age by used the datediff() function. However for the parameters we want to reuse the same function we used for the DOB for the Extracting Name from Columns as seen on image 1. We will use the datediff() function by using years as the unit and using the DOB as the source with the current day as the operrand
* Next to extract customer data similar to the previous task, however I remove the WHERE clause for the transaction and add the datediff() function that calculates the customers age as seen on image 2

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/ComputeAge/Age1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/ComputeAge/Age2.png?raw=true)
