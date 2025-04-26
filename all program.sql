create database Project;
use Project;
create table project
(number int,
sub varchar(50),
marks int,
date int,
member varchar(50));
insert into project(number,sub,marks,date,member)
value
(1,'math',50,1999,5),
(2,'science',80,2004,8),
(3,'ss',90,1989,10),
(4,'english',60,2002,4),
(5,'hindi',70,2022,30);
select*from project;
select*from project where number<=3; #to find less then number
select*from project where number>=4; #to find more then  number	
select*from project where sub like 's%'; #to find the spell starts with s
select*from project where sub like '%sci%'; #to find the letter between the word
select*from project where sub like '_s%'; #to find letter at the second place
select sum(marks) as total_marks from project; #to have the total of the marks
select avg(marks) as total_marks from project; #to have average of the marks 
select * from project where number between 1 and 3; #to have number between 1 and 3
select * from project where number=1 or number=4;  #to have number 1 and 4



