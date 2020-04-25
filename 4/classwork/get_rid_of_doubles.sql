use shop;

select group_concat(name), substring(birthday, 1,3) as decade
from users group by decade;

select count(*) as total, substring(birthday, 1,3) as decade
from users group by decade;

select count(*) as total, substring(birthday, 1,3) as decade
from users group by decade having total>2;

select * from users having birthday > '1990-01-01';

truncate products;


INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор Intel', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор Intel', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор AMD', 4780.00, 1),
  ('AMD FX-8320', 'Процессор AMD', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'B250, Socket 1151, DDR4, mATX', 5060.00, 2);
SELECT id, name, catalog_id FROM products;

select * from products;

SELECT name, description, price, catalog_id FROM products group by name, description, price, catalog_id;


describe products;

create table new_products like products;

describe new_products;

insert into new_products
select null, name, description, price, catalog_id,  now(), now()
from products group by name, description, price, catalog_id;

select * from new_products;

drop table products;

alter table new_products rename products;
show tables;
select * from products;


