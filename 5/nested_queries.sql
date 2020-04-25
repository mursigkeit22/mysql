select * from catalogs;

select id, name, catalog_id from products;
describe catalogs;
describe products;

select id, name, catalog_id from products where catalog_id = 1;

select id from catalogs where name = " processors";

update catalogs set name = "processors" where id = 22;

select id from catalogs where name = "processors";

update products set catalog_id = 22 where catalog_id = 1;

select id, name, catalog_id from products where 
catalog_id = (select id from catalogs where name = "processors");

select max(price) from products;

select id, name, catalog_id from products where
price = (select max(price) from products);

select id, name, catalog_id from products where price < (select avg(price) from products);


select id, name, catalog_id from products;
update products set catalog_id = 23 where catalog_id = 2;


select id, name, (select name from catalogs where id = catalog_id) as 'catalog' from products;


select products.id, products.name, 
(select name from catalogs where catalogs.id = products.catalog_id) as 'catalog' from products;


select id, name, catalog_id from products where catalog_id in(22,23, 33);

select id, name, catalog_id from products 
where catalog_id in(select id from catalogs);

select id, name, price, catalog_id from shop.products
where catalog_id = 23 and 
price < any(select price from products where catalog_id = 22);


select id, name, price, catalog_id from shop.products
where catalog_id = 23 and 
price > all(select price from products where catalog_id = 22);

select * from catalogs where
exists (select * from products where catalog_id = catalogs.id);

select * from catalogs where
exists (select 1 from products where catalog_id = catalogs.id);


select * from catalogs where
not exists (select 1 from products where catalog_id = catalogs.id);

select id, name, price,catalog_id from products where
(catalog_id, 5060.00) in (select id, price from catalogs);


select id, name, price,catalog_id from products where
row (catalog_id, 5060.00) in (select id, price from catalogs);

select * from catalogs;

select id, name, price,catalog_id from products where catalog_id = 22;

select avg(price) from (select * from products where catalog_id = 22) as prod;

select avg(price) from products where catalog_id = 22;


select catalog_id, min(price) from products group by catalog_id;

select avg(price) from 
(select min(price) as price from products group by catalog_id) as prod;















