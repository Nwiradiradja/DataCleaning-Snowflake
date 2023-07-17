# Removing Duplicates
* Analyzing the Dataset to detect duplicates
* Using COUNT() to filter out the rows with duplicates
* Utilzing RANK() to give each duplicate a value, we utilize the transaction date to be the deciding factor on which duplicate recieves the higher rank, 1 being the highest
* Incorporating QUALIFY to effectively remove the duplicates

## Explanation
* After creating a new worksheet and establishing context, we will analyze the dataset as seen on image 1. Please note that this method is only used because the dataset is thousands of rows long. If working with a larger dataset it is best to skip ahead to image 3,4,5
* Before moving on to the next steps theres some deciding factors that we need to make to proceed. For an example how do we want to remove duplicates or how do we classify which is duplicates. Also what Unique column can we use to detect these duplicates
* Looking closer at image 1, its clear that Shea Y. has 3 duplicates, however we cannot use her name because she spelled it different all 3 times. We could use her address but what if someone else shares that address. The only logical choice would be to use her Email because that was created specifically from and by them
* Now one last thing to decide before moving forward is out of these 3 duplicates how do we decide which are considered duplicates. The approach I went with is to use the LAST TRANSACTION. The reason for this is becasue the most recent transaction can indicate that this is the most recent Customer ID used
* Moving on we can filter out the email with duplicates by using the COUNT() function as seen on image 2
* Since this dataset is not thousands of rows long image 2 is one approach we can use to analyze duplicates. However if we were working with a larger dataset, we may not be able to simply glance and see the duplicates. That's where image 3 comes into play. We can use the HAVING statement for COUNT() to show only duplicates which are greater than 1
* Now to separate each duplicate from one another within the email group we will use the RANK() function. This function gives a unique ID for each duplicate within each email as seen on image 4
* To effectively remove the duplicates we want to only have the rows where the RANK = 1, which eliminates duplicates since it will show 1 per email. To do so we use the QUALIFY statement to only give us the rows where the rank = 1

Image 1:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Remove_Duplicates/Dup1.png?raw=true)
Transaction:

Image 2:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Remove_Duplicates/Dup2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Remove_Duplicates/Dup3.png?raw=true)
Image 4:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Remove_Duplicates/Dup4.png?raw=true)
Image 5:
![](https://github.com/Nwiradiradja/DataCleaning-Snowflake/blob/main/Remove_Duplicates/Dup5.png?raw=true)
