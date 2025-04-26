create database ace;
use ace;
create table roomtable
(serial_no int(10),
name varchar(10),
contribution int(10),
product varchar(50));
select * from roomtable;
insert into roomtable(serial_no, name ,contribution, product)
value(1,'krish',1892,'milk');
insert into roomtable(serial_no, name, contribution, product)
value(2,'vivek', 1892,'spices');
insert into roomtable(serial_no, name, contribution, product)
value(3,'priyank',1892,'vegatable');
insert into roomtable(serial_no, name, contribution, product)
value(4,'priyansh',1892,'buttermilk');
insert into roomtable(serial_no, name, contribution, product)
value(5,'nilesh',1892,'nasta');
insert into roomtable(serial_no, name ,contribution, product)
value(6,'dishant',1892,'aata');
insert into roomtable(serial_no, name ,contribution, product)
value(7,'viral',1892,'fruit');
insert into roomtable(serial_no, name, contribution, product)
value(8,'zeel',1892,'ghee');
insert into roomtable(serial_no, name, contribution, product)
value(9,'parth',1892,'Vasan');
select * from roomtable;
