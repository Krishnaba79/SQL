create database zeel;
use zeel;

create table Students(
Roll_No int not null ,
Name varchar(20),
Address varchar(255),
Phone varchar(13),
Age int );

select * from Students;

insert into Students value(1, 'Ram', 'Delhi', 'xxxxxxxxxx', 18);
insert into Students value(2, 'Ramesh', 'Gurgaon', 'xxxxxxxxxx', 21);
insert into Students value(3, 'Sujit', 'Rohtak', 'xxxxxxxxxx', 20);
insert into Students value(4, 'Suresh', 'Delhi', 'xxxxxxxxxx', 25);

-- age=20:
select 
*
 from 
 Students
 where Age=20;
 
 select
 Roll_No,Name,Address
 from
 Students
 where Roll_No>3;
 
 select
 Roll_No,Name,Address
 from
 Students
 where Roll_No>1 and Roll_No <3;
 
 select 
 Name,Address
 from 
 Students
 where Age between 20 and 30; 
 
  select 
 *
 from 
 Students
 where Name like'S%';
 
 select 
 *
 from 
 Students
 where Name like'%Am%';
 
 select 
 Name,Address
 from 
 Students
 where Age=18 Or Age=20;
 
 select 
 *
 from 
 Students
 where Roll_No=1 Or Roll_No=4;
 
select 
 *
 from 
 Students
 where  not Roll_No=1 ;
 
select 
 *
 from 
 Students
 order by Roll_No desc ;
 
 select 
 *
 from 
 Students
 where Roll_No is  null ;
 
 Delete from Students  ;
 
 select
 *
 from
 Students
 limit 3;
 
 select min(Roll_No)  
 from
 Students;
 
 select count(Roll_No)
 from Students;
 
 select avg(Roll_No),count(*)
 from Students;
 
 select sum(Roll_No),avg(Roll_NO),max(Roll_No)
 from Students;
 
 
select *
 from Students 
 where Roll_No in (1,3,4);
 
 select Roll_No as No,Name as Students_name
 from Students;
 
 select Students.Roll_No,newtablename.Name
 from students
 inner join newtablename on 
 students.Roll_No=newtablename.Roll_No;
 
 select Roll_No
 from
 Students
 union all
 select Roll_No from newtable
 order by Roll_No;
 
 select count(distinct ROLL_NO)
 from
 Students; 
 
 
 
 
 

