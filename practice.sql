create database movie;
use movie;

create table actor(act_id int not null,act_fname varchar(50),act_lname varchar(50),act_gender varchar(5), primary key(act_id));
select * from actor;

create table director(dir_id int not null,dir_fname varchar(50),dir_lname varchar(50),primary key(dir_id));
select * from director;

create table movie(mov_id int not null,mov_title varchar(50),mov_year int,mov_time int,mov_lang varchar(50), mov_date date, mov_country varchar(50),primary key(mov_id));
select * from movie;

create table movie_direction(dir_id int not null,mov_id int not null,foreign key(dir_id) references director(dir_id), foreign key(mov_id) references movie(mov_id));
select * from movie_direction;

create table movie_cast(act_id int not null,mov_id int not null, role varchar(50),foreign key (act_id) references actor(act_id),foreign key(mov_id) references movie(mov_id));
select * from movie_cast;

create table reviewer(rev_id int not null,rev_name varchar(50),primary key(rev_id));
select * from reviewer;

create table genres(gen_id int not null,gen_title varchar(50),primary key(gen_id));
select * from genres;

create table movie_genres(mov_id int not null,gen_id int not null,foreign key(mov_id) references movie(mov_id), foreign key (gen_id) references genres(gen_id));
select * from movie_genres;


create table rating(mov_id int not null,rev_id int not null, rev_stars int, num_of_rating int, foreign key(mov_id) references movie(mov_id), foreign key (rev_id) references reviewer(rev_id));
select * from rating;


use movie;
insert into actor values(101,'James','Stewart','M'),
    (102,'Deborah','Kerr','F'),
    (103,'Peter','OToole','M'),
    (104,'James','Stewart','M'),
    (105,'Deborah','Kerr','F'),
    (106,'Peter','OToole','M'),
    (107,'James','Stewart','M'),
    (108,'Deborah','Kerr','F'),
    (109,'Peter','OToole','M'),
    (110,'James','Stewart','M'),
    (111,'Deborah','Kerr','F'),
    (112,'Peter','OToole','M'),
    (113,'James','Stewart','M'),
    (114,'Deborah','Kerr','F'),
    (115,'Peter','OToole','M'),
    (116,'James','Stewart','M'),
    (117,'Deborah','Kerr','F'),
    (118,'Peter','OToole','M'),
    (119,'James','Stewart','M'),
    (120,'Deborah','Kerr','F'),
    (121,'Peter','OToole','M'),
    (122,'James','Stewart','M'),
    (123,'Deborah','Kerr','F'),
    (124,'Peter','OToole','M');

insert into director values(201,'Alfred','Hitchcock'),
(202,'Jack','Clayton'),
(203,'David','Lean'),
(204,'Michael','Cimino'),
(205,'Milos','Forman'),
(206,'Ridley','Scott'),
(207,'Stanley','Kubrick'),
(208,'Bryan','Singer'),
(209,'Roman','Polanski'),
(210,'Paul	Thomas ','Anderson'),
(211,'Woody','Allen'),
(212,'Hayao','Miyazaki'),
(213,'Frank','Darabont'),
(214,'Sam','Mendes'),
(215,'James','Cameron'),
(216,'Gus','Van Sant'),
(217,'John','Boorman'),
(218,'Danny	','Boyle'),
(219,'Christopher','Nolan'),
(220,'Richard','Kelly'),
(221,'Kevin','Spacey'),
(222,'Andrei','Tarkovsky'),
(223,'Peter','Jackson');

insert into movie values(901,'Vertigo',1958,128,'English','1958-08-24','UK'),
(902,'The Innocents',1961,100,'English','1962-02-19','SW'),
(903,'Lawrence of Arabia',1962,216,'English','1962-12-11','UK'),
(904,'The Deer Hunter',1978,183,'English','1979-03-08','UK'),
(905,'Amadeus',1984,160,'English','1985-01-07','UK'),
(906,'Blade Runner',1982,117,'English','1982-09-09','UK'),
(907,'Eyes Wide Shut',1999,159,'English	',null,'UK'),
(908,'The Usual Suspects',1995,106,'English','1995-08-25','UK'),
(909,'Chinatown',1974,130,'English','1974-08-09','UK'),
(910,'Boogie Nights',1997,155,'English','1998-02-16','UK'),
(911,'Annie Hall',1977,93,'English','1977-04-20','USA'),
(912,'Princess Mononoke',1997,134,'Japanese','2001-10-19','UK'),
(913,'The Shawshank Redemption',1994,142,'English','1995-02-17','UK'),
(914,'American Beauty',1999,122,'English',null,'UK'),
(915,'Titanic',1997,194,'English','1998-01-23','UK'),
(916,'Good Will Hunting',1997,126,'English','1998-06-03','UK'),
(917,'Deliverance',1972,109,'English','1982-10-05','UK'),
(918,'Trainspotting',1996,94,'English','1996-02-23','UK'),
(919,'The Prestige',2006,130,'English','2006-11-10','UK'),
(920,'Donnie Darko',2001,113,'English',null,'UK'),
(921,'Slumdog Millionaire',2008,120,'English','2009-01-09','UK'),
(922,'Aliens',1986,137,'English','1986-08-29','UK'),
(923,'Beyond the Sea',2004,118,'English','2004-11-26','UK'),
(924,'Avatar',2009,162,'English','2009-12-17','UK'),
(926,'Seven Samurai',1954,207,'Japanese','1954-04-26','JP'),
(927,'Spirited Away',2001,125,'Japanese','2003-09-12','UK'),
(928,'Back to the Future',1985,116,'English','1985-12-04','UK'),
(925,'Braveheart',1995,178,'English','1995-09-08','UK');

