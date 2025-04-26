create database assignment;
use assignment;
create table student
(rollno int,
name varchar(50),
address varchar(50),
phone int,
age int);
insert into student (rollno,name,address,phone,age) 
value(1,'Ram','Delhi',12334,18),
(2,'Ramesh','Gurgaon',67784,18),
(3,'Sujit','Rohtak',34763,20),
(4,'Suresh','Delhi',97832,18);
select * from student;
select * from student where age=20;
select name,address from student where rollno>3;
select * from student where rollno between 1 and 3;
select name,address from student where age between 20 and 30;
select * from student where name like 'S%';
select * from student where name like '%am%';
select name,address from student where age=18 or age=20;
select * from student where rollno=1 or rollno=4;
