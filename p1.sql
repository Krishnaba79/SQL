show databases;

create database lija;

create database princy;

use lija;

drop database lija;
USE princy;
create table marksheet 
(student_id INT,
student_name varchar(50),
roll_no INT,
age INT);


use princy;
create table cus_tbl
(cus_id int not null auto_increment,
cus_firstname varchar(100)not null,
cus_surname varchar(100)not null,
primary key(cus_id)
);

alter table marksheet add (address varchar (200));
use princy;

use princy;
alter table marksheet add (father_name varchar(60),mother_name varchar (60),dob date);

use princy;
alter table marksheet rename column address to location;

use princy;
alter table marksheet drop location;

use princy;
truncate table marksheet;

create table cus_tbl
(
number int 
);
drop table cus_tbl;

rename table marksheet to student_info;

drop table student_info;
use princy;

drop table marksheet;

drop table result;
drop table student_info;
drop table student;

use princy;
create table  result
(student_id INT,
student_name varchar(50),
roll_no INT,
age INT);


use princy;
insert into result values (1,'lija',2,18);
select*from result;

insert into result values (2,'krishna',3,19);
select*from result;

insert into result values(3,'princy',4,20),(4,'sumit',5,21);
select * from result;

select*from result;

insert into result (student_name) values ('heta');
select*from result;

update result set roll_no=9 where  student_name ='heta' ;
select*from result;

delete from result where student_name='lija';
select*from result;
delete from result where student_name='heta';

select*from result;
select student_id,student_name from result;
select*from result where student_id=3;

select*from result where student_name='lija'; 

select*from result where student_id=3;

select*from result where roll_no between 3 and  6;

select*from result where student_name like 'k%';

select*from result where student_id in (2,3);

use princy;
select age from result;
select distinct age from result;
select count(distinct age )from result;

select age from result order by age asc; 
select * from result order by age 


asc;
select * from result order by age desc;
/* default asc*/
select * from result order by  student_name  ;
select * from result order by student_name desc;


/* group by*/
select age from result where roll_no>3 group by age;

use princy;
create table emp(eid varchar(1000) ,name varchar(200),age int,salary varchar(200));
insert into emp value(401,'anu',22,9000),(402,'shane',29,8000),(403,'rohan',34,6000),
(404,'scott',44,9000),(405,'tiger',35,8000);
select*from emp;
select name,count(name) from emp where age>25 group by name;
select salary,count(salary) from emp where age>25 group by salary;

select name
	from emp
	group by(name)
	having sum(salary)>2000;
    
    select name from emp group by(name) having sum(age)>25;
    
select *from emp where salary>6000 limit 5; 
use princy;
select*from emp;

select empno as no , ename as name from employee;


create database vidhi;



















