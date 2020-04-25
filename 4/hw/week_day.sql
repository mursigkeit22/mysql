use shop;
select name, birthday from users;
select year(now()), month(birthday), day(birthday) from users;

select 
date(concat_ws('-', year(now()), month(birthday), day(birthday)))
as day 
from users;

select 
date_format(date(concat_ws('-', year(now()), month(birthday), day(birthday))), '%W')
as day 
from users;

select count(*), date_format
(date
(concat_ws('-', year(now()), month(birthday), day(birthday))),
'%W')
as day from users group by day;
