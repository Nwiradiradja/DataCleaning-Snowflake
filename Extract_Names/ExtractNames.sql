-- ********************************** Extract First and Last Names from "Name" Column ********************************** 

USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;
USE DATABASE PROJECT1;
USE SCHEMA PUBLIC;

SELECT NAME, SPLIT_PART(TRIM(NAME, ' 0'), ',', 2) as First_Name, SPLIT_PART(TRIM(NAME, ' 0'), ',', 1) as Last_Name, SPLIT_PART(First_Name, ' ',-1) as Middle_Initial
FROM CUSTOMERS;



