use student_db;
create table student(
	id int auto_increment primary key,
    name varchar(100),
    dob DATE,
    age INT,
    phone varchar(11),
    gender bit(1)
);
select*from student;
insert into student (name, dob, age, phone, gender) 
values
('haiyen','1111-11-11',20,'0987654321',0) ,
('haiyen2','1111-11-11',21,'0987654321',0),
('haiyen3','1111-11-11',22,'0987654321',0),
('haiyen34','1111-11-11',19,'0987654321',0),
('haiyen30','1111-11-11',18,'0987654321',0);

UPDATE `student_db`.`student` 
SET `phone` = '0911111111' ,`dob` = '1222-11-22'
WHERE (`id` = '2');

select*from student;
select name,dob,age from student;
select DISTINCT name,dob,age from student;

select*from student
ORDER BY age desc, id asc;

select*from student
where age between 20 and 21;

select*from student
where dob between '2001-1-1' and '2005-12-31';

select*from student
where age in ('19','20');

select*from student
WHERE name LIKE 'yen%';

