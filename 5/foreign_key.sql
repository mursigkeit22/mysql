use shop;
select * from products;
select * from catalogs;
show create table products;

alter table products add foreign key (catalog_id) references catalogs (id) 
on delete no action on update no action;
describe products;
describe catalogs;
alter table products change catalog_id catalog_id bigint unsigned default null;
alter table products add foreign key (catalog_id) references catalogs (id) 
on delete no action on update no action;

alter table products drop foreign key products_ibfk_1;
alter table products add constraint fk_catalog_id foreign key (catalog_id)
references catalogs (id) on delete no action on update no action;

alter table products drop foreign key fk_catalog_id;


alter table products add constraint fk_catalog_id foreign key (catalog_id)
references catalogs (id) on delete cascade on update cascade;

update catalogs set id = 12 where name = 'processors';




