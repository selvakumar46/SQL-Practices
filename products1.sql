CREATE TABLE PRODUCTS1 (PRODUCT_ID NUMBER PRIMARY KEY,PRODUCT_NAME VARCHAR2(100),DESCRIPTION VARCHAR2(100),LIST_PRICE NUMBER);

DESCRIBE PRODUCTS1;

INSERT INTO PRODUCTS1 VALUES (101,'Vivo','Y12',10000);

SELECT * FROM PRODUCTS1;

--SET SERVEROUTPUT ON
--DECLARE 
-- A NUMBER:=0;
-- BEGIN 
--  WHILE (a<10)


DECLARE 
    A NUMBER:=0;
BRGIN
    FOR a in 1..10 LOOP
    a:=a+i
    dbms_output.put.line(a);
    end loop;
END;
/




  