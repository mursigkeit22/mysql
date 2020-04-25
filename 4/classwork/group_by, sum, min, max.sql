use shop;
select count(id) from catalogs;
select count(id) from users;
select count(*) from users;
select count(name) from users;

select catalog_id, count(*) as total from products group by catalog_id;

use example;
show tables;
create table aggregfunc (id int not null, value int default null);

INSERT INTO aggregfunc VALUES (1, 230);
INSERT INTO aggregfunc VALUES (2, NULL);
INSERT INTO aggregfunc VALUES (3, 405);
INSERT INTO aggregfunc VALUES (4, NULL);

SELECT * FROM aggregfunc;

select count(id), count(value), count(*) from aggregfunc;

use shop;
select count(distinct id) as total_ids, 
count(distinct catalog_id) as total_catalog_ids from products;

select min(price) as min, max(price) as max from products;

select catalog_id, min(price) as min, max(price) as max from products
group by catalog_id;

select id, name, price from products order by price desc limit 1;

select avg(price) from products;
select round(avg(price),2) from products;

select catalog_id, round(avg(price),2) from products group by catalog_id;

select catalog_id, round(avg(price*1.2),2) from products group by catalog_id;

select sum(price) from products;

select catalog_id, sum(price) from products group by catalog_id;













