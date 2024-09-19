CREATE DATABASE ss02;
USE ss02;
CREATE TABLE catalog (
	id INT auto_increment primary key,
    name varchar(100),
    status bit(1) default 1
);
create table product (
	id INT auto_increment primary key,
    name varchar(100),
    price double ,
    stock int,
    catalog_id INT,
    status bit(1) default 1
);
alter table product add constraint fk1 foreign key (catalog_id) references catalog (id);

create table users(
	id int auto_increment primary key,
    fullName varchar(100),
    email varchar(255),
    password varchar(255),
    phone varchar(11),
    primession bit(1) DEFAULT 1,
    status bit(1) DEFAULT 1
);

CREATE table address(
	id int auto_increment primary key,
    user_id int,
    receiveAddress varchar(100),
    receiveName varchar(100),
    receivePhong varchar(11),
    isDefault bit(1) default 1
);

alter table address add constraint fk2 foreign key (user_id) references users(id);

create table wishlist (
	user_id int,
    product_id int,
    primary key (user_id,product_id)
);
alter table wishlist add constraint fk3 foreign key (user_id) references users(id);
alter table wishlist add constraint fk4 foreign key (product_id) references product(id);

create table shoppingCart(
	id int auto_increment primary key,
    user_id int,
    product_id int,
    quantity int
);
alter table shoppingCart add constraint fk5 foreign key (user_id) references users(id);
alter table shoppingCart add constraint fk6 foreign key(product_id) references product(id);

create table orders(
	id int auto_increment primary key,
    orderAt DATETIME,
    totals double,
    user_id int,
    status bit(1) default 1
);
alter table orders add constraint dk7 foreign key (user_id) references users(id);

create table order_detail(
	id int auto_increment primary key,
    order_id int,
    product_id int,
    quantity int,
    unit_price DOUBLE
);
alter table order_detail add constraint dk8 foreign key (order_id) references orders(id);
alter table order_detail add constraint dk9 foreign key(product_id) references product(id);