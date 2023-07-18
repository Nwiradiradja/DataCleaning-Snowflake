-- ********************************** Remove Unwanted Characters ********************************** 




USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;
USE DATABASE PROJECT1;
USE SCHEMA PUBLIC;

SELECT NAME
FROM CUSTOMERS;

SELECT NAME, CONCAT('>',NAME,'<')
FROM CUSTOMERS;

SELECT NAME, TRIM(NAME, ' 0') as After, CONCAT('>',After,'<')
FROM CUSTOMERS;
