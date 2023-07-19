# Top 5 Products Sold (JAN 2023)
* Data cleaning Techniques
* Data visulization
* Data exporting
* Extracting the Product description excluding the color
* Fixing structural format for ORDERCITY
* Converting the ORDERDATE to a date

## Explanation 
* Similar to previous tasks, I will be working on a new worksheet and establish the context. After doing that I create the table for ORDERS and inserted data all seen on image 1
* To ensure the data was inserted correctly I ran a select statement as seen on image 2. In addition to that I took this time to review and analyze for data quality issues. After careful review some things I set myself to do is extracting the product excluding the color, fixing the ORDERCITY column due to format issues like spacing and converting the ORDERDATE column to date
* In order to execute these tasks I followed the same procedures I did with earlier tasks, I used SPLIT_PART() to extract product without the color, I used TRIM() to fix the structural formatting for ORDERCITY, I used to_date() to convert to a date column as seen on image 3
* Now the main goal is to find the Top 5 products sold for 2023 to do so we will modify the query by filtering dates to only show the month of january, using COUNT() to count the orders for the products and using SUM() to add up the total units sold. In addition to that we are grouping by the PRODUCT_DESCRIPTION and ORDER_CITY as seen on image 4
* After completing that, we essentially have all the orders for the month of january, now to find the top 5 products sold, we're going to need to filter out the products to show onl the top 5. To do so I use a ORDER BY QUANTITY_SOLD so only the products with the highest quantity are shown. We use a LIMIT and set it to 5 to ensure only 5 of the top produvts are shown, thus the top 5 products for jan 2023 are seen on image 5

Image 1:
![](https://github.com/Nwiradiradja/Snowflake-Project/blob/main/Top5ProductsSold_Jan2023/Top1.png?raw=true)
Image 2:
![](https://github.com/Nwiradiradja/Snowflake-Project/blob/main/Top5ProductsSold_Jan2023/Top2.png?raw=true)
Image 3:
![](https://github.com/Nwiradiradja/Snowflake-Project/blob/main/Top5ProductsSold_Jan2023/Top3.png?raw=true)
Image 4:
![](https://github.com/Nwiradiradja/Snowflake-Project/blob/main/Top5ProductsSold_Jan2023/Top4.png?raw=true)
Image 5:
![](https://github.com/Nwiradiradja/Snowflake-Project/blob/main/Top5ProductsSold_Jan2023/Top5.png?raw=true)
