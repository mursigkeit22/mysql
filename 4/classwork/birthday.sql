use shop;
select * from users;

INSERT INTO users (name, birthday) VALUES
  ('��������', '1988-02-04'),
  ('����', '1998-03-20'),
  ('����', '2006-07-12');

SELECT name, birthday FROM users ORDER BY birthday;
select year(birthday) as birthday_year from users group by birthday_year 
order by birthday_year;

select any_value(name), year(birthday) as birthday_year from users group by birthday_year 
order by birthday_year;


select substring(birthday, 1,3) as decade, count(*) from users group by decade with rollup;