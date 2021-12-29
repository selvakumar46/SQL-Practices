-----------------PRODUCTS TABLE START--------------
CREATE TABLE PRODUCTS (ID NUMBER PRIMARY KEY,PRODUCT_NAME VARCHAR2(50),DESCRIBTION VARCHAR2(200),STANDARD_COST NUMBER,
                        LIST_PRICE NUMBER,CATOGORY_ID VARCHAR(30));
DESCRIBE PRODUCTS;

SELECT    * FROM PRODUCTS;

INSERT INTO PRODUCTS VALUES (101,'Vivo','(8+128)',51990,46990,'X70 Pro');
INSERT INTO PRODUCTS VALUES (102,'Vivo','(8+256)',54990,49990,'X70 Pro');
INSERT INTO PRODUCTS VALUES (103,'Vivo','(12+256)',57990,52990,'X70 Pro');
INSERT INTO PRODUCTS VALUES (104,'Vivo','(12+256)',84990,79990,'X70 Pro+');
INSERT INTO PRODUCTS VALUES (205,'Vivo','(8+128)',27990,24990,'V21e');
INSERT INTO PRODUCTS VALUES (206,'Vivo','(8+256)',35990,32990,'V21');
INSERT INTO PRODUCTS VALUES (207,'Vivo','(8+128)',32990,29990,'V21');
INSERT INTO PRODUCTS VALUES (208,'Vivo','(8+128)',34990,29990,'V20 Pro');
INSERT INTO PRODUCTS VALUES (309,'Vivo','(2+32)',11990,9490,'Y3s');
INSERT INTO PRODUCTS VALUES (310,'Vivo','(6+64)',19490,15490,'Y20T');
INSERT INTO PRODUCTS VALUES (311,'Vivo','(3+64)',13990,10990,'Y12');
INSERT INTO PRODUCTS VALUES (311,'Vivo','(4+32)',14990,12490,'Y12');
INSERT INTO PRODUCTS VALUES (312,'Vivo','(2+32)',9990,7990,'Y91i');
INSERT INTO PRODUCTS VALUES (413,'Vivo','(6+64)',19990,14990,'Z1x');
INSERT INTO PRODUCTS VALUES (414,'Vivo','(8+128)',24990,16990,'Z1x');
INSERT INTO PRODUCTS VALUES (415,'Vivo','(6+128)',20990,16990,'Z1x');
INSERT INTO PRODUCTS VALUES (416,'Vivo','(6+64)',17990,13990,'Z1Pro');
INSERT INTO PRODUCTS VALUES (417,'Vivo','(4+64)',15990,12990,'Z1Pro');
INSERT INTO PRODUCTS VALUES (518,'Vivo','(8+128)',20990,18990,'S1Pro');
INSERT INTO PRODUCTS VALUES (519,'Vivo','(4+128)',19990,16990,'S1');
INSERT INTO PRODUCTS VALUES (520,'Vivo','(6+64)',20990,14990,'S1');
-----------------PRODUCTS TABLE END----------------
-----------------EMPLOYEE TABLE STARTS-------------
CREATE TABLE EMPLOYEE_1 (ID NUMBER PRIMARY KEY,FIRST_NAME VARCHAR2(35),LAST_NAME VARCHAR2(35),E_MAIL VARCHAR2(50),PHONE_NUMBER NUMBER,
                        HIRE_DATE DATE,MANAGER_ID NUMBER,JOB_TITLE VARCHAR2(50));
DESCRIBE EMPLOYEE_1;

SELECT * FROM EMPLOYEE_1;
INSERT INTO EMPLOYEE_1 VALUES (1011,'Praveen','pandi','praveen@gmail.com',7482912798,'09-01-2019',1225,'Sales Executive');
INSERT INTO EMPLOYEE_1 VALUES (1012,'Selva','kumar','selva@gmail.com',2688436798,'10-01-2019',1225,'booking_incharge');
INSERT INTO EMPLOYEE_1 VALUES (1013,'Jaya','ganesh','jaya@gmail.com',9823451784,'20-01-2019',1226,'Sales Executive');
INSERT INTO EMPLOYEE_1 VALUES (1014,'Pothi','raj','raj@gmail.com',2538451973,'01-02-2019',1225,'Sales Executive');
INSERT INTO EMPLOYEE_1 VALUES (1015,'Vel','murugan','velu@gmail.com',8045372918,'14-02-2019',1226,'booking_incharge');
INSERT INTO EMPLOYEE_1 VALUES (1016,'Karthik','marieswaran','mari@gmail.com',9034526901,'28-02-2019',1226,'Sales Executive');
INSERT INTO EMPLOYEE_1 VALUES (1017,'Mari','raja','raja@gmail.com',8564702765,'01-03-2019',1227,'booking_incharge');
INSERT INTO EMPLOYEE_1 VALUES (1018,'Ajith','kumar','ajith@gmail.com',8740912650,'01-07-2019',1227,'Sales Executive');
-----------------EMPLOYEE TABLE END----------------

