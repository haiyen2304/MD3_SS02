CREATE DATABASE ss03_th1;
USE ss03_th1;
-- tạo các bảng; *******************************************************
CREATE TABLE class(
	classId int AUTO_INCREMENT primary key ,
    className varchar(255) Not null,
    startDate DATE not null,
    status bit(1) default 1
);
CREATE TABLE student(
	studentId INT AUTO_INCREMENT primary key,
    studentName varchar(255) not null,
    address VARCHAR(255),
    phone VARCHAR(255),
    status bit(1) DEFAULT 1,
    class_id int,
    FOREIGN KEY (class_id) references class(classId)
);
CREATE TABLE subject(
	subId INT  AUTO_INCREMENT PRIMARY key,
    subName varchar(255) not null,
    credit int default 1 check(credit >=1),
    status bit(1) default 1
);
CREATE table mark(
	markId int AUTO_INCREMENT PRIMARY key,
    subjectId INT,
    studentId INT,
    mark DOUBLE DEFAULT 0 check(mark>=0 and mark<=100),
    examtime int default 1,
    FOREIGN KEY (subjectId) REFERENCES subject(subId),
    FOREIGN KEY (studentId) REFERENCES student(studentId)
);
-- thêm dữ liệu vào bảng **********************************************
insert into class (className, startDate, status)
values
('toan','2024-09-19',1),
('vawn','2024-09-19',1);

INSERT into student (studentName, address, phone, status, class_id)
values
('yen','ha nam','0987654321',1,5),
('nam','ha noi','0987654322',0,6);

INSERT into subject (subName,credit,status)
values
('tienganh',3,1),
('hoa hoa',2,1);

INSERT into mark (subjectId, studentId, mark, examtime)
VALUES
(1,5,85,1),
(2,6,92,1);

SELECT * from class;
SELECT * FROM student;
SELECT * from subject;
SELECT * from mark;







