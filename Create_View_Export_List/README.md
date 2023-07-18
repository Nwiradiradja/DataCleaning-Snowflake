# Creating a View and Exporting a List of Inactive Customers
* Combining data cleaning methods from earlier tasks and removing duplicates
* Using a temporary table as a reference
* Creating a view which extracts and stores from our dataset
* Exporting the results to a CSV after utilizing the view to show customers who are considered inactive
* Customers are considered inactive if it's more than 6 months or roughly 182 days

## Explanation
* After creating a new worksheet and establishing context, I combined everything I've done so far to work with a dataset where there are no nulls or blanks, no duplicates with proper formatting as seen on image 1.
* Now in the first image, it's simply just putting what I've done so far on one space to visualize what needs to get done. To properly execute the query where everything I've done so far will be performed is seen in image 2 by using a WITH() clause
* To break down the WITH() clause further we are storing the dataset with no duplicates into LISTIDs and then running the SELECT statement outside of the WITH() to perform the data cleaning techniques to ensure we are working with data with no blanks, nulls, duplicates or improper format
* Next I created the view simply by reusing the functions and statements from the previous image and giving the view a name 'CUSTOMER_VW'. We essentially extracted the data that we are targetting and isolating it so when we run our next query it will be specifically searching through the clean dataset
* After creating the view I will run the select statement and have a WHERE clause that would point out inactive customers. As stated before inactive customers are classified as those who has not made a transaction in 6 months or roughly 182 days. We see the full query and results in image 4
* Extracting the data is simple, image 5 shows how extracting the data is done. Simply download the result dataset as a csv and then I would be able to share it with my manager or colleagues
* Just for showcasing the view creation, if we exit our worksheet and go to our database as seen on image 6. We can see that under the views dropdown, the view I created is there. In addition to that the definition that we defined in the previous image that created the view

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Create_View_Export_List/Export1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Create_View_Export_List/Export2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Create_View_Export_List/Export3.png?raw=true)
Image 4:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Create_View_Export_List/Export4.png?raw=true)
Image 5:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Create_View_Export_List/Export5.png?raw=true)
Image 6:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Create_View_Export_List/Export6.png?raw=true)

### No Blanks or Nulls in the dataset


https://github.com/Nwiradiradja/DataCleaning-Snowflake/assets/74621546/07f880da-1fbb-49da-9824-5136a15d0bd5

