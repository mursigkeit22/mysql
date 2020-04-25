-- 1 1. Составьте список пользователей users, 
-- которые осуществили хотя бы один заказ (orders) в интернет-магазине.

use shop;
select * from orders;
-- truncate orders;
select * from users;
select * from products;
select * from orders_products;
describe orders_products;

insert into orders(user_id)
select id from users where name = "Геннадий";

insert into orders_products (order_id, product_id, total)
select last_insert_id(), id, 2 from products where name = 'Intel Core i3-8100';

insert into orders(user_id)
select id from users where name = "Наталья";

insert into orders_products (order_id, product_id, total)
select last_insert_id(), id, 1 from products 
where name in( 'Intel Core i5-7400', 'Gigabyte H310M S2H');

insert into orders(user_id)
select id from users where name is null;

insert into orders_products (order_id, product_id, total)
select last_insert_id(), id, 1 from products 
where name in( 'AMD FX-8320', 'ASUS ROG MAXIMUS X HERO');


select * from orders;

select id, name, birthday from users 
where id in (select distinct user_id from orders);
---------------------------------
SELECT * FROM users AS u 
JOIN orders AS o; 

SELECT u.id, u.name, u.birthday FROM users AS u 
JOIN orders AS o 
ON u.id = o.user_id;


























