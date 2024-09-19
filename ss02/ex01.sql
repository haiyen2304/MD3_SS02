CREATE DATABASE ss02;
USE ss02;
CREATE TABLE product(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE,
    created DATE
);
CREATE TABLE color(
	id  INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE,
    status bit(1) DEFAULT 1
);
CREATE TABLE size(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(5) UNIQUE,
    status bit(1) DEFAULT 1
);
CREATE TABLE product_detail(
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_id INT,
    price DOUBLE CHECK (price >0),
    stock INT check (stock >0),
    status bit(5) DEFAULT 1
);

ALTER TABLE product_detail ADD FOREIGN KEY (product_id) references product(id); -- cach 1
ALTER TABLE product_detail ADD CONSTRAINT fk_pd_p1 FOREIGN KEY (product_id) references product(id); -- cach 2
ALTER TABLE product_detail DROP CONSTRAINT fk_pd_p1;

ALTER TABLE product_detail ADD CONSTRAINT fk_pd_p2 FOREIGN KEY (color_id) REFERENCES color(id);
ALTER TABLE product_detail ADD CONSTRAINT fk_pd_p3 FOREIGN KEY (size_id) REFERENCES size(id);product_detail










