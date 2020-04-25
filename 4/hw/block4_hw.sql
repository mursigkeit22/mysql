
-- 1. ����������� ������� ������� ������������� � ������� users.
 use shop;

select
	floor( avg( timestampdiff(year, birthday, now()) ))
from
	users;
-- 2. ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
-- ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.
 select
	count(*),
	dayname(str_to_date(concat(year(now()), '-', month(birthday), '-', day(birthday)), '%Y-%m-%d')) as day_of_week
from
	users
group by
	day_of_week;

-- 3. (�� �������) ����������� ������������ ����� � ������� �������.

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