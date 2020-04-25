-- 2. Выведите список товаров products и разделов catalogs, 
-- который соответствует товару.

select id, name, price,
(select name from catalogs where id=products.catalog_id) as catalogs
from products;
-- -------------------------------------------

select p.id, p.name, p.price, c.name as catalog from products as p
left join catalogs as c
on p.catalog_id = c.id;


-- 3. (по желанию) Есть таблица рейсов flights (id, from, to) 
-- и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов (flights) с русскими названиями городов.

use shop;
show tables;
select * from cities;
select id, (select name from cities where label = flights.from) as 'из', 
(select name from cities where label = flights.to) as 'в' from flights;

select f.id, cities_from.name as `from`, cities_to.name as `to`
from flights as f 
left join cities as cities_from on f.from = cities_from.label
left join cities as cities_to on f.to = cities_to.label;










