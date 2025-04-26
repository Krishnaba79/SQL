create database asd;
use asd;
Create table Supervisor_table(
s_id INT primary key,
name varchar(20),
email varchar(20),
Contact_no INT(10),
Exam_id varchar(20));
select
*
from
Supervisor_table;
insert into Supervisor_table value(1,'Priyank','asd@123',1234,'2346');
insert into Supervisor_table value(2,'Harsh','asd@123',1345546452,'2454');
insert into Supervisor_table value(3,'Krish','mcj@123',0986557,'96775');
insert into Supervisor_table value(4,'Parth','mjd@123',1232534,'4546');
select
Exam_id
from
Supervisor_table;
select
Exam_id
from
Supervisor_table
where email='asd@123';
select name,email,Contact_no,Exam_id
from
Supervisor_table
where Exam_id<9000;

UPDATE Supervisor_table
SET email = 'qwe@123'
WHERE s_id = 4;

select 
 name
 from 
 Supervisor_table
 where Exam_id=2346 Or Exam_id=2454;