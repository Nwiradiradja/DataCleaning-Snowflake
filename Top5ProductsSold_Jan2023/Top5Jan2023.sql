
-- GOAL: FIND THE LIST OF TOP 5 SOLD PRODUCTS PER CITY DURING JAN 2023 
 

USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;
USE DATABASE PROJECT1;
USE SCHEMA PUBLIC;



CREATE OR REPLACE TABLE ORDERS (
  ORDERID varchar(50),
  CUSTOMERID INT ,
  ORDERDATE varchar(50),
  SKUNUMBER varchar(50),
  ORDERCITY varchar(50) default NULL,
  UNITPRICE varchar(10) default NULL,
  QUANTITY varchar(10) default NULL,
  PRODUCT varchar(255) default NULL
) ;


 
INSERT INTO ORDERS (ORDERID,CUSTOMERID,ORDERDATE,SKUNUMBER,ORDERCITY,UNITPRICE,QUANTITY,PRODUCT)
VALUES
  ('Trans-5100',14,'Jan 12, 2023','NIG76IBE1YZ','NEWCASTLE',108.99,3,'STRIPED KNIT SWEATER,BLUE'),
  ('Trans-5101',20,'Jan 25, 2023','TOF73QIM8YT',' LIVERPOOL',202.99,3,'JOGGER WAIST TROUSER,RED'),
  ('Trans-5102',6,'Jan 20, 2023','SGU67EVA9HM','NEWCASTLE',367.99,3,'HIGH-WAIST TROUSER,GREEN'),
  ('Trans-5103',22,'Jan 21, 2023','LRR19TIT3TT','BIRMINGHAM',160.99,4,'CROPPED HOODIE,BLACK'),
  ('Trans-5104',18,'Jan 11, 2023','SWC07OOT1YE','MANCHESTER',182.99,2,'COLOUR BLOCK LEATHER JACKET,BROWN'),
  ('Trans-5105',5,'Jan 16, 2023','VLJ45YBV3SB','LONDON',101.99,2,'SHIRT WITH CONTRAST COLLAR,WHITE'),
  ('Trans-5106',11,'Jan 8, 2023','ZTY13JXH8FW','MANCHESTER',196.99,2,'SLIM-FIT SUIT BLAZER,NAVY'),
  ('Trans-5107',14,'Jan 5, 2023','SNE31JUO7BA','LONDON',178.99,4,'SOFT BOWLING BAG,GRAY'),
  ('Trans-5108',6,'Jan 19, 2023','GVP41WIJ4OU','LONDON',264.99,1,'STUDDED DENIM SKIRT,AQUA'),
  ('Trans-5109',6,'Jan 13, 2023','DIJ63KVR6FS','LONDON',149.99,4,'STUDDED DENIM SKIRT,OLIVE'),
  ('Trans-5110',17,'Jan 27, 2023','YLH92ELD1HN','SOUTHAMPTON   ',317.99,5,'OVERSIZED HOODIE,PINK'),
  ('Trans-5111',18,'Jan 21, 2023','YGF15PCW0YG','BIRMINGHAM',222.99,2,'CROPPED HOODIE,BLUE'),
  ('Trans-5112',9,'Jan 27, 2023','IJC78XRP8IV','BIRMINGHAM',355.99,3,'CROPPED HOODIE,RED'),
  ('Trans-5113',13,'Jan 24, 2023','BFA61TEZ4QB','LONDON',170.99,2,'FAUX SUEDE BOMBER JACKET,GREEN'),
  ('Trans-5114',14,'Jan 24, 2023','TZB01UYI1IG',' LIVERPOOL',105.99,4,'KNIT POLO SHIRT,BLACK'),
  ('Trans-5115',6,'Jan 19, 2023','DTU49HSU8EL','MANCHESTER',241.99,4,'STRIPED KNIT SWEATER,BROWN'),
  ('Trans-5116',21,'Jan 24, 2023','WMU25CRY2NM',' LIVERPOOL',271.99,4,'JOGGER WAIST TROUSER,WHITE'),
  ('Trans-5117',13,'Jan 18, 2023','JXU58RCC6IX',' LONDON',171.99,2,'HIGH-WAIST TROUSER,NAVY'),
  ('Trans-5118',13,'Jan 20, 2023','JZR61EKK8JG','LIVERPOOL',157.99,2,'FAUX SUEDE BOMBER JACKET,GRAY'),
  ('Trans-5119',14,'Jan 20, 2023','RTB15MDH8YC','LONDON',382.99,2,'COLOUR BLOCK LEATHER JACKET,AQUA'),
  ('Trans-5120',6,'Jan 22, 2023','AOG31PWX3DJ','BIRMINGHAM',135.99,1,'SHIRT WITH CONTRAST COLLAR,OLIVE'),
  ('Trans-5121',19,'Dec 31, 2022','TGD17SWE2AL','BIRMINGHAM',359.99,2,'SLIM-FIT SUIT BLAZER,PINK'),
  ('Trans-5122',18,'Jan 17, 2023','SHA06ADD5RX',' LONDON',165.99,4,'SOFT BOWLING BAG,BLUE'),
  ('Trans-5123',21,'Jan 9, 2023','LOU72RGC6VH','LONDON',317.99,3,'LONG DENIM BERMUDA SHORT,RED'),
  ('Trans-5124',4,'Jan 19, 2023','PFE06YUI2CT',' LONDON',382.99,3,'STUDDED DENIM SKIRT,GREEN'),
  ('Trans-5125',19,'Jan 23, 2023','UMC96SGW2SB',' LONDON',340.99,1,'FAUX SUEDE BOMBER JACKET,BLACK'),
  ('Trans-5126',4,'Jan 15, 2023','SLY30ICE7RA','BIRMINGHAM',299.99,5,'CROPPED HOODIE,BROWN'),
  ('Trans-5127',12,'Jan 17, 2023','BGG24DKG2BN','LONDON',391.99,4,'RIPPED JEANS,WHITE'),
  ('Trans-5128',17,'Jan 9, 2023','UJS16MCQ6IJ','LONDON',321.99,3,'SLIM FIT JEANS,NAVY'),
  ('Trans-5129',9,'Jan 11, 2023','QTW93LNN8XF','LONDON',276.99,2,'KNIT POLO SHIRT,GRAY'),
  ('Trans-5130',12,'Jan 14, 2023','XGB55LOE1JD','MANCHESTER',186.99,2,'STRIPED KNIT SWEATER,AQUA'),
  ('Trans-5131',15,'Jan 12, 2023','NVT72PTG8ET','NEWCASTLE',196.99,3,'JOGGER WAIST TROUSER,OLIVE'),
  ('Trans-5132',19,'Jan 11, 2023','OGS45KXG3MF','BIRMINGHAM',289.99,2,'HIGH-WAIST TROUSER,PINK'),
  ('Trans-5133',13,'Jan 17, 2023','LYK77BJW1JB','LIVERPOOL',251.99,2,'JOGGER WAIST TROUSER,BLUE'),
  ('Trans-5134',5,'Jan 28, 2023','YFS76GVV7LB','NEWCASTLE',275.99,3,'COLOUR BLOCK LEATHER JACKET,RED'),
  ('Trans-5135',2,'Jan 8, 2023','WJU50PWK6EO','SOUTHAMPTON   ',146.99,4,'SHIRT WITH CONTRAST COLLAR,GREEN'),
  ('Trans-5136',14,'Jan 28, 2023','MDQ13GNX7FR',' LONDON',195.99,1,'SLIM-FIT SUIT BLAZER,BLACK'),
  ('Trans-5137',18,'Jan 7, 2023','NPU77CKN6AY','LONDON',107.99,4,'SOFT BOWLING BAG,BROWN'),
  ('Trans-5138',3,'Jan 24, 2023','ZJN44NYI2UG','LONDON',290.99,5,'FAUX SUEDE BOMBER JACKET,WHITE'),
  ('Trans-5139',11,'Jan 25, 2023','WJS26LVH7NQ','SOUTHAMPTON   ',298.99,3,'STUDDED DENIM SKIRT,NAVY'),
  ('Trans-5140',8,'Jan 16, 2023','NSV27HQG4YD','MANCHESTER',320.99,1,'OVERSIZED HOODIE,GRAY'),
  ('Trans-5141',10,'Jan 14, 2023','YQJ22QFN2FP',' LONDON',148.99,2,'CROPPED HOODIE,AQUA'),
  ('Trans-5142',14,'Jan 18, 2023','ESP98KEX2HU','SOUTHAMPTON   ',301.99,4,'RIPPED JEANS,OLIVE'),
  ('Trans-5143',21,'Jan 28, 2023','EJK66QGF3YB',' LIVERPOOL',241.99,3,'JOGGER WAIST TROUSER,PINK'),
  ('Trans-5144',12,'Jan 18, 2023','GSS85DJW4HK','SOUTHAMPTON   ',398.99,3,'KNIT POLO SHIRT,BLUE'),
  ('Trans-5145',22,'Jan 23, 2023','EDK84GKT2EP','LIVERPOOL',168.99,2,'STRIPED KNIT SWEATER,RED'),
  ('Trans-5146',17,'Jan 10, 2023','INN03YPM1GJ',' LIVERPOOL',162.99,4,'JOGGER WAIST TROUSER,GREEN'),
  ('Trans-5147',20,'Dec 31, 2022','NCX71VFK6RD','NEWCASTLE',305.99,2,'HIGH-WAIST TROUSER,BLACK'),
  ('Trans-5148',4,'Jan 23, 2023','BJO47QKP7QX','BIRMINGHAM',116.99,2,'FAUX SUEDE BOMBER JACKET,BROWN'),
  ('Trans-5149',20,'Jan 3, 2023','KUF85YGX2UC',' LONDON',199.99,1,'COLOUR BLOCK LEATHER JACKET,WHITE'),
  ('Trans-5150',5,'Jan 21, 2023','MZH62NVJ0GV',' LIVERPOOL',236.99,4,'SHIRT WITH CONTRAST COLLAR,NAVY'),
  ('Trans-5151',11,'Jan 8, 2023','EZJ54BTP1OI','LIVERPOOL',368.99,3,'SLIM-FIT SUIT BLAZER,GRAY'),
  ('Trans-5152',2,'Jan 9, 2023','DEQ07YSM2JF','LIVERPOOL',354.99,2,'SOFT BOWLING BAG,AQUA'),
  ('Trans-5153',21,'Dec 31, 2022','UVN61JTD7CX','LONDON',290.99,5,'LONG DENIM BERMUDA SHORT,OLIVE'),
  ('Trans-5154',10,'Jan 5, 2023','QQY85GHC8BR','LIVERPOOL',230.99,1,'STUDDED DENIM SKIRT,PINK'),
  ('Trans-5155',4,'Jan 18, 2023','BRM15JLB2VI','LIVERPOOL',103.99,5,'JOGGER WAIST TROUSER,BLUE'),
  ('Trans-5156',19,'Jan 24, 2023','TNG64UCO9LN','NEWCASTLE',158.99,5,'CROPPED HOODIE,RED'),
  ('Trans-5157',17,'Jan 20, 2023','XCJ01NRP7IV',' LONDON',217.99,3,'RIPPED JEANS,GREEN'),
  ('Trans-5158',6,'Jan 19, 2023','CMN89LTI6GN','SOUTHAMPTON   ',208.99,3,'SLIM FIT JEANS,BLACK'),
  ('Trans-5159',9,'Jan 23, 2023','ISF40ETU7YJ','LIVERPOOL',397.99,3,'JOGGER WAIST TROUSER,BROWN'),
  ('Trans-5160',8,'Jan 30, 2023','POO52SIF7TO','LONDON',234.99,1,'STRIPED KNIT SWEATER,WHITE'),
  ('Trans-5161',14,'Jan 6, 2023','PXC65LHN6JO','LIVERPOOL',131.99,4,'JOGGER WAIST TROUSER,NAVY'),
  ('Trans-5162',12,'Jan 26, 2023','JYH00EIS4CD',' LONDON',128.99,4,'HIGH-WAIST TROUSER,GRAY'),
  ('Trans-5163',14,'Jan 23, 2023','XSV69GOY7HJ',' LONDON',248.99,3,'FAUX SUEDE BOMBER JACKET,AQUA'),
  ('Trans-5164',20,'Jan 20, 2023','CBZ93NIM4MQ','MANCHESTER',135.99,5,'COLOUR BLOCK LEATHER JACKET,OLIVE'),
  ('Trans-5165',11,'Jan 22, 2023','HRB15BST8HK',' LIVERPOOL',194.99,4,'SHIRT WITH CONTRAST COLLAR,PINK'),
  ('Trans-5166',14,'Jan 14, 2023','OBM87JSH4CW','LIVERPOOL',130.99,1,'SLIM-FIT SUIT BLAZER,BLUE'),
  ('Trans-5167',10,'Jan 15, 2023','KMT35GYI6VO','SOUTHAMPTON   ',178.99,2,'SOFT BOWLING BAG,RED'),
  ('Trans-5168',18,'Jan 8, 2023','PVT88HJZ6TS','MANCHESTER',227.99,3,'LONG DENIM BERMUDA SHORT,GREEN'),
  ('Trans-5169',4,'Jan 30, 2023','YZQ34DPS2GM','LIVERPOOL',287.99,3,'STUDDED DENIM SKIRT,BLACK'),
  ('Trans-5170',5,'Jan 22, 2023','XPI05NIW0GX','LONDON',171.99,3,'FAUX SUEDE BOMBER JACKET,BROWN'),
  ('Trans-5171',20,'Jan 19, 2023','YGU51JNV5EB','LIVERPOOL',264.99,4,'CROPPED HOODIE,WHITE'),
  ('Trans-5172',13,'Jan 14, 2023','HOB77GRS4VH','SOUTHAMPTON   ',151.99,3,'RIPPED JEANS,NAVY'),
  ('Trans-5173',7,'Jan 2, 2023','MRK86YCO6SW',' LIVERPOOL',279.99,2,'SLIM FIT JEANS,GRAY'),
  ('Trans-5174',2,'Jan 10, 2023','BAC37DTP6CR',' LONDON',363.99,3,'KNIT POLO SHIRT,AQUA'),
  ('Trans-5175',14,'Jan 18, 2023','YWC00ZMB6YT','BIRMINGHAM',380.99,5,'STRIPED KNIT SWEATER,OLIVE'),
  ('Trans-5176',1,'Jan 11, 2023','UBI98YUS4GS',' LIVERPOOL',112.99,4,'JOGGER WAIST TROUSER,PINK'),
  ('Trans-5177',20,'Jan 24, 2023','WTP76HVO1VS',' LONDON',322.99,4,'HIGH-WAIST TROUSER,BLUE'),
  ('Trans-5178',4,'Jan 3, 2023','QYP32XJT5MP','LONDON',141.99,4,'FAUX SUEDE BOMBER JACKET,RED'),
  ('Trans-5179',20,'Jan 27, 2023','KKI66IWS2MO','SOUTHAMPTON   ',111.99,3,'COLOUR BLOCK LEATHER JACKET,GREEN'),
  ('Trans-5180',22,'Jan 26, 2023','BVB73XSI1AS',' LONDON',275.99,2,'SHIRT WITH CONTRAST COLLAR,BLACK'),
  ('Trans-5181',10,'Jan 15, 2023','LDQ46YJE7VT',' LONDON',331.99,1,'SLIM-FIT SUIT BLAZER,BROWN'),
  ('Trans-5182',12,'Jan 22, 2023','OMI57ERD8EA',' LONDON',371.99,2,'FAUX SUEDE BOMBER JACKET,WHITE'),
  ('Trans-5183',20,'Jan 23, 2023','LVC87JGI8EB','BIRMINGHAM',324.99,2,'LONG DENIM BERMUDA SHORT,NAVY'),
  ('Trans-5184',3,'Jan 4, 2023','AIG71GIE5UA','LIVERPOOL',206.99,1,'STUDDED DENIM SKIRT,GRAY'),
  ('Trans-5185',4,'Jan 27, 2023','SKT21VOM9TF','LIVERPOOL',109.99,1,'OVERSIZED HOODIE,AQUA'),
  ('Trans-5186',19,'Jan 12, 2023','STH13VLX1ME','BIRMINGHAM',162.99,4,'CROPPED HOODIE,OLIVE'),
  ('Trans-5187',21,'Jan 2, 2023','FEN35UEP7YV','LONDON',268.99,4,'RIPPED JEANS,PINK'),
  ('Trans-5188',10,'Jan 23, 2023','RZJ65RFC5FB','NEWCASTLE',338.99,3,'SLIM FIT JEANS,BLUE'),
  ('Trans-5189',13,'Jan 8, 2023','OHQ05XAG5YD','LONDON',390.99,4,'KNIT POLO SHIRT,RED'),
  ('Trans-5190',10,'Jan 15, 2023','LHF74PPI1DJ','MANCHESTER',153.99,1,'STRIPED KNIT SWEATER,GREEN'),
  ('Trans-5191',5,'Jan 23, 2023','WVI35NFH2YY',' LONDON',176.99,1,'JOGGER WAIST TROUSER,BLACK'),
  ('Trans-5192',14,'Jan 9, 2023','GQG72ARX0CL','MANCHESTER',295.99,2,'HIGH-WAIST TROUSER,BROWN'),
  ('Trans-5193',9,'Jan 14, 2023','ESO82NPQ9GM','NEWCASTLE',126.99,4,'FAUX SUEDE BOMBER JACKET,WHITE'),
  ('Trans-5194',9,'Jan 18, 2023','RHZ84DGL1NY',' LONDON',354.99,2,'COLOUR BLOCK LEATHER JACKET,NAVY'),
  ('Trans-5195',10,'Jan 28, 2023','XKQ71YPX8SJ',' LONDON',380.99,2,'SHIRT WITH CONTRAST COLLAR,GRAY'),
  ('Trans-5196',12,'Jan 25, 2023','GBI16OWP4JO','LIVERPOOL',271.99,4,'SLIM-FIT SUIT BLAZER,AQUA'),
  ('Trans-5197',8,'Jan 25, 2023','KQZ67SOJ9SQ','LONDON',192.99,4,'SOFT BOWLING BAG,OLIVE'),
  ('Trans-5198',15,'Jan 18, 2023','WUW11HGO2AK','BIRMINGHAM',327.99,4,'LONG DENIM BERMUDA SHORT,PINK'),
  ('Trans-5199',11,'Jan 24, 2023','HNU71PMU9KN',' LIVERPOOL',300.99,2,'STUDDED DENIM SKIRT,BLUE'),
  ('Trans-5200',19,'Dec 31, 2022','TGD17SAB2AL','BIRMINGHAM',359.99,1,'STUDDED DENIM SKIRT,WHITE'),
  ('Trans-5201',15,'Dec 31, 2022','AGH74PPI1DJ','MANCHESTER',153.99,2,'KNIT POLO SHIRT,GREEN');




