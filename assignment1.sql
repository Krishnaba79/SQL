create database Emp;
use Emp;
create table employee
(SI_no int,
name varchar(100),
salary int,
age int);

select*from employee;

insert into  employee value(1,'harsh',2000,19),(2,'dhanraj',3000,20),(3,'ashish',1500,19),(4,'harsh',3500,19),(5,'ashish',1500,19);
select*from employee;
select salary , count(salary) from employee where age<20 group by salary;

select name, count(name) from employee where age<=20 group by name;


/*exercise 3*/

use Emp;
create table employee1(
empid int,
firstname varchar(20 ),
lastname varchar(20),
email varchar (40),
salary varchar(20),
deptid int);

insert into employee1(
empid, firstname,lastname,email,salary,deptid) values
(1,'john','king','john.king@abc.com',33000,1);
insert into employee1(
empid,firstname,lastname,deptid) values (2,'james','bond',1);
insert into employee1(empid,firstname,lastname,email,salary,deptid) values(3,'neena','kochhar','neena@test.com',17000,2);
insert into employee1(empid , firstname,lastname,email,salary,deptid) values(4,'lex','de haan','lex@test.com' , 15000, 1);
insert into employee1(empid,firstname,lastname,salary,deptid) values (5,'amit','patel',18000,1);
insert into employee1(empid,firstname,lastname,email,salary,deptid) values (6,'abdul','kalam','abdul#test.com',25000,2);
select*from employee1;

create table department1(
deptid int,
name varchar(20));

insert into department1(deptid, name) values (1,'finance') ,(2,'HR');

select*from department1;

/*exercise 4*/
/* Q1*/
select Name as 'name',
count(*) as 'no of employee'
from department1 inner join employee1
on employee1.deptid = department1.deptid
group by department1.deptid,name order by name;

/*Q2*/
select deptid , sum(salary) from employee1 group by deptid;


/*Q3*/
select firstname,deptid from employee1 where deptid in 
(select deptid from employee1 group by deptid having count(*)>2);
