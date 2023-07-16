# Extracting Dates from Columns
* Taking dates from different formats and making them the same
* Using to_date() to perform actions

## Explanation
* Like the previous tasks, we're going to start off with a new worksheet and establish the context. In addition to that we're going to select the columns that we want to extract the dates from. In this example we will be extracting dates from the LASTTRANSACTION and the DOB column as seen on image 1
* If we take a closer look at the data the format for the dates are different for both DOB and LASTTRANSACTION. We want to be able to extract the dates to follow the same format. To do so we will be using the to_date() function
* To use the to_date() function we're going to want to have the columns and the format as the parameter. As seen on image 2 the columns DOB and LASTTRANSACTION is what we want to extract the date from. Notice how we're using AUTO, which is allowing snowflake to detect the format to use. However when we run the query we're getting an error for the DOB column, to resolve this issue we're going to replace 'AUTO' with a specified format as seen on image 3
* After running the query with the revised function for DOB we get both columns with the same format for the date

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Date/Date1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Date/Date2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Date/Date3.png?raw=true)
