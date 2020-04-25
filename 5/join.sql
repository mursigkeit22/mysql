show databases;
use example;
show tables;


CREATE TABLE tbl_join1 (
  value VARCHAR(255)
);
INSERT INTO tbl_join1
VALUES ('fst1'), ('fst2'), ('fst3');

CREATE TABLE tbl_join2 (
  value VARCHAR(255)
);
INSERT INTO tbl_join2
VALUES ('snd1'), ('snd2'), ('snd3');


SELECT * FROM tbl_join1;
SELECT * FROM tbl_join2;


SELECT count(*) FROM tbl_join1,tbl_join2;
select tbl_join1.value FROM tbl_join1,tbl_join2;
select tbl_join2.value FROM tbl_join1,tbl_join2;
select tbl_join2.value, tbl_join1.value FROM tbl_join1,tbl_join2;


SELECT t1.value, t2.value FROM tbl_join1 AS t1, tbl_join2 AS t2;


use shop;
describe users;
select * from products;

select p.name, p.price, c.name from catalogs as c join products as p;
select * from catalogs as c join products as p;

show tables;
select * from orders;
select * from catalogs as c join orders as o;

select p.name, p.price, c.name from catalogs as c join products as p
where c.id = p.catalog_id;


select p.name, p.price, c.name from catalogs as c join products as p
on c.id = p.catalog_id;

SELECT * FROM catalogs;
SELECT
  *
FROM
  catalogs AS fst
JOIN
  catalogs AS snd;



SELECT
  *
FROM
  catalogs AS fst
JOIN
  catalogs AS snd
ON
  fst.id = snd.id;


SELECT
  *
FROM
  catalogs AS fst
JOIN
  catalogs AS snd
USING(id); 
 

SELECT
  *
FROM
  catalogs AS fst
JOIN
  catalogs AS snd
USING(id, name);


SELECT
  p.name,
  p.price,
  c.name
FROM
  catalogs AS c
LEFT JOIN
  products AS p
ON
  c.id = p.catalog_id;



SELECT
  p.name,
  p.price,
  c.name
FROM
  catalogs AS c
RIGHT JOIN
  products AS p
ON
  c.id = p.catalog_id;

 select count(*) from products;

update catalogs join products on catalogs.id = products.catalog_id 
set price = price * 0.9 where catalogs.name = 'mother boards';

select * from products;




