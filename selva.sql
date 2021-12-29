-----------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE product_details AS
   -- Add  product
   PROCEDURE add_product(p_id products.id%type,
   p_name products.product_Name%type,
--   p_description   products.description%type,
   p_cost products.standard_cost%type,
   p_list_price  products.list_price %type,  
   p_catogory_id  products.catogory_id%type)   ;
   
   -- Removes a product
   PROCEDURE del_product(p_id  products.id%TYPE);
   --Lists all products
   
 
END product_details;
/
--select * from products;
------package body-----
--desc products
CREATE OR REPLACE PACKAGE body product_details  AS
   -- Adds a product
   PROCEDURE add_product(p_id products.id%type,
   p_name products.product_Name%type,
--   p_description   products.description%type,
   p_cost products.standard_cost%type,
   p_list_price  products.list_price %type,  
   p_catogory_id  products.catogory_id%type)  
    IS iv_error_code varchar2(20);
    BEGIN
      INSERT INTO products(id,product_Name,standard_cost,list_price,catogory_id)
         VALUES(p_id, p_name,p_cost, p_list_price, p_catogory_id);
         if Sql%found then
         dbms_output.put_line('record inserted');
         else
          dbms_output.put_line('record  not inserted');
          end if;
          iv_error_code:='success';
           dbms_output.put_line('status:'||' '||iv_error_code);
         
EXCEPTION
WHEN others then
       iv_error_code:='error';
       dbms_output.put_line('record  not inserted ||||sqlerrm');
       dbms_output.put_line('record  not inserted');

   
   COMMIT;
   END add_product;
   
   PROCEDURE del_product(p_id  products.id%type) IS
   BEGIN
      DELETE FROM products WHERE id =p_id ;
       IF SQL%FOUND THEN
         DBMS_OUTPUT.PUT_LINE('PRODUCT DELETED');
         ELSE
          DBMS_OUTPUT.PUT_LINE('PRODUCT NOT DELETE');
   END IF;
     
   END del_product;
   
   END  product_details;
   /
EXECUTE  product_details.add_product('621','Vivo',45000,48000,'X70 Pro');
EXECUTE product_details.del_product(621);
set serveroutput on;
desc products;

select * from products;
------------------------------------------------------------------------------------------------------------------------------------------------------------
-------employee---
select * from employee_1;
create or replace package emp_details as
procedure add_employee(emp_id employee_1.id%type,
emp_name employee_1.first_name%type ,
emp_lastName employee_1.last_name%type,
emp_email employee_1.e_mail%type ,
emp_no employee_1.phone_number%type,
hire_date employee_1.hire_date%type,
manager_id employee_1.manager_id%type,
emp_job employee_1.job_title%type);

end emp_details;
commit;
------body------
CREATE OR REPLACE PACKAGE body emp_details  AS
procedure add_employee(emp_id employee_1.id%type,
emp_name employee_1.first_name%type ,
emp_lastName employee_1.last_name%type,
emp_email employee_1.e_mail%type ,
emp_no employee_1.phone_number%type,
hire_date employee_1.hire_date%type,
manager_id employee_1.manager_id%type,
emp_job employee_1.job_title%type)
is iv_error_code varchar2(20);
begin
insert into employee_1 values(emp_id,emp_name,emp_lastName,emp_email,emp_no,hire_date,manager_id,emp_job);
  if Sql%found then
         dbms_output.put_line('employee  inserted');
         else
          dbms_output.put_line('employee not inserted');
          end if;
          iv_error_code:='success';
           dbms_output.put_line('status:'||' '||iv_error_code);
         
EXCEPTION
WHEN others then
       iv_error_code:='error';
       dbms_output.put_line('employee not inserted ||||sqlerrm');
       dbms_output.put_line('remployee not inserted');

   
   COMMIT;
   END add_employee;
   end emp_details;
   /
   execute emp_details.add_employee(1019,'vinoth','kamblee','vinoth@gmail.com',7445370925,'21-12-2021',1227,'Sales Executive');
  desc employees;
  select* from employee_1;
------------------------------------------------------------------------------------------------------------------------------------------------------------
------customer spcification---
select *from customers;

CREATE  or replace PACKAGE cus_details AS  
procedure add_customer(cus_id customers.id%TYPE, 
cus_name customers.name%type,
cus_address customers.address%type,
cus_web customers.website%type,
cus_creditLimit customers.credit_limit%type);

end cus_details;
/
-------package--------

CREATE OR REPLACE PACKAGE BODY cus_details AS
procedure add_customer (cus_id customers.id%TYPE, 
cus_name customers.name%type,
cus_address customers.address%type,
cus_web customers.website%type,
cus_creditLimit customers.credit_limit%type)
is iv_error_code varchar2(20);  
begin    
insert into customers values( cus_id,cus_name,cus_address,cus_web,cus_creditLimit );  
if Sql%found then
         dbms_output.put_line('customer inserted');
         else
          dbms_output.put_line('customer not inserted');
          end if;
          iv_error_code:='success';
           dbms_output.put_line('status:'||' '||iv_error_code);
         
