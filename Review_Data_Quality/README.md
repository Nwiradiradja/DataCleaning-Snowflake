# Review Data Quality
* Analyzing the dataset to find data quality issues
* Data types, Nulls, Blanks, Duplicates
* Navigating Snowflake UI

## Explanation
* To analyze the data set we want to review and detect any data quality issues. This can be but not limited to; Data type errors, Nulls, blanks and duplicates. Our first step is to create a brand new worksheet and run a select statement to view the customer table as seen in image 1.
* Right off the bat we're able to see blanks and nulls in the dataset. A helpful feature in snowflake is the query details seen on the right side of the screen portrayed in image 2.
* Running the select statement allowed us to analyze and detect blanks and nulls and even duplicates. For data types we want to navigate to the left of the screen, select the database we are working on which in this case is named 'Project1'. Select tables and then select the table we are working on which is 'CUSTOMERS'. After clicking customers the columns with data types are displayed as seen in image 3. We can see LASTTRANSACTION and DOB is being used as a VARCHAR, which later on we will extract the date from the text field.
* Circling back to the Query Details, were able to easily view duplicates, blanks and nulls without having to specficially locate the row on the dataset as seen in the video at the bottom of this file. Just to name a few, the name column has 91% filled and 9% null, The email 'erat.eget@outlook.edu' is being duplicated/used 3 times.

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Review_Data_Quality/Review1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Review_Data_Quality/Review2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Review_Data_Quality/Review3.png?raw=true)
Query Details Video/Showcase:
https://github.com/Nwiradiradja/DataCleaning-Snowflake/assets/74621546/db150084-531a-4fee-9fd4-d362c8b2197e

