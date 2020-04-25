use sample;

drop table if exists cat;
create table cat (
id serial primary key,
name varchar(255) comment 'section name',
unique unique_name(name(10))
);

insert into cat(name) values('parrot');
insert into cat(name) values('cat');
insert into cat(name) values('dog');
insert into cat(name) values('pig');
insert into cat(name) values('turkey');

truncate shop.catalogs;
insert into shop.catalogs(name) values('table');
insert into shop.catalogs(name) values('chair');
insert into shop.catalogs(name) values('cupboard');


select * from shop.catalogs;

select * from cat;

insert into cat select * from shop.catalogs
on DUPLICATE KEY UPDATE name =shop.catalogs.name;
select * from cat;











