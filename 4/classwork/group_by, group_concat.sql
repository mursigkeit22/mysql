show databases;
use shop;
select * from products;
select distinct catalog_id from products;
select id, name, id%3 from products order by id%3;

select catalog_id from products group by catalog_id;

select * from users;
select id, name, substring(birthday, 1, 3) from users;
select id, name, substring(birthday, 1, 3) as decade from users;
select id, name, substring(birthday, 1, 3) as decade from users order by decade;

select substring(birthday, 1,3) as decade from users group by decade;
select count(*), substring(birthday, 1,3) as decade from users group by decade;
select count(*), substring(birthday, 1,3) as decade from users group by decade order by decade;
select count(*) as total, substring(birthday, 1,3) as decade from users group by decade order by total;


select count(*) from users;

select group_concat(name), substring(birthday, 1,3) as decade 
from users group by decade;

select group_concat(name, " ", id), substring(birthday, 1,3) as decade 
from users group by decade;

select group_concat(name, id separator " "), substring(birthday, 1,3) as decade 
from users group by decade;

select group_concat(name, " ", id order by id separator " "), substring(birthday, 1,3) as decade 
from users group by decade;




