# Removing Unwanted Characters
* Using CONCAT() to visualize spaces
* Using TRIM() to remove the unwanted characters

## Explanation
* First we want to create a new worksheet and setup the context as seen on image 1.
* Let's take a glance at the table and column to see if we can identify some issues regarding characters for the names. We will do this by running a select statement followed by from as seen on image 2, we can see some extra spaces and numbers in the names.
* Even though we're able to see the numbers and spaces in the beginning of the name, we're not exaclty able to see the spaces after the name. To detect this we will use the CONCAT() function with a '>' before the name and a '<' after the name. As you can see on image 3, we see 'Curtis, Anthony T.' originally seemed like a name with no error. However after running the CONCAT function we see there is an extra space after the name.
* To break down the data cleaning process we're going to do this in steps, first let's handle the extra spaces. To do so we will be using the TRIM() function as seen on image 4. We use the TRIM function on the NAME and we will represent the column after the TRIM function as After. Now since we are not declaring the parameters it's default to spaces. We will also be using the same CONCAT() function to ensure that the spaces were properly handled. Now looking at image 4, the After column has the names with no extra spaces.
* Next we want to keep the resolved space issue but also fix the number issue. 'Bennett, Nasim Z.' has 3 0's next to his name. Now as stated earlier since we did not declare parameters in the TRIM() function it is default to space. To alter that we will add the parameters for space and digit as seen on image 5. Finally the name column is analyzed and clean properly.

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/RemoveChar/Remove1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/RemoveChar/Remove2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/RemoveChar/Remove3.png?raw=true)
Image 4:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/RemoveChar/Remove4.png?raw=true)
Image 5:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/RemoveChar/Remove5.png?raw=true)
