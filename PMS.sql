CREATE TABLE USERS (ID NUMBER PRIMARY KEY ,CUSTOMER_NAME VARCHAR2(100)NOT NULL,Email VARCHAR2(100),PASSWORD VARCHAR2(15));
DESCRIBE USERS;
SELECT * FROM USERS;


INSERT INTO USERS VALUES(1,'Selvakumar','selvakumar@gmail.com','selvakumar1');
INSERT INTO USERS VALUES (2,'Premkumar','prem@gmail.com','premkumar1');

SELECT * FROM USERS WHERE Email='prem@gmail.com' and PASSWORD='premkumar1';

CREATE TABLE PRODUCTS2(PRODUCT_ID NUMBER PRIMARY KEY,PRODUCT_NAME VARCHAR2(100) NOT NULL,
                            CATOGORY_ID VARCHAR2(100)NOT NULL,PRODUCT_PRICE NUMBER);
                            
DESCRIBE PRODUCTS2;

CREATE SEQUENCE sequence_1
START WITH 1000 INCREMENT BY 1;


INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'OT Table','Hydralic',52008);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'OT Table','Semi Automatic',65000);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'OT Table','Electric with Manual Tables',75000);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'OT Light','LED Lights(Ceiling)',820);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'OT Light','LED Lights(Wall Mounted)',38000);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'Boyles Machine','Basic',65000);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'Boyles Machine','Panel type',85000);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'Vaporizer','Anaesthetic Vaporiser',65000);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'Ventillator','Ventillator',112000);
INSERT INTO PRODUCTS2 VALUES(sequence_1.nextval,'Multi Parameter Monitor','ETCo2',30000);
INSERT INTO PRODUCTS2 VALUES (sequence_1.nextval,'Autoclave','Vertical',100000);
INSERT INTO PRODUCTS2 VALUES (sequence_1.nextval,'Autoclave','Horizontal',120000);
INSERT INTO PRODUCTS2 VALUES (sequence_1.nextval,'ECG Machine','12 Channels',89999);
INSERT INTO PRODUCTS2 VALUES (sequence_1.nextval,'ECG Machine','6 Channels',58000);
INSERT INTO PRODUCTS2 VALUES (sequence_1.nextval,'ECG Machine','Singe Channel',22000);
INSERT INTO PRODUCTS2 VALUES (sequence_1.nextval,'Defibrillator','Monophasic',140000);
INSERT INTO PRODUCTS2 VALUES (sequence_1.nextval,'Defibrillator','Biphasic',185000);
INSERT INTO PRODUCTS2 VALUES (sequence_1.nextval,'Defibrillator','AED',130000);



DELETE FROM  PRODUCTS2 WHERE PRODUCT_ID=100; 

--update  PRODUCTS2 set catogory_id='12 Channels' where product_id=1009;

SELECT * FROM PRODUCTS2;

--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE PMS_CUSTOMERS(CUSTOMER_ID NUMBER PRIMARY KEY ,CUSTOMER_NAME VARCHAR2(100),ORDER_ITEM VARCHAR2(100),ORDER_DATE DATE,
                                );