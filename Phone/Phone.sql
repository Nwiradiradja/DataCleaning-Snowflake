-- ********************************** Standarize Phone Column ********************************** 


USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;
USE DATABASE PROJECT1;
USE SCHEMA PUBLIC;


SELECT PHONE, LTRIM(PHONE, '0+') as Standard_Phone
FROM CUSTOMERS;

