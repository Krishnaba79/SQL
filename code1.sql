
use dharm;
create table student
(roll int , 
name varchar (25),
sub varchar(50)
);
alter table student add(marks int);

alter table student add(dev int);
alter table student add
(marks3 int ,
marks2 int,
marks1 int);

alter table student rename column marks1 to marks5;
alter table student drop dev;

create table xyz
(
number int
);
drop table xyz;

rename table student to gandastudent;

insert into gandastudent values ( 1, "dev" , "dharm" , 5, 6 , 7, 8);
select * from gandastudent;

insert into gandastudent(roll.name) values(102,"dharm");
select * from gandastudent;

insert into gandastudent ( roll,name,marks5)
value(1,"dev",500),
(2,"dharm",90),
(3,"parshwa",70);

update gandastudent set name ='sujal' , marks2=67 , marks=1 where roll=102;

select 
roll,
name,
'sub' from gandastudent;