-- 1. Составьте список пользователей users,
-- которые осуществили хотя бы один заказ (orders) в интернет-магазине.
select id, name, birthday from users where 
id in (select user_id from orders);

-- 2. Выведите список товаров products и разделов catalogs, 
-- который соответствует товару.

select products.name, catalogs.name
from products, catalogs where catalog_id = catalogs.id;

-- 3. (по желанию) Есть таблица рейсов flights (id, from, to) 
-- и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов (flights) с русскими названиями городов.

select id, (select name from cities where label = flights.from) as 'из', 
(select name from cities where label = flights.to) as 'в' from flights;
