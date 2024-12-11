use drem_with_data;
select *from student;
#DQL(data query language)

INSERT INTO student(ID,lastname,firstname,age,rollno,class)
values
(1,'sharma','rina',24,2,'b.com'),
(2,'thakur','janvi',23,3,'m.com'),
(3, 'kumar','rohit',22,4,'bsc'),
(4, 'gupta','samir',23,6,'polly'),
(5,' mehta','harsh',22,7,'mba');

select * from student;

select firstname,rollno from student;

#where

select * from student WHERE rollno=2;
select * from student order by firstname;
select*from student order by firstname desc;

#limit

select * from student limit 2;
select * from student order by ID desc limit 2;

select*from student; 

#distinct

select distinct class from student;

# like

select*from student where firstname like'r%';
select* from student where lastname like '%a';

# between

select * from student where rollno between 2 and 5;

#in

select * from student where rollno in ( 2,4,7);

# as

select count(*) as totalstudent from student;

#max ,min

select max(rollno) as maxstudent from student;

select min(rollno) as minstudent from student;

select sum(rollno) as sumrollno from student;

#group by

 select lastname, count(*) as totalcount
 from student
 group by lastname;
 
 # having
 
 select lastname, count(*) as totalcount
 from student
 group by lastname
 having count(*)>0;


