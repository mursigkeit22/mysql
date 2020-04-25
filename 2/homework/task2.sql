drop database if exists task;
create database task;
use task;

drop table if exists users;
create table users (
id serial primary key,
name varchar(255));

drop table if exists photo;
create table photo (
id serial primary key,
name varchar(255),
link varchar(255),
description varchar(255),
keywords varchar(255),
owner_id bigint unsigned not null,
added datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp
) ;

drop table if exists video;
create table video (
id serial primary key,
name varchar(255),
link varchar(255),
description varchar(255),
keywords varchar(255),
owner_id bigint unsigned not null,
added datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp
) ;

drop table if exists audio;
create table audio (
id serial primary key,
name varchar(255),
link varchar(255),
description varchar(255),
keywords varchar(255),
owner_id bigint unsigned not null,
added datetime default current_timestamp,
updated datetime default current_timestamp on update current_timestamp
) ;

show tables;