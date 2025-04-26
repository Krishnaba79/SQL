CREATE DATABASE dharm;
use dharm;
create table student
(roll int,
name varchar(50),
marks int
);
drop database dharm;
create database dev;
use dev;
create table student
(roll int,
name varchar(25),
marks int,
address varchar(50));


alter table student add(sub varchar(25));

alter table student add(
marks1 int,
sub1 varchar(25));



alter table student rename column marks1 to marks3; 

alter table student drop marks3;

rename table student to student_bhai;

insert into student_bhai value(1,'dharm',5,'paldi','guj');



insert into student_bhai (roll,name,address) 
value(5,'the','vasna'),
(10,'legend','s.g.highway');
use dev;
select * from student_bhai;

update student_bhai set marks=85,sub='hello' where roll=5;
use  student_bhai;
select * from student_bhai where roll>1 ;
