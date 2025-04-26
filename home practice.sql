create database Airline;
use Airline;
create table airline
( Booking_ID int,
Customer_name varchar(50),
Customer_age int,
Customer_address varchar(50));
select*from airline;

alter table airline add(Customer_dob int);
select*from airline;

insert into airline(Booking_ID,Customer_name,Customer_age,Customer_address)
value(1,'dev',20,'b-204'),
(2,'parshwa',30,'b-304'),
(3,'sumit',40,'b-404');
select*from airline;

insert into airline(Customer_dob)
value( 19/12/2004),
(13/10/2004),
(20/25/2003);
select*from airline1;

rename table airline to airline1;
select*from airline1;

update airline1 set Customer_name='hiren',Customer_age='55' where Booking_ID='3';
select*from airline1;

create table airline2(
Roll int,
marks int);
select*from airline2;

drop table airline2;


