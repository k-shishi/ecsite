drop database if exists ecdb;
create database ecdb;
use ecdb;

create table mst_user (
    id int(11) not null primary key auto_increment,
    user_name varchar(25) unique not null,
    password varchar(25) not null,
    full_name varchar(50) not null,
    is_admin tinyint(1) not null default 0
) engine=InnoDB default charset=utf8;

create table mst_goods (
    id int(11) not null primary key auto_increment,
    goods_name varchar(255) collate utf8_unicode_ci not null,
    price int(11) default 0,
    created_at datetime not null default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp
) engine=InnoDB default charset=utf8 collate=utf8_unicode_ci;

create table tbl_purchase (
    id int(11) not null primary key auto_increment,
    user_id int(11) not null,
    goods_id int(11) not null,
    goods_name varchar(255) not null,
    item_count int(11) default 0,
    total int(11) default 0,
    created_at datetime not null default current_timestamp
) engine=InnoDB default charset=utf8 collate=utf8_unicode_ci;

insert into mst_user(user_name, password, full_name, is_admin) values
("taro", "taropw", "Taro Yamada", 0),
("jiro", "jiropw", "Jiro Hayashi", 0),
("ichiko", "ichikopw", "Ichiko Kimura", 0),
("admin", "admin", "Administrator", 1);

insert into mst_goods(goods_name, price) values
("Tシャツ", 1000),
("スニーカー", 1500),
("コート", 12000);