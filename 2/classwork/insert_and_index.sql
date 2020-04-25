use shop;
describe catalogs;
insert into catalogs(name) values ('cat food');
insert into catalogs values (0,'dog food');
insert into catalogs values (null, 'parrot food');
select * from catalogs;

describe products;
create index index_of_catalog_id on products (catalog_id);
drop index index_of_catalog_id on products;
create index index_of_catalog_id using btree on products (catalog_id);
create index index_of_catalog_id using hash on products (catalog_id);


insert into catalogs values(0,'processors');
insert into catalogs (name) values ('cat food');
insert into catalogs (name, id) values ('dog food', null);
insert into catalogs (id, name ) values (null, 'parrot food');
insert into catalogs values(default,'head phones');

-- insert into catalogs values
-- 	(default,'tables'),
-- 	(default,'tables'),
-- 	(default,'window frames'),
-- 	(default,'mice');  --error

insert  ignore into catalogs values -- ignore duble values without error
	(default,'tables'),
	(default,'tables'),
	(default,'window frames'),
	(default,'mice'); 

select * from catalogs;
select id from catalogs;
select name from catalogs;
select name, id from catalogs;












