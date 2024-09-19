CREATE DATABASE ss02;
USE ss02;
CREATE TABLE users(
	id int AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(11) NOT NULL,
    permission BIT(1) DEFAULT 1,
    status bit(1) DEFAULT 1
);

CREATE TABLE history(
	id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    point int,
    examDate DATETIME
);

ALTER TABLE history ADD CONSTRAINT fk1 FOREIGN KEY (user_id) REFERENCES users(id);

CREATE TABLE exams(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    duration INT,
    status bit(1) DEFAULT 1
);

CREATE TABLE questions(
	id INT AUTO_INCREMENT PRIMARY key,
    content VARCHAR(255),
    exam_id INT,
    status bit(1) DEFAULT 1
);

ALTER TABLE questions ADD CONSTRAINT fk5 FOREIGN KEY (exam_id) REFERENCES exams(id);

CREATE TABLE answer (
	id int AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(255),
    question_id INT,
    answerTrue bit(1) DEFAULT 1
);

ALTER TABLE answer ADD CONSTRAINT fk3 FOREIGN KEY(question_id) REFERENCES questions(id);

CREATE TABLE history_detail(
	id INT AUTO_INCREMENT PRIMARY Key,
    history_id INT,
    question_id INT,
    resuslt bit(1) DEFAULT 1    
);

ALTER TABLE history_detail ADD CONSTRAINT fk2 FOREIGN KEY (history_id) REFERENCES history(id);
ALTER TABLE history_detail ADD CONSTRAINT fk4 FOREIGN KEY (question_id) REFERENCES questions(id);
