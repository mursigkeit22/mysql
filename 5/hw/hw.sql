-- 1. ��������� ������ ������������� users,
-- ������� ����������� ���� �� ���� ����� (orders) � ��������-��������.
select id, name, birthday from users where 
id in (select user_id from orders);

-- 2. �������� ������ ������� products � �������� catalogs, 
-- ������� ������������� ������.

select products.name, catalogs.name
from products, catalogs where catalog_id = catalogs.id;

-- 3. (�� �������) ���� ������� ������ flights (id, from, to) 
-- � ������� ������� cities (label, name). ���� from, to � label �������� ���������� �������� �������, ���� name � �������. 
-- �������� ������ ������ (flights) � �������� ���������� �������.

select id, (select name from cities where label = flights.from) as '��', 
(select name from cities where label = flights.to) as '�' from flights;
