show databases;
/* to create data base */
create database dharm;

create database aarya;

use dharm;
/* to delete data base */
drop database aarya;

create table result

(ROLL int , name varchar(50),MARKS int);

use dharm;

/*to create table*/
create table custmertbl
( cus_id int not null auto_increment,
cus_firstname varchar (100) not null,
cus_surname varchar (100) not null,
primary key(cus_id)
);

/* add column in table*/
alter table result add ( address varchar (200));
use dharm;

/* add column */
use dharm;
alter table result add (father_name varchar(60) , mother_name varchar (60),dob date);

/*to rename a column*/
use dharm;
alter table result rename column address to location;

use dharm;
alter table result drop location;

/* to delete all data in table */
use dharm;
/* truncate table (table name); */


/*table and delete table */
create table xyz
(
number int
);
drop table xyz;

/* to rename a table name */
rename table result to student_info; 

use dharm;
/* to insert values in table*/
insert into student_info values ( 55 , 'sumit' , 100 , 'MK' , 'BR' , '2003-07-16');

select * from student_info;

/*if wants to  skip column*/
insert into student_info(roll,name)values (69,'rahul');
select * from student_info;

use custmertbl;
/*to add valus in column*/
insert into custmertbl value (07,'sumit','raval');
select * from custmertbl;

/* to add multiple values in table*/
insert into custmertbl(cus_firstname,cus_surname)value('heta','shah'),('dharm','shah'),
('princy','patel');
select * from custmertbl;

use dharm;

/*to update or modify table*/
update custmertbl set cus_surname = 'kumar' , cus_firstname='rahul' where cus_id=7;
select * from custmertbl;

/* delete info from table*/
delete from custmertbl where cus_id=10;
select * from custmertbl;

/* to delete all data to the table type ( delete from ( table name)*/

/* to show only columns in table*/
select cus_firstname from custmertbl;
select father_name from student_info;
use dharm;

/* to display full table */
select  * from (table name);

select * from student_info;

insert into student_info(ROLL,name) values (58,'liza'),(59,'princy'),(61,'aarya');



/* to show particular data*/
select * from student_info where ROLL=55;

select * from student_info where name = 'rahul';

/* for showing  greater number then input*/
select * from student_info where ROLL >54;

/* for showing less number then input*/
select * from student_info where ROLL <56;


/* foe showing greater = number then input*/
select * from student_info where ROLL>=55;

/* for showing less = number then input*/
select * from student_info where ROLL <=69;


/* for showing between numbers in input*/
select * from student_info where ROLL between 55 and 69;

select * from student_info;


delete from student_info where ROLL = 69;

/* for connecting column*/
select * from student_info where ROLL like '61%';