create database abc;
use abc;
CREATE TABLE roomtable (
    serial_no INT(20),
    name VARCHAR(10),
    contribution INT(10),
    product VARCHAR(50)
);
SELECT 
    *
FROM
    roomtable;
insert into roomtable(serial_no, name, contribution, product)
value (1, 'parth', 1234, 'milk');
insert into roomtable(serial_no, name, contribution, product)
value (2, 'harsh', 1342, 'milk');
insert into roomtable(serial_no, name, contribution, product)
value (3, 'priyank', 5231, 'milk');
insert into roomtable(serial_no, name, contribution, product)
value (4, 'viral', 5623, 'milk');
insert into roomtable(serial_no, name, contribution, product)
value (5, 'dishant', 2341, 'milk');
SELECT 
    *
FROM
    roomtable;
