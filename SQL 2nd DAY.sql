use my_first_database;
CREATE TABLE Persons(
ID int NOT NULL,
lastname varchar(255) NOT NULL,
Firstname varchar (255) NOT NULL,
PRICE int);


use my_first_database;
CREATE TABLE Employee(
ID int NOT NULL,
lastname VARCHAR(255) NOT NULL,
firstname VARCHAR (255) NOT NULL,
age int, 
CHECK(age>=18));

use my_new_database;
CREATE TABLE Employee1(
ID int NOT NULL,
lastname VARCHAR(255)NOT NULL,
firstname varchar(255)NOT NULL,
AGE int,
city varchar(255)default'wardha');

create database drem_with_data;
use drem_with_data;
CREATE table student(
ID int not null,
lastname varchar(255) not null,
firstname varchar(255) not null,
age int,
rollno int,
class varchar(255) not null);

DROP database drem_with_data;

use my_first_databse;
drop table persons;

create database drem_with_data;
use drem_with_data;
CREATE table student(
ID int not null,
lastname varchar(255) not null,
firstname varchar(255) not null,
age int,
rollno int,
class varchar(255) not null);

alter table student add fees int;
alter table student add aadharnumber int;
alter table student drop column fees;
alter table student drop column aadharnumber;
alter table student modify lastname varchar(50);

INSERT INTO student (ID, lastname, firstname, age, rollno, class) VALUES
(1,'sharma','anuj',22, 21, 'mcom'),
(2,'PATIL','anil',21, 18,'bsc'),
(3,'rajput','rani',23,16, 'polly'),
(4, 'kumar', 'ankush',24,31,'mba'),
(5,'sharma','swati',25,61,'agri');
select * from student; 

TRUNCATE TABLE student;
select * from student;










