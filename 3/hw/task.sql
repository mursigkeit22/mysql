-- 1. ѕусть в таблице users пол€ created_at и updated_at оказались 
-- незаполненными. «аполните их текущими датой и временем.

update users set created = now(), updated = now();

-- 2.“аблица users была неудачно спроектирована. 
-- «аписи created_at и updated_at были заданы типом VARCHAR 
-- и в них долгое врем€ помещались значени€ в формате "20.10.2017 8:10". 
-- Ќеобходимо преобразовать пол€ к типу DATETIME, сохранив введеные ранее значени€.
update users set created_at = str_to_date(created_at, '%d.%m.%Y %h:%i' ),
updated_at = str_to_date(updated_at, '%d.%m.%Y %h:%i' );
alter table users change
created_at created_at datetime default current_timestamp,
change updated_at updated_at datetime default current_timestamp on update current_timestamp;

-- 3. ¬ таблице складских запасов storehouses_products в поле value могут 
-- встречатьс€ самые разные цифры: 0, если товар закончилс€ и выше нул€, 
-- если на складе имеютс€ запасы. Ќеобходимо отсортировать записи таким образом, 
-- чтобы они выводились в пор€дке увеличени€ значени€ value. 
-- Ќулевые запасы должны выводитьс€ в конце, после всех записей.
select * from storehouses_products order by value=0, value;
select * from storehouses_products order by if(value>0,0,1), value;



-- 4. (по желанию) »з таблицы users необходимо извлечь пользователей,
-- родившихс€ в августе и мае.
-- ћес€цы заданы в виде списка английских названий ('may', 'august')
select * from users where date_format(birthday, '%M') in ('may', 'august');

-- 5. (по желанию) »з таблицы catalogs извлекаютс€ записи при помощи запроса. 
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
-- ќтсортируйте записи в пор€дке, заданном в списке IN.

SELECT * FROM catalogs WHERE id IN (5, 1, 2) order by field (id, 5,1,2);






