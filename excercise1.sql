CREATE DATABASE xyz;

USE xyz;

create table employee(
	ID INT primary key,
    name varchar(50),
    salary INT
);

select * from employee;

insert into employee
(ID ,name , salary)
values
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000)