SELECT * 
FROM ORDERS;

SELECT SPLIT_PART(PRODUCT, ',', 1) as PRODUCT_DESCRIPTION,
trim(ORDERCITY) as ORDER_CITY,
to_date(ORDERDATE, 'Mon dd, yyyy') as ORDER_DATE,
ORDERID, QUANTITY
FROM ORDERS;



SELECT SPLIT_PART(PRODUCT, ',', 1) as PRODUCT_DESCRIPTION,
trim(ORDERCITY) as ORDER_CITY,
COUNT(ORDERID) as ORDER_COUNT,
SUM(QUANTITY) as QUANTITY_SOLD
FROM ORDERS  
WHERE to_date(ORDERDATE, 'Mon dd, yyyy') between '2023-01-01' and '2023-01-31'
GROUP BY PRODUCT_DESCRIPTION,ORDER_CITY;


SELECT SPLIT_PART(PRODUCT, ',', 1) as PRODUCT_DESCRIPTION,
trim(ORDERCITY) as ORDER_CITY,
COUNT(ORDERID) as ORDER_COUNT,
SUM(QUANTITY) as QUANTITY_SOLD
FROM ORDERS  
WHERE to_date(ORDERDATE, 'Mon dd, yyyy') between '2023-01-01' and '2023-01-31'
GROUP BY PRODUCT_DESCRIPTION,ORDER_CITY
ORDER BY QUANTITY_SOLD DESC
LIMIT 5;

