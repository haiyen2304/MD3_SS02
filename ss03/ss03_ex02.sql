CREATE database ss03_02;
use ss03_02;


CREATE table Customer(
 cID int primary key,
 Name VARCHAR(255),
 cAge TINYINT
);

insert into Customer (cID,Name,cAge)
values
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

create table `Order`(
	oID int primary key,
    cID int,
    foreign key (cID) references Customer(cID),
    oDate datetime,
    oTotalPrice INT
);
insert into `Order`(oID,cID,oDate,oTotalPrice)
values
(1, 1, '2006-03-21', 150000),
(2, 2, '2006-03-23', 200000),
(3, 1, '2006-03-16', 170000);

create table product(
	pID INT PRIMARY KEY,
    pName varchar(25),
    pPrice INT
);
insert into product(pID, pName,pPrice)
values
(1, 'May Giat', 300),
(2, 'Tu Lanh', 500),
(3, 'Dieu Hoa', 700),
(4, 'Quat', 100),
(5, 'Bep Dien', 200),
(6, 'May Hut Mui', 500);

create table orderDetail(
	oID INT,
    foreign key (oID) references `order`(oID),
    pID INT,
    foreign key (pID) references product (pID),
    odQTY INT
);

insert into orderdetail (oID,pID, odQTY)
values
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

select oID, oDate, oTotalPrice from `order`;

select customer.name as customerName , product.pName as productName 
from customer
join `order` on `order`.cid=customer.cid
join orderdetail on `order`.oID = orderdetail.oID
join product on orderdetail.pID = Product.pID;

select customer.name , customer.cID 
from customer
where cID not in (select cID FROM `order`);

SELECT `order`.oID,`order`.oDate,sum(orderDetail.odQty * Product.pPrice) as totalPrice
from `order`
JOIN orderDetail on orderDetail.oID= `order`.oID
join product on orderDetail.pID= product.pID
GROUP BY `order`.oID, `order`.oDate;

SELECT `order`.oID,`order`.oDate,(orderDetail.odQty * Product.pPrice) as totalPrice
from `order`
JOIN orderDetail on orderDetail.oID= `order`.oID
join product on orderDetail.pID= product.pID;