-----------------CUSTOMERS TABLE START-------------
CREATE TABLE CUSTOMERS (ID NUMBER PRIMARY KEY,NAME VARCHAR2(35),ADDRESS VARCHAR2(150),WEBSITE VARCHAR2(100),CREDIT_LIMIT NUMBER);
DESCRIBE CUSTOMERS;
INSERT INTO CUSTOMERS VALUES (80811,'selvakumar','102,near bus Stand,theni','Amazon',100000);
INSERT INTO CUSTOMERS VALUES (80812,'ganesan','1/87,main road,theni','Amazon',49000);
INSERT INTO CUSTOMERS VALUES (80813,'premkumar','3/876,koduvilarpatti,theni','Flipcart',100000);
INSERT INTO CUSTOMERS VALUES (80814,'cheran','75/746,kadamalaikundu,theni','flipcart',89000);
INSERT INTO CUSTOMERS VALUES (80815,'sanjay','35/659,east street,kadamalaikundu,theni','Flipcart',100000);
INSERT INTO CUSTOMERS VALUES (80816,'karthik','near kaliyamman kovil,theni','Amazon',100000);
INSERT INTO CUSTOMERS VALUES (80817,'senthil','vetri theatre opposite,theni','Amazon',60000);
INSERT INTO CUSTOMERS VALUES (80818,'kumaran','12/900,rvs nagar,dindigul','Flipcart',100000);
INSERT INTO CUSTOMERS VALUES (80819,'kumar','213/874,ns nagar,dindigul','Amazon',90000);
INSERT INTO CUSTOMERS VALUES (80820,'samy','bus stand back side,dindigul','Flipcart',90000);

SELECT * FROM CUSTOMERS;
-----------------CUSTOMERS TABLE END----------------

-----------------ORDERS TABLE START-----------------
CREATE TABLE ORDERS (ID NUMBER PRIMARY KEY,CUSTOMER_ID NUMBER,STATUS VARCHAR2(75),SALESMAN_ID NUMBER,ORDER_DATE DATE,
                        FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (ID),FOREIGN KEY (SALESMAN_ID) REFERENCES EMPLOYEE_1(ID));
DESCRIBE ORDERS;

