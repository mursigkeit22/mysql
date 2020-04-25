select null + 2;
create table tbl(idd int unsigned);
show databases;
use example;
show tables;
describe users;
describe tbl;
insert into tbl values();
select * from tbl;
truncate tbl;
alter table tbl change idd idd int unsigned not null;
select '2020-04-07 8.03.44';
-- // year-month-day
select '2020-04-07 8.03.44' - interval 1 day;
select '2020-22-07 8.03.44' - interval 1 day; -- // null
select '2020-04-30 8.03.44' + interval 1 week;
select '2020-04-30 8.03.44' + interval '1-1' year_week; -- // error
select '2020-04-30 8.03.44' + interval '1-1' year_month; 
select '2020-04-30 8.03.44' + interval '1-1-1' year_month_week; -- // error 

alter table tbl add collect json;
alter table tbl change idd id int unsigned not null;
describe tbl;
insert into tbl values(1, '{"first":"hello","second":"mur"}');
select * from tbl;
select collect->>"$.first" from tbl;
select collect->>"$.second" from tbl;
select collect->>"$.mur" from tbl; -- // null
show databases;


