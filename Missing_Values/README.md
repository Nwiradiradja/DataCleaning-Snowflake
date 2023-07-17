# Handling Missing Values
* Method 1 - > Using Deletion (Removing the Rows with Missing Values)
* Method 2 -> Imputation (Putting a fixed value for Nulls or Blanks)
* Using IFF() for Imputation

## Explanation
* First we are going to open a new worksheet, establish context and review the table where we want to handle the missing values. In our case, we will be working with the CUSTOMER table. As seen on image 1 we see some nulls or blanks in the EMAIl column for an example
* We can filter out and see only the rows where the email is blank or null with a WHERE clause as seen on image 2. There are a total of 3 rows with blank or null emails
* The first method we will use is deletion, removing the rows with blank or null emails. To perform this action we will alter the WHERE clause to be a WHERE NOT() as seen on image 3. If you look closely in the query details we have 19 rows in total as opposed to the 22 rows from image 1. Meaning the 3 rows with blank or null emails are deleted
* The second method we will use is imputation. We will insert a fixed value for any nulls or blanks. Since we already worked with EMAIL let's move over to Company as seen on image 4. Row ID 1 and 2 has null/blank values for the Company Column. To handle this we will use a IFF() function where we set the condition for the column, our condition is if Company is NULL or is blank represented by ' ', then we will insert the value of 'NA'. As seen on image 5 NA replaced the blank and null for Company

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Missing_Values/Missing1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Missing_Values/Missing2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Missing_Values/Missing3.png?raw=true)
Image 4:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Missing_Values/Missing4.png?raw=true)
Image 5:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Missing_Values/Missing5.png?raw=true)
