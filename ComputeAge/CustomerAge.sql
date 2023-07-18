-- ********************************** Calculate Customers' Age ********************************** 



USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;
USE DATABASE PROJECT1;
USE SCHEMA PUBLIC;



SELECT to_date(DOB, 'MMMM DD, YYYY') as NewDOB , datediff('Year', to_date(DOB, 'MMMM DD, YYYY'), CURRENT_DATE()) as AGE
FROM CUSTOMERS;


SELECT 
    ID, 
    SPLIT_PART(TRIM(NAME, ' 0'), ',', 2) as First_Name,
    SPLIT_PART(TRIM(NAME, ' 0'), ',', 1) as Last_Name,
    SPLIT_PART(First_Name, ' ',-1) as Middle_Initial,
    EMAIL,
    to_date(DOB, 'MMMM DD, YYYY') as NewDOB,
    to_date(LASTTRANSACTION, 'AUTO') as NewLastTransaction,
	datediff(days, to_date(LASTTRANSACTION, 'AUTO'), CURRENT_DATE()) as NumberOfDaysSinceLastTrans,
    datediff('Year', to_date(DOB, 'MMMM DD, YYYY'), CURRENT_DATE()) as AGE,
    LTRIM(PHONE, '0+') as Standard_Phone,
    ADDRESS, 
    REGION , 
    COUNTRY,
    COMPANY
FROM
    CUSTOMERS