INSERT INTO ORDERS VALUES (7331,80812,'packing',1013,to_date('01-12-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7332,80811,'packing',1011,to_date('01-12-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7333,80815,'delivered',1014,to_date('25-11-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7334,80816,'on road',1016,to_date('30-11-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7335,80820,'packing',1018,to_date('01-12-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7336,80813,'delivered',1018,to_date('25-11-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7337,80818,'returned',1014,to_date('10-11-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7338,80811,'packing',1016,to_date('01-12-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7339,80819,'on road',1011,to_date('30-11-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7340,80815,'on road',1016,to_date('30-11-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7341,80813,'delevered',1013,to_date('25-11-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7342,80816,'returned',1014,to_date('10-11-2021','dd-mm-yyyy'));
INSERT INTO ORDERS VALUES (7343,80818,'cancel order',1011,to_date('29-11-2021','dd-mm-yyyy'));

SELECT * FROM ORDERS;
-----------------ORDERS TABLE END-------------------

-----------------ORDER_ITEMS START------------------
CREATE TABLE ORDER_ITEM (ORDER_ID NUMBER,ITEM_ID NUMBER PRIMARY KEY,PRODUCT_ID NUMBER,QUANTITY NUMBER,UNIT_PRICE NUMBER,
                    FOREIGN KEY (ORDER_ID)REFERENCES ORDERS (ID),FOREIGN KEY (PRODUCT_ID)REFERENCES PRODUCTS (ID));
DESCRIBE ORDER_ITEM;


INSERT INTO ORDER_ITEM VALUES (7339,321,104,1,79990);
INSERT INTO ORDER_ITEM VALUES (7334,322,205,1,24990);
INSERT INTO ORDER_ITEM VALUES (7333,323,520,4,14990);
INSERT INTO ORDER_ITEM VALUES (7334,324,413,1,14990);
INSERT INTO ORDER_ITEM VALUES (7333,325,104,3,79990);
INSERT INTO ORDER_ITEM VALUES (7340,326,208,2,29990);
INSERT INTO ORDER_ITEM VALUES (7339,327,208,5,29990);
INSERT INTO ORDER_ITEM VALUES (7334,328,103,2,52990);
INSERT INTO ORDER_ITEM VALUES (7336,329,101,3,49990);
INSERT INTO ORDER_ITEM VALUES (7333,3221,104,6,79990);
INSERT INTO ORDER_ITEM VALUES (7337,3222,102,3,49990);
INSERT INTO ORDER_ITEM VALUES (7339,3223,103,8,52990);
INSERT INTO ORDER_ITEM VALUES (7334,3224,104,4,79990);


SELECT  *  FROM ORDER_ITEM;

-----------------ORDER ITEMS END--------------------
COMMIT;

--------------INNER JOIN---------------
SELECT PRODUCTS.ID,ORDER_ITEM.PRODUCT_ID FROM PRODUCTS INNER JOIN ORDER_ITEM ON PRODUCTS.ID = ORDER_ITEM.PRODUCT_ID ORDER BY ID; 

---------------------------------------

SELECT *  FROM EMPLOYEE_1 WHERE  JOB_TITLE LIKE 'Sales Executive%';
---------------------------------------

--------------------------------------------------------------------------------
SELECT P.ID,P.PRODUCT_NAME,P.CATOGORY_ID,ORD.ORDER_DATE,C.WEBSITE,O.QUANTITY
FROM  PRODUCTS P  INNER JOIN  ORDER_ITEM O ON P.ID=O.PRODUCT_ID  
INNER JOIN ORDERS ORD ON ORD.ID=O.ORDER_ID
INNER JOIN CUSTOMERS C ON C.ID=ORD.CUSTOMER_ID
INNER JOIN EMPLOYEE_1 E ON E.ID=ORD.SALESMAN_ID  WHERE O.QUANTITY>5
ORDER BY QUANTITY DESC ;
--------------------------------------------------------------------------------
SELECT P.PRODUCT_NAME,P.CATOGORY_ID,O.QUANTITY
FROM PRODUCTS P INNER JOIN ORDER_ITEM O ON P.ID=O.PRODUCT_ID
INNER JOIN ORDERS ORD ON ORD.ID=O.ORDER_ID
INNER JOIN CUSTOMERS C ON C.ID=ORD.CUSTOMER_ID
INNER JOIN EMPLOYEE_1 E ON E.ID=ORD.SALESMAN_ID;

---------------------------------------------------------------------------------
SELECT P.CATOGORY_ID,SUM(O.QUANTITY) AS "TOTAL_QUANTITY"
FROM PRODUCTS P INNER JOIN ORDER_ITEM O ON P.ID=O.PRODUCT_ID
INNER JOIN ORDERS ORD ON ORD.ID=O.ORDER_ID
INNER JOIN CUSTOMERS C ON C.ID=ORD.CUSTOMER_ID
INNER JOIN EMPLOYEE_1 E ON E.ID=ORD.SALESMAN_ID  GROUP BY p.catogory_id HAVING SUM(O.QUANTITY)>10 ;
----------------------------------------------------------------------------------
SELECT * FROM ORDER_ITEM;
----------------------------------------------------------------------------------
SELECT P.PRODUCT_NAME,P.CATOGORY_ID,P.LIST_PRICE,ORD.UNIT_PRICE FROM PRODUCTS P 
INNER JOIN ORDER_ITEMS ORD;


SELECT EMPLOYEE_NAME FROM EMPLOYEE_1 WHERE EMPLOYEE_ID=1010;
------------------------------------------------------------------------------------------------

DECLARE 
EMP_NAME  EMPLOYEE_1.FIRST_NAME%TYPE;
EMP_ID  EMPLOYEE_1.ID%TYPE:='&ID';
BEGIN
SELECT FTRST_NAME INTO EMP_NAME
FROM EMPLOYEE_1
WHWRE EMP_ID=ID;
 dbms_output.put_line('EMPLOYEE NAME IS:'||EMP_NAME);
 EXCEPTION 
 
END;
/
----------------------------------------------------------------------------------------------------------



select * from products1;

set serveroutput on
Declare
cursor c1 is select product_name,list_prize  from products1;
p_product products1.product_name%type;
p_list products1.list_prize%type;
BEGIN
open c1;
loop
Fetch c1 into p_product,p_list;
If P1%NOTFOUND THEN
EXIT;
END IF;
dbms_output.put_line('Name '|| p_product ||' prize '|| list_prize);
END loop;
close c1;
END;
/

select * from products1;

set serveroutput on
Declare
cursor curs is select product_name,list_price,catogory_id  from products;
p_product products.product_name %type;
p_list products.list_price %type;
model_name products.catogory_id %type;
BEGIN
open curs;
loop
Fetch curs into p_product,p_list;
If Prodoucts%NOTFOUND THEN
EXIT;
END IF;
 dbms_output.put_line('Name '|| p_product ||'Model_Name'|| model_name ||' prize '|| list_price);
END loop;
close curs;
END;
/
------------------------------------------------------------------------------------------------------------------------------------
DECLARE
   emp_id employee_1.id%type;
   emp_name emplyee_1.first_name%type;
   mob_number employee_1.phone_number%type;
   CURSOR emp_details is
      SELECT id,first_name, mobile_number FROM students;
BEGIN
   OPEN emp_details;
   LOOP
      FETCH emp_details into emp_id,emp_name, mob_number;
      EXIT WHEN emp_details%notfound;
      dbms_output.put_line(emp_id || ' ' || emp_name || ' ' ||  mob_number);
   END LOOP;
   CLOSE emp_details;
END;
/
