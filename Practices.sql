select count (*) as total_users
from (select distinct user_id from order_kfc);

select * from order_kfc;
---
--min---
select min(product_price) as lowest_price
from products_kfc ;
---max---
select max(product_price) as high_budget
from products_kfc;

select * from products_kfc;
-----view---
create view users_kfc as
select user_name,user_id from user_kfc
where user_name='mari';
select * from users_kfc;
--------------------
