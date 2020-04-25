use shop;

drop table if exists catalogs;
create table catalogs (
id serial primary key,
name varchar(255) comment 'section name'
)
comment = 'shop sections';

insert into catalogs values(0,'processors');
insert into catalogs (name) values ('cat food');

insert into catalogs values();
insert into catalogs (name) values('');

insert into catalogs (name, id) values ('dog food', null);
insert into catalogs (id, name ) values (null, 'parrot food');
insert into catalogs values(default,'head phones');

insert into catalogs values();
insert into catalogs (name) values('');

select * from catalogs;

update catalogs set name = 'empty' where name = '' or name is null;

select * from catalogs;