EXCEPTION
WHEN others then
       iv_error_code:='error';
       dbms_output.put_line('customers not inserted ||||sqlerrm');
       dbms_output.put_line('customers not inserted');
       
 end add_customer;
 end cus_Details;
 /
 
execute cus_details.add_customer(80821,'vinoth','Sivagangai','Amazon',70900);
select * from customers;
--------------------------------------------------------------------------------------------------------------------------------------
--------order----
select * from orders;
CREATE OR REPLACE PACKAGE ord_details AS

   -- Adds a product
   
   PROCEDURE add_orders(ord_id orders.id%type,
   cus_id orders.customer_id%type,
   ord_status   orders.status%type,
   ord_salsman  orders.salesman_id %type,  
   ord_date  orders.order_date%type);
end ord_details;
/
----order body----
CREATE OR REPLACE PACKAGE body ord_details  AS
   -- Adds a product
   PROCEDURE add_orders(ord_id orders.id%type,
   cus_id orders.customer_id%type,
   ord_status   orders.status%type,
   ord_salsman  orders.salesman_id %type,  
   ord_date  orders.order_date%type)
    IS iv_error_code varchar2(20);
    BEGIN
      INSERT INTO orders (id,customer_id,status,salesman_id,order_date) VALUES(ord_id, cus_id, ord_status, ord_salsman, ord_date);
         if Sql%found then
         dbms_output.put_line('record inserted');
         else
          dbms_output.put_line('record  not inserted');
        
          iv_error_code:='success';
           dbms_output.put_line('status:'||' '||iv_error_code);
           end if;
EXCEPTION
WHEN others then
       iv_error_code:='error';
       dbms_output.put_line('record  not inserted ||||sqlerrm');
       dbms_output.put_line('record  not inserted');

   
   COMMIT;
   END add_orders;
   END  ord_details;
   /
   
commit;
execute ord_details.add_orders(7345,80818,'delevered',1011,'23-12-2021');
desc orders;
select*from orders;
create sequence ord1
start with 1 increment by 1;
--------------------------------------------------------------------------------------------------------------------------------------------------
set serveroutput on

select* from order_item;
------order items----
CREATE OR REPLACE PACKAGE orderItem_details AS
   -- Adds a product
   
   procedure add_orderItem(ord_id order_item.order_id%type,
   item_id order_item.item_id%type,
    item_productID  order_item.product_id%type,
   item_quantity  order_item.quantity %type,  
   item_unitPrice  order_item.unit_price%type);
end orderItem_details;
/
-----order items body----
CREATE OR REPLACE PACKAGE body orderItem_details  AS
procedure add_orderItem(ord_id order_item.order_id%type,
   item_id order_item.item_id%type,
    item_productID  order_item.product_id%type,
   item_quantity  order_item.quantity %type,  
   item_unitPrice  order_item.unit_price%type)
is iv_error_code varchar2(20);
begin
insert into order_item (order_id,item_id ,product_id ,quantity ,unit_price) values (ord_id ,item_id,item_productID,item_quantity,item_unitPrice);
  if Sql%found then
         dbms_output.put_line('order_items  inserted');
         else
          dbms_output.put_line('order_items not inserted');
          end if;
          iv_error_code:='success';
           dbms_output.put_line('status:'||' '||iv_error_code);
         
EXCEPTION
WHEN others then
       iv_error_code:='error';
       dbms_output.put_line('order_items not inserted ||||sqlerrm');
       dbms_output.put_line('order_items not inserted');

   
   
   END add_orderItem;
   end orderItem_details;
   /
COMMIT;

execute orderItem_details.add_orderItem(7336,3225,104,50,77000);
select * from order_item;
select * from product_catogories;
--------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE product_catogory AS

procedure add_catogory(cat_name product_catogories.catogory_name%type);
end product_catogory;

CREATE OR REPLACE PACKAGE body product_catogory  AS
procedure add_catogory(cat_name product_catogories.catogory_name%type)
is iv_error_code varchar2(20);
begin
insert into product_catogories (catogory_name) values (cat_name);
  if Sql%found then
         dbms_output.put_line('order_items  inserted');
         else
          dbms_output.put_line('order_items not inserted');
          end if;
          iv_error_code:='success';
           dbms_output.put_line('status:'||' '||iv_error_code);
         
EXCEPTION
WHEN others then
       iv_error_code:='error';
       dbms_output.put_line('order_items not inserted ||||sqlerrm');
       dbms_output.put_line('order_items not inserted');

   
   
   END add_orderItem;
   end orderItem_details;
   /
