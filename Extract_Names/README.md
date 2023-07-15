# Extracting the First and Last names from the NAME Column
* Using SPLIT_PART()
* Combining TRIM() and SPLIT_PART() to separate the names while retaining the proper format

## Explanation
* Similar to the other tasks we are going to work on a new workshet and setup context as seen on image 1
* Let's view the NAME column again to analyze the format of the names. We see its formatted by Last name then First name with middle initial. In addition to that we're able to determine the delimeter which would be the '.'
* Now we will be uisng the SPLIT_PART() function to separate the names. First we declare the column followed by the delimeter which we already determined to be the ',' and then the part number. We will follow the same procedure with the last name as seen on image 3
* We now have the names separated, however we did not retain the proper formatting which we already handled in the previous task. We will replace the 'NAME' with the TRIM() function used earlier which results in separated names in proper format as seen on image 4
* Just for extra I also separated the middle initial from the first name by adding an additional SPLIT_PART() function but using the First_Name column we made and setting the delimeter as a whitespace as seen on image 5

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Extract_Names/Ex1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Extract_Names/Ex2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Extract_Names/Ex3.png?raw=true)
Image 4:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Extract_Names/Ex4.png?raw=true)
Image 5:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Extract_Names/Ex5.png?raw=true)
