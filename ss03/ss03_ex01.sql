use ss03_01;
INSERT INTO color (id, Name, status)
VALUES 
(1, 'Red', TRUE),
(2, 'Blue', TRUE),
(3, 'Green', TRUE);

insert into size (id, name, status)
VALUEs
(1, 'X', TRUE),
(2, 'M', TRUE),
(3, 'L', TRUE),
(4, 'XL', TRUE),
(5, 'XXL', TRUE);

insert into product (id, name, created)
values
(1, 'Quần dài', '1990-12-05'),
(2, 'Áo dài', '2005-05-10'),
(3, 'Mũ phớt', '1995-07-07');

insert into product_detail(id, product_id, color_id, size_id,price,stock, status)
values
(1, 1, 1, 1, 1200, 5, TRUE),
(2, 2, 1, 1, 1500, 2, TRUE),
(3, 1, 2, 3, 500, 3, TRUE),
(4, 1, 2, 3, 1600, 3, FALSE),
(5, 3, 1, 4, 1200, 5, TRUE),
(6, 3, 3, 5, 1200, 6, TRUE),
(7, 2, 3, 5, 2000, 10, FALSE);

select * from product_detail
where price >1200;

select *from color;

select * from size;

select * from product_detail
WHERE product_id=1;