insert into movie_direction values(201,901),
(202,902),
(203,903),
(204,904),
(205,905),
(206,906),
(207,907),
(208,908),
(209,909),
(210,910),
(211,911),
(212,912),
(213,913),
(214,914),
(215,915),
(216,916),
(217,917),
(218,918),
(219,919),
(220,920),
(218,921),
(215,922),
(221,923);

insert into movie_cast values(101,901,'John Scottie Ferguson'),
(102,902,'Miss Giddens'),
(103,903,'T.E. Lawrence'),
(104,904,'Michael'),
(105,905,'Antonio Salieri'),
(106,906,'Rick Deckard'),
(107,907,'Alice Harford'),
(108,908,'McManus'),
(110,910,'Eddie Adams'),
(111,911,'Alvy Singer'),
(112,912,'San'),
(113,913,'Andy Dufresne'),
(114,914,'Lester Burnham'),
(115,915,'Rose DeWitt Bukater'),
(116,916,'Sean Maguire'),
(117,917,'Ed'),
(118,918,'Renton'),
(120,920,'Elizabeth Darko'),
(121,921,'Older Jamal'),
(122,922,'Ripley'),
(114,923,'Bobby Darin'),
(109,909,'J.J. Gittes'),
(119,919,'Alfred Borden');


insert into reviewer values(9001,'Righty Sock'),
   (9002 ,'Jack Malvern'),
   (9003,'Flagrant Baronessa'),
   (9004,'Righty Sock'),
   (9005 ,'Jack Malvern'),
   (9006,'Flagrant Baronessa'),
   (9007,'Righty Sock'),
   (9008 ,'Jack Malvern'),
   (9009,'Flagrant Baronessa'),
   (9010,'Righty Sock'),
   (9011 ,'Jack Malvern'),
   (9012,'Flagrant Baronessa'),
   (9013,'Righty Sock'),
   (9014 ,'Jack Malvern'),
   (9015,'Flagrant Baronessa'),
   (9016,'Righty Sock'),
   (9017 ,'Jack Malvern'),
   (9018,'Flagrant Baronessa'),
   (9019,'Righty Sock'),
   (9020 ,'Jack Malvern'),
   (9021,'Flagrant Baronessa'),
   (9022,'Righty Sock'),
   (9023 ,'Jack Malvern'),
   (9024,'Flagrant Baronessa');
   
insert into genres values(1001,'Action'),
(1002,'Adventure'),
(1003,'Animation'),
(1004,'Biography'),
(1005,'Comedy'),
(1006,'Crime'),
(1007,'Drama'),
(1008,'Horror'),
(1009,'Music'),
(1010,'Mystery'),
(1011,'Romance'),
(1012,'Thriller'),
(1013,'War');


insert into movie_genres values(922,1001),
(917,1002),
(903,1002),
(912,1003),
(911,1005),
(908,1006),
(913,1006),
(926,1007),
(928,1007),
(918,1007),
(921,1007),
(902,1008),
(923,1009),
(907,1010),
(927,1010),
(901,1010),
(914,1011),
(906,1012),
(904,1013);

insert into rating values(901,9001,8.40,263575),
(902,9002,7.90,20207),
(903,9003,8.30,202778),
(906,9005,8.20,484746),
(924,9006,7.30,null),
(908,9007,8.60,779489),
(909,9008,null,227235),
(910,9009,3.00,195961),
(911,9010,8.10,203875),
(912,9011,8.40,null),
(914,9013,7.00,862618),
(915,9001,7.70,8300951),
(916,9014,4.00,642132),
(925,9015,7.70,81328),
(918,9016,null,580301),
(920,9017,8.10,609451),
(921,9018,8.00,667758),
(922,9019,8.40,511613),
(923,9020,6.70,13091);