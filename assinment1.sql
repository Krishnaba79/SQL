create database practice; 
use practice ;

create table Student1
( roll_no int,
name varchar(50),
address varchar(50),
phone int,
age int
check (age>=15));

drop table Student1;

insert into student1(roll_no,name,address,phone,age)
value(1,'ram','delhi',0123456789,16),
(2,'ramesh','gurgaon',1023456789,16),
(3,'sujit','rohtak',2146307,20),
(4,'suresh','dehli',2456854,18),
(5,'jai','lala',523652,18);

select * from student1;
use practice;
select * from student1 where age=20 ;
select name,address from student1 where roll_no>3;
select * from student1 where roll_no between 1 and 3;
select name,address from student1 where age between 20 and 30;
select * from student1 where name like 's%';
select * from student1 where name like '%am%';
select name,address from student1 where age=18 or age=20;
select * from student1 where roll_no=1 or roll_no=4;
