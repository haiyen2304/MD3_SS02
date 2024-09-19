CREATE DATABASE ss02;
USE ss02;
CREATE TABLE product(
	pId INT AUTO_INCREMENT PRIMARY KEY,
    pName VARCHAR(255) UNIQUE,
    pPrice DOUBLE
);
CREATE TABLE customers(
	cId INT AUTO_INCREMENT PRIMARY KEY,
    cName VARCHAR (255) ,
    cAge INT 
);
CREATE TABLE orders(
	oId INT AUTO_INCREMENT PRIMARY KEY,
    cId INT,
    oDate DATETIME,
    oTotalPrice double check(oTotalPrice >0)    
);
CREATE TABLE orderDetail(
	oId INT,
    pId INT,
    PRIMARY KEY(oId,pId),
    odQuantity INT check(odQuantity>0)
);

ALTER TABLE orders ADD CONSTRAINT FK1 FOREIGN KEY (cId) REFERENCES customers(cId);
ALTER TABLE orderDetail ADD CONSTRAINT FK2 FOREIGN KEY(oId) REFERENCES orders(oId);
ALTER TABLE orderDetail ADD CONSTRAINT FK3 FOREIGN KEY(pId) REFERENCES product(pId);














