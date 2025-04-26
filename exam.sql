show databases;   /* to creat database */

create database dharm;
create database aarya;

drop database aarya;   /* to delete databse */

use dharm;
create table result  /* to create table*/
(ROll int,
name varchar(50),
Marks  int);

use dharm;
create table custmertbl  /* to create table*/
(cus_id int not null auto_increment,
cus_firstname varchar(100)not null,
cus_surname varchar(100)not null,
primary key(cus_id)
);

alter table result add(address varchar(200));   /*add to column in table*/
use dharm;

use dharm;
alter table result add(father_name varchar(60), mother_name varchar(60),dob date);  /* add column*/

use dharm;
alter table result rename column address to location;  /*to rename a column*/

use dharm;
alter table result drop location; /*to delete all data in table*/

use dharm;  /*truncate table(table name);*/
create table xyz
(
number int);
drop table xyz;   /*delete table*/

rename table result to student_info;  /*to rename a table name*/

use dharm;
insert into student_info values(55,'sumit',100,'MK','BR','2003-07-16');		/*to insert values in table*/
select*from student_info;

insert into student_info(roll,name) values(69,'rahul');    /*if wants to skip columns*/
select*from student_info;

use custmertbl ;
insert into custmertbl value(07,'sumit','rawal');    /*too add values in columns*/
select*from custmertbl ;

/*to add multiple value in table*/

insert into custmertbl (cus_firstname,cus_surname) value('heta' , 'shah'),('dharm' , 'shah'),('princy' , 'patel'); 
select*from custmertbl;

use dharm;
update custmertbl set cus_surname = 'kumar' , cus_firstname = 'rahul' where cus_id=7;  /*to update or modify table */
select*from custmertbl ;

delete from custmertbl where cus_id=10;  /*to delete into from  table*/
select*from custmertbl ;
/* to delete all data to the table type(delete from (table name)*/

select cus_firstname from custmertbl ;  /*to show only columns in table*/
select father_name from student_info;

select *from (student_info);  /*to display full table*/

select*from student_info;

insert into student_info(ROll,name) values(58,'liza'),(59,'princy'),(61,'aarya');	/*to show perticular data*/
select*from student_info where ROLL=55;
create database sumit;
use sumit;
create table student
(ROll_num int,NAME varchar(100),ADDRESS varchar(100), PHONE int(10),AGE int);
select*from student;

/*delete from studunt where age=18'*/
insert into student(Roll_num,NAME,ADDRESS,PHONE,AGE) value(1,'ram','delhi',1234567899,18),(2,'ramesh','gurgaon',1234567899,18),(3,'sujit','rohtak',1234567899,20),(4,'suresh','delhi',1234567899,25);
select*from student where AGE=20;
select name  ADDRESS from  student where Roll_num>4;
select*from studunt where Roll_num between 1 and 3;
select name ,address from studunt where AGE between 20 and 30;
select*from studunt where name like's%';

