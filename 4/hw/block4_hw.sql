
-- 1. ѕодсчитайте средний возраст пользователей в таблице users.
 use shop;

select
	floor( avg( timestampdiff(year, birthday, now()) ))
from
	users;
-- 2. ѕодсчитайте количество дней рождени€, которые приход€тс€ на каждый из дней недели. 
-- —ледует учесть, что необходимы дни недели текущего года, а не года рождени€.
 select
	count(*),
	dayname(str_to_date(concat(year(now()), '-', month(birthday), '-', day(birthday)), '%Y-%m-%d')) as day_of_week
from
	users
group by
	day_of_week;

-- 3. (по желанию) ѕодсчитайте произведение чисел в столбце таблицы.

select
	case
		when (
			select count(*)
		from
			students
		where
			id = 0) >0 then 0 when ((
			select count(*)
		from
			students
		where
			id < 0) % 2)!= 0 then -round(exp(sum(log(id))))
		else round(exp(sum(log(id))))
	end
from
	students;