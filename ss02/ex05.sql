CREATE DATABASE ss02;
USE ss02;
CREATE TABLE user (
	id int AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(100),
    email VARCHAR(255),
    password VARCHAR(255),
    phone VARCHAR(11),
    permission bit(1) DEFAULT 1,
    status bit(1) DEFAULT 1
);

CREATE TABLE orders (
	id int AUTO_INCREMENT PRIMARY KEY,
	orderAt datetime,
    totals double,
    user_id int,
    status bit(1) default 1
);

ALTER TABLE orders add CONSTRAINT FK1 FOREIGN KEY (user_id) REFERENCES user(id);

CREATE TABLE address(
	id int AUTO_INCREMENT PRIMARY key,
    user_id INT,
    receiveAddress VARCHAR(100),
    receiveName VARCHAR(100),
    receivePhone VARCHAR(11),
    isDefault bit(1) DEFAULT 1
);

ALTER table address add constraint fk2 foreign key (user_id) references user(id);

CREATE TABLE catalog (
	id int auto_increment primary key,
    name varchar(100),
    status bit(1) default 1
);

create table book(
	id int auto_increment primary key,
    name varchar(100),
    price double,
    stock int check (stock >0),
    status bit(1) default 1

);

create table book_catalog(
	catalog_id int,
    book_id int ,
    primary key(catalog_id ,book_id)
);

alter table book_catalog add  constraint fk3 foreign key (catalog_id) references catalog (id);
alter table book_catalog add constraint fk4 foreign key (book_id) references book(id);

create table order_detail(
	id int auto_increment primary key,
    order_id int ,
    book_id int,
    quantity int,
    unit_price double
);

alter table order_detail add constraint fk5 foreign key (order_id) references orders(id);
alter table order_detail add constraint fk6 foreign key (book_id) references book(id);