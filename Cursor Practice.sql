
select * from employee;
DECLARE no_rows number ;
BEGIN
    UPDATE employee
    SET salary = salary + 1500;
    IF SQL%NOTFOUNT THEN
        dbms_output.put_line('No records Found');
    ELSIF SQL%FOUNT THEN
        no_rows :=SQL%ROWCOUNT;
        dbms_output.put_line(no_rows || 'records inserted');
    END IF;
END;
/

-----cursor-----

set serveroutput on
DECLARE 
    cus_id customers.id%type;
    cus_name customers.name%type;
    cus_website customers.website%type;
    CURSOR cur_customers is
        SELECT id,name,website from customers;
BEGIN
    OPEN cur_customers;
    LOOP
        FETCH cur_customers into cus_id,cus_name,cus_website;
        EXIT WHEN cur_customers%notfound;
        dbms_output.put_line(cus_id || ' ' || cus_name || ' ' || cus_website);
    END LOOP;
    CLOSE cur_customers;
END;
/