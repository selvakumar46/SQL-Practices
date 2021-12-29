CREATE TABLE employee_details (emp_id INT,emp_name varchar(32),emp_mail_Id varchar(50),emp_phone_number INT);
describe employee_details;
INSERT INTO employee_details value(2933,Selvakumar,selvakumar.ganesan@chainsys.com,7339232720);
select * from employee_details;

Create table customer_details (ct_name varchar2(50),ct_address varchar2(100),ct_mobile_number int); 

describe customer_details;

select * from customer_details; 

insert into customer_details values ('Selvakumar','Kadamalaikunmdu,Theni',7339232720); 
update  customer_details set ct_id=2933 where ct_name='Selvakumar';
insert into customer_details values ('Jaya Ganesh','Kadamalaikundu,Theni',3894526342);
update  customer_details set ct_id=2934 where ct_name='Jaya Ganesh';
insert into customer_details values ('Pothiraj','KeelanmaraiNadu,Viruthunagar',9378458326);
update  customer_details set ct_id=2935 where ct_address='KeelanmaraiNadu,Viruthunagar';

insert into customer_details values ('Velmurugan','Viruthunagar',9276502518);
update  customer_details set ct_id=2932 where ct_address='Viruthunagar';

insert into customer_details values ('Pothiraj','Madurai',9378458326,2965);

Alter table customer_details add ct_id int;

insert into customer_details (ct_id) values (2946);
`
select distinct ct_name,ct_mobile_number from customer_details; -- show your mentioning coloumn only 

select * from customer_details where ct_name='Pothiraj' and ct_address='Madurai'  -- show only pothiraj row

select * from  customer_details where not ct_name='Pothiraj' --hide your mentioning row

select * from customer_details order by ct_name; -- show in orderwise in ascending;

select * from customer_details order by ct_name desc; -- show in descending order;
select ct_name,ct_id from customer_details where ct_id is not null; -- show not null values;

select ct_name,ct_id from customer_details where ct_id is null; -- show null values in ct_id;

select count(ct_mobile_number) from customer_details; --count mentioning column - count result is only not null values
select *from customer_details order by ct_id;
update customer_details set ct_name='customer_name '
rollback;
SELECT MIN(ct_id) AS customer  FROM customer_details; -- show min values in mentioining one and as is used for temp name for column name ;
                --Same format as max value find;
select count(ct_id) from customer_details; --- use counting -- only count at not null values 
select avg(ct_id) from customer_details; --- use find average value 
select sum(ct_id) from customer_details; --- use to sum of all rows in mentioning column;
select * from customer_details  where ct_name like '%kumar'; -- show in the end with kumar (a%) show Start with a names only
insert into customer_details values ('Sanjay','Theni,Theni',1339232721,2912);
insert into customer_details values ('Sanjaykumar','n.s.nagar,dindigul',1339232741,2913);

select * from customer_details  where ct_name like 'S%';-- Strats with S and ends with r showing;

select * from customer_details  where ct_name not like '%kumar'; -- showing without kumar ending;
select * from customer_details where ct_work_place not in ('Chainsys');
alter table customer_details add ct_work_place varchar2(50);
update customer_details set ct_work_place='Chainsys' where  ct_name='Selvakumar';
update customer_details set ct_work_place='Chainsys' where  ct_name='Jaya Ganesh';
update customer_details set ct_work_place='Chainsys' where  ct_name='Velmurugan';
update customer_details set ct_work_place='Chainsys' where  ct_name='Pothiraj';
update customer_details set ct_work_place='Infosys' where  ct_name='Sanjay';
update customer_details set ct_work_place='Infosys' where  ct_name='Sanjaykumar';

select * from customer_details ;
select * from customer_details where s_no  not between 3 and 6 order by s_no;-- show in the s.no only 3 to 6 (3,4,5,6, including ascending oreder;

alter table customer_details add s_no int;
update customer_details set s_no=1 where ct_name='Selvakumar';
update customer_details set s_no=2 where ct_name='Jaya Ganesh';
update customer_details set s_no=3 where ct_name='Velmurugan';
update customer_details set s_no=4 where ct_name='Pothiraj';
update customer_details set s_no=5 where ct_name='Sanjay';
update customer_details set s_no=6 where ct_name='Sanjaykumar';

select * from customer_details order by s_no;

select ct_name as customer_name , ct_id as id from customer_details; -- change the coloumn names temporarly as given names ;
SELECT ct_name,ct_address + ', ' + ct_id + ' ' + ct_work_place + ', ' + s_no AS Address
FROM customer_details;
--------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------