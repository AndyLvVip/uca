create database auth;
use auth;
show tables;
drop table if exists user;

create table user (
  username varchar(30) not null,
  password char(60) not null,
  created_on datetime(3) not null,
  primary key (username)
) engine = InnoDb, charset = utf8;