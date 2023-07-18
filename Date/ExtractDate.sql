-- ********************************** Extract Date from a Text Column ********************************** 


USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;
USE DATABASE PROJECT1;
USE SCHEMA PUBLIC;


SELECT to_date(DOB, 'MMMM DD, YYYY') as NewDOB, to_date(LASTTRANSACTION, 'AUTO') as NewLastTransaction
FROM CUSTOMERS;