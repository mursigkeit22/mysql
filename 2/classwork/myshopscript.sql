use shop;

drop table if exists catalogs;
create table catalogs (
id serial primary key,
name varchar(255) comment 'section name',
unique unique_name(name(10))
)
comment = 'shop sections';



drop table if exists users;
create table users (
id serial primary key,
name varchar(255) comment 'client name',
birthday date,
created datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp
) comment = 'clients';




drop table if exists products;
create table products (
id serial primary key,
name varchar(255) comment 'product name',
description text,
price decimal (11,2),
catalog_id int unsigned,
created datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp,
key index_of_catalog_id (catalog_id)
);

drop table if exists orders;
create table orders (
id serial primary key,
user_id int unsigned,
created datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp,
key index_of_user_id(user_id)
);

drop table if exists orders_products;
create table orders_products (
id serial primary key,
order_id int unsigned,
product_id int unsigned,
total int unsigned default 1,
created datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp

) comment = 'order contents';

drop table if exists discounts;
create table discounts (
id serial primary key,
user_id int unsigned,
product_id int unsigned,
discount float unsigned comment '0.0- 1.0',
started datetime comment 'start of discount period',
finished datetime comment 'end of discount period',
created datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp,
key index_of_user_id(user_id),
key index_of_product_id(product_id)
) ; 


drop table if exists storehouses;
create table storehouses (
id serial primary key,
name varchar(255),
created datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp

);



drop table if exists storehouses_products;
create table storehouses_products (
id serial primary key,
storehouse_id int unsigned,
product_id int unsigned,
value int unsigned comment 'left in stock',
created datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp

) comment = 'stock';



