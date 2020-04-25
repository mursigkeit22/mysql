-- 1. ����� � ������� users ���� created_at � updated_at ��������� 
-- ��������������. ��������� �� �������� ����� � ��������.

update users set created = now(), updated = now();

-- 2.������� users ���� �������� ��������������. 
-- ������ created_at � updated_at ���� ������ ����� VARCHAR 
-- � � ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10". 
-- ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.
update users set created_at = str_to_date(created_at, '%d.%m.%Y %h:%i' ),
updated_at = str_to_date(updated_at, '%d.%m.%Y %h:%i' );
alter table users change
created_at created_at datetime default current_timestamp,
change updated_at updated_at datetime default current_timestamp on update current_timestamp;

-- 3. � ������� ��������� ������� storehouses_products � ���� value ����� 
-- ����������� ����� ������ �����: 0, ���� ����� ���������� � ���� ����, 
-- ���� �� ������ ������� ������. ���������� ������������� ������ ����� �������, 
-- ����� ��� ���������� � ������� ���������� �������� value. 
-- ������� ������ ������ ���������� � �����, ����� ���� �������.
select * from storehouses_products order by value=0, value;
select * from storehouses_products order by if(value>0,0,1), value;



-- 4. (�� �������) �� ������� users ���������� ������� �������������,
-- ���������� � ������� � ���.
-- ������ ������ � ���� ������ ���������� �������� ('may', 'august')
select * from users where date_format(birthday, '%M') in ('may', 'august');

-- 5. (�� �������) �� ������� catalogs ����������� ������ ��� ������ �������. 
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
-- ������������ ������ � �������, �������� � ������ IN.

SELECT * FROM catalogs WHERE id IN (5, 1, 2) order by field (id, 5,1,2);






