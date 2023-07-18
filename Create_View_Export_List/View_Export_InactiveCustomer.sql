-- ********************************** Export the list of Inactive Customers ********************************** 


USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;
USE DATABASE PROJECT1;
USE SCHEMA PUBLIC;

SELECT 
    ID, 
    SPLIT_PART(TRIM(NAME, ' 0'), ',', 2) as First_Name,
    SPLIT_PART(TRIM(NAME, ' 0'), ',', 1) as Last_Name,
    SPLIT_PART(First_Name, ' ',-1) as Middle_Initial,
    EMAIL,
    to_date(DOB, 'MMMM DD, YYYY') as NewDOB,
    to_date(LASTTRANSACTION, 'AUTO') as NewLastTransaction,
	datediff(days, to_date(LASTTRANSACTION, 'AUTO'), CURRENT_DATE()) as NumberOfDaysSinceLastTrans,
    IFF(COMPANY IS NULL OR COMPANY = '', 'NA', COMPANY) as COMPANY_NAME,
    LTRIM(PHONE, '0+') as Standard_Phone,
    ADDRESS, 
    REGION , 
    COUNTRY
FROM
    CUSTOMERS
 WHERE NOT(email is null OR email='');


            SELECT ID, NAME, EMAIL, LASTTRANSACTION, RANK() over (partition BY EMAIL ORDER BY to_date(LASTTRANSACTION, 'AUTO')desc) as RANK
            FROM CUSTOMERS
            QUALIFY RANK = 1;




WITH LISTIDs as (
  SELECT ID, NAME, EMAIL, LASTTRANSACTION, RANK() over (partition BY EMAIL ORDER BY to_date(LASTTRANSACTION, 'AUTO')desc) as RANK
            FROM CUSTOMERS
            QUALIFY RANK = 1
)
SELECT 
    ID, 
    SPLIT_PART(TRIM(NAME, ' 0'), ',', 2) as First_Name,
    SPLIT_PART(TRIM(NAME, ' 0'), ',', 1) as Last_Name,
    SPLIT_PART(First_Name, ' ',-1) as Middle_Initial,
    EMAIL,
    to_date(DOB, 'MMMM DD, YYYY') as NewDOB,
    to_date(LASTTRANSACTION, 'AUTO') as NewLastTransaction,
	datediff(days, to_date(LASTTRANSACTION, 'AUTO'), CURRENT_DATE()) as NumberOfDaysSinceLastTrans,
    IFF(COMPANY IS NULL OR COMPANY = '', 'NA', COMPANY) as COMPANY_NAME,
    LTRIM(PHONE, '0+') as Standard_Phone,
    ADDRESS, 
    REGION , 
    COUNTRY
FROM
    CUSTOMERS
 WHERE NOT(email is null OR email='') AND ID in (SELECT ID FROM LISTIDs);



CREATE OR REPLACE VIEW CUSTOMERS_VW AS (
WITH LISTIDs as (
  SELECT ID, NAME, EMAIL, LASTTRANSACTION, RANK() over (partition BY EMAIL ORDER BY to_date(LASTTRANSACTION, 'AUTO')desc) as RANK
            FROM CUSTOMERS
            QUALIFY RANK = 1
)
SELECT 
    ID, 
    SPLIT_PART(TRIM(NAME, ' 0'), ',', 2) as First_Name,
    SPLIT_PART(TRIM(NAME, ' 0'), ',', 1) as Last_Name,
    SPLIT_PART(First_Name, ' ',-1) as Middle_Initial,
    EMAIL,
    to_date(DOB, 'MMMM DD, YYYY') as NewDOB,
    to_date(LASTTRANSACTION, 'AUTO') as NewLastTransaction,
	datediff(days, to_date(LASTTRANSACTION, 'AUTO'), CURRENT_DATE()) as NumberOfDaysSinceLastTrans,
    IFF(COMPANY IS NULL OR COMPANY = '', 'NA', COMPANY) as COMPANY_NAME,
    LTRIM(PHONE, '0+') as Standard_Phone,
    ADDRESS, 
    REGION , 
    COUNTRY
FROM
    CUSTOMERS
 WHERE NOT(email is null OR email='') AND ID in (SELECT ID FROM LISTIDs));




 

 SELECT *
 FROM CUSTOMERS_VW
 WHERE NumberOfDaysSinceLastTrans > 182;


