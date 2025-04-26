CREATE DATABASE TESTING;
SHOW DATABASES;
DROP DATABASE TEST;
USE TESTING;
CREATE TABLE xyz(id int);
DROP TABLE xyz ;
CREATE TABLE SW_TABLE1(student_id INT, name VARCHAR(100),age INT);
ALTER TABLE SW_TABLE1 ADD(father_name VARCHAR(60),mother_name VARCHAR(60),DOB DATE);
ALTER TABLE student_info ADD(ADDRESS VARCHAR(200));
ALTER TABLE student_info RENAME COLUMN address TO location;
ALTER TABLE SW_TABLE1 DROP mother_name;
RENAME TABLE SW_TABLE1 TO student_info ;
INSERT INTO student_info VALUE(101,'ISHWA',17,'vivek kumar','2005-03-14','mandvi');
INSERT INTO student_info (student_id,name) VALUES (102, 'MOHIT');
INSERT INTO student_info (student_id,name) VALUES (103, 'koyna');
INSERT INTO student_info (student_id,name) VALUES (104, 'aditya');
CREATE TABLE cus_tbl(cus_id INT NOT NULL AUTO_INCREMENT,
CUS_FIRSTNAME VARCHAR (100) NOT NULL,
CUS_SURNAME VARCHAR (100) NOT NULL,
PRIMARY KEY (CUS_ID));
INSERT INTO cus_tbl
(cus_id,CUS_FIRSTNAME,CUS_SURNAME)
VALUES
(5,'ISHWA','RAMDEVPUTRAM'),
(6,'MOHIT','SURYAVANSHI'),
(7,'KOYNA','JANI');
UPDATE student_info set age=15 where student_id=102;
delete from student_info where student_id=102;
select student_id,age from student_info;
select * from student_info;
select * from student_info where student_id=101;
select student_id,dob from student_info where student_id=101;
select * from student_info where student_id<=103;
select * from student_info where student_id>101;
select * from student_info where student_id BETWEEN 101 and 104;
select * from student_info where name like 'a%';
select * from student_info where age in (17);
SELECT * FROM student_info;
select * from cus_tbl;