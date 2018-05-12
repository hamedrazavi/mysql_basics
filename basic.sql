show databases;
create database test;
show databases;
use test;

create table students(
first_name varchar(30) not null,
last_name varchar(30) not null,
email varchar(60) null,
street varchar(50) not null,
city varchar(40) not null,
state char(2) not null default 'MI',
zip mediumint unsigned not null,
phone varchar(20) not null,
birth_date date not null,
sex enum('M', 'F') not null,
date_entered timestamp, 
lunch_cost float null,
student_id int unsigned not null auto_increment primary key
);
show databases;
describe students;
insert into students values('Dale', 'Cooper', 'dcooper@aol.com',
'123 Main St', 'Yakima', 'WA', 98901, '792-223-8901', "1959-2-22",
'M', NOW(), 3.50, NULL);
insert into students VALUES('Harry', 'Truman', 'htruman@aol.com',
'202 South St', 'Vancouver', 'WA', 98660, '792-223-9810', "1946-1-24",
'M', NOW(), 3.50, NULL);
INSERT INTO students VALUES('Bobby', 'Briggs', 'bbriggs@aol.com',
'14 12th St', 'San Diego', 'CA', 92101, '792-223-6178', "1967-5-24",
'M', NOW(), 3.50, NULL);
INSERT INTO students VALUES('Donna', 'Hayward', 'dhayward@aol.com',
'120 16th St', 'Davenport', 'IA', 52801, '792-223-2001', "1970-3-24",
'F', NOW(), 3.50, NULL);
INSERT INTO students VALUES('Audrey', 'Horne', 'ahorne@aol.com',
'342 19th St', 'Detroit', 'MI', 48222, '792-223-2001', "1965-2-1",
'F', NOW(), 3.50, NULL);
INSERT INTO students VALUES('James', 'Hurley', 'jhurley@aol.com',
'2578 Cliff St', 'Queens', 'NY', 11427, '792-223-1890', "1967-1-2",
'M', NOW(), 3.50, NULL);
INSERT INTO students VALUES('Lucy', 'Moran', 'lmoran@aol.com',
'178 Dover St', 'Hollywood', 'CA', 90078, '792-223-9678', "1954-11-27",
'F', NOW(), 3.50, NULL);
INSERT INTO students VALUES('Tommy', 'Hill', 'thill@aol.com',
'672 High Plains', 'Tucson', 'AZ', 85701, '792-223-1115', "1951-12-21",
'M', NOW(), 3.50, NULL);
INSERT INTO students VALUES('Andy', 'Brennan', 'abrennan@aol.com',
'281 4th St', 'Jacksonville', 'NC', 28540, '792-223-8902', "1960-12-27",
'M', NOW(), 3.50, NULL);
select * from students;

create table class(
name varchar(30) not null,
calss_id int unsigned not null auto_increment primary key
);

create table tests(
test_date Date not null,
test_type enum('T', 'Q') not null, 
class_id int unsigned not null,
test_id int unsigned not null auto_increment primary key
);

show tables;

create table scores(
student_id int unsigned not null,
event_id int unsigned not null,
score int not null,
primary key(event_id, student_id)
);

create table absences(
student_id int unsigned not null,
absence_date date not null,
primary key(student_id, absence_date)
);

alter table tests add max_score int not null after test_type;
describe tests;

insert into tests values
('2014-8-25', 'Q', 15, 1, NULL),
('2014-8-27', 'Q', 15, 1, NULL),
('2014-8-29', 'T', 30, 1, NULL),
('2014-8-29', 'T', 30, 2, NULL),
('2014-8-27', 'Q', 15, 4, NULL),
('2014-8-29', 'T', 30, 4, NULL);

select * from tests;
show tables; 


insert into scores values
(1, 1, 15),
(1, 2, 14),
(1, 3, 28),
(1, 4, 29),
(1, 5, 15),
(1, 6, 27),
(2, 1, 15),
(2, 2, 14),
(2, 3, 26),
(2, 4, 28),
(2, 5, 14),
(2, 6, 26),
(3, 1, 14),
(3, 2, 14),
(3, 3, 26),
(3, 4, 26),
(3, 5, 13),
(3, 6, 26),
(4, 1, 15),
(4, 2, 14),
(4, 3, 27),
(4, 4, 27),
(4, 5, 15),
(4, 6, 27),
(5, 1, 14),
(5, 2, 13),
(5, 3, 26),
(5, 4, 27),
(5, 5, 13),
(5, 6, 27),
(6, 1, 13),
(6, 2, 13),
# Missed this day (6, 3, 24),
(6, 4, 26),
(6, 5, 13),
(6, 6, 26),
(7, 1, 13),
(7, 2, 13),
(7, 3, 25),
(7, 4, 27),
(7, 5, 13),
# Missed this day (7, 6, 27),
(8, 1, 14),
# Missed this day (8, 2, 13),
(8, 3, 26),
(8, 4, 23),
(8, 5, 12),
(8, 6, 24),
(9, 1, 15),
(9, 2, 13),
(9, 3, 28),
(9, 4, 27),
(9, 5, 14),
(9, 6, 27),
(10, 1, 15),
(10, 2, 13),
(10, 3, 26),
(10, 4, 27),
(10, 5, 12),
(10, 6, 22);

select * from scores;

insert into absences values
(6, '2014-08-29'),
(7, '2014-08-29'),
(8, '2014-08-27');

select * from students;

select * from students where state = 'MI';

select first_name, last_name
from students
order by last_name;

select first_name, last_name, state
from students
order by state desc, last_name asc;

select * from students;

rename table class to classes;

show tables;






