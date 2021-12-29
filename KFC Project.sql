CREATE TABLE CUSTOMERS_1(CUSTOMER_ID NUMBER  PRIMARY KEY,FIRST_NAME VARCHAR2(100)NOT NULL,LAST_NAME VARCHAR2(100),PASSWORD VARCHAR2(100),
                        MAIL_ID VARCHAR2(100)UNIQUE NOT NULL,MOBILE_NUMBER NUMBER(10)UNIQUE NOT NULL,REGISTERD_DATE DATE DEFAULT SYSDATE);
DESCRIBE CUSTOMERS_1;
CREATE SEQUENCE CUSTOMERS_1_ID
START WITH 1 INCREMENT BY 1;

SELECT * FROM customers_1;

--DELETE FROM  CUSTOMERS_1 WHERE MAIL_ID='raj@gmail.com' ;
--INSERT INTO CUSTOMERS_1(CUSTOMER_ID,FIRST_NAME,LAST_NAME,PASSWORD,MAIL_ID,MOBILE_NUMBER) VALUES (CUSTOMERS_1_ID.nextval,'Selva','kumar','selva@1','sk@gmail.com','7339232720');
--INSERT INTO CUSTOMERS_1(CUSTOMER_ID,FIRST_NAME,LAST_NAME,PASSWORD,MAIL_ID,MOBILE_NUMBER) VALUES (CUSTOMERS_1_ID.nextval,'raj','pothi','selva@1','raj@gmail.com','9210312654');
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE PRODUCTS_1(PRODUCT_ID NUMBER PRIMARY KEY ,PRODUCT_NAME VARCHAR2(100) NOT NULL,PRODUCT_TYPE VARCHAR2(20)NOT NULL,
                        DESCRIPTION VARCHAR2(200),PRODUCT_PRICE NUMBER(8,2) );
                        
DESCRIBE PRODUCTS_1;
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE EMPLOYEE_2(EMP_ID NUMBER PRIMARY KEY,EMP_NAME VARCHAR2(100)NOT NULL,MOBILE_NUMBER NUMBER UNIQUE,HIRE_DATE DATE,EMP_DOB DATE);
DESCRIBE EMPLOYEE_2;
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE CART(ORDER_ID NUMBER PRIMARY KEY ,PRODUCT_ID NUMBER,CUSTOMER_ID NUMBER ,ORDER_DATE DATE DEFAULT SYSDATE,
                    FOREIGN KEY (PRODUCT_ID)REFERENCES PRODUCTS_1(PRODUCT_ID),FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS_1 (CUSTOMER_ID));
DESCRIBE CART;

--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ORDER_ITEMS_1(ORDER_ID NUMBER,ITEM_ID NUMBER PRIMARY KEY,PRODUCT_ID NUMBER,CUSTOMER_ID NUMBER,QUANTITY NUMBER,TOTAL_PRICE NUMBER,
                            STATUS VARCHAR2(100),EMP_ID NUMBER,FOREIGN KEY (EMP_ID)REFERENCES EMPLOYEE_2(EMP_ID),
                            FOREIGN KEY(ORDER_ID) REFERENCES CART(ORDER_ID), FOREIGN KEY (PRODUCT_ID)REFERENCES PRODUCTS_1(PRODUCT_ID),
                            FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS_1 (CUSTOMER_ID));
DESCRIBE ORDER_ITEMS_1;
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ADMIN(ADMIN_NAME VARCHAR2(100)UNIQUE,PASSWORD VARCHAR2(100));
DESCRIBE ADMIN;
--------------------------------------------------------------------------------------------------------------------------------

