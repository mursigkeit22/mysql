use shop;
select * from catalogs;

show tables;
select * from cat;
alter table cat rename rubrics;
show tables;
describe rubrics;
describe catalogs;
select * from rubrics;
select * from catalogs;

insert into rubrics values (null, 'books');

select name from catalogs union select name from rubrics;

select name from catalogs union all select name from rubrics;

select name from catalogs union select name from rubrics order by name;

(select name from catalogs limit 2) union all (select name from rubrics);

select * from products;

select * from catalogs union select id, name from products;








