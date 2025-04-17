-- Creating database and table
create database college;
use college;
CREATE TABLE student ( 
rollno INT PRIMARY KEY, 
name VARCHAR(50),
marks INT NOT NULL, 
grade VARCHAR(1),
city VARCHAR(20)
 );
 
 -- Inserting data into table
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"), 
(102, "bhumika", 93, "A", "Mumbai"), 
(103, "chetan", 85, "B", "Mumbai"), 
(104, "dhruv", 96, "A", "Delhi"), 
(105, "emanuel", 12, "F", "Delhi"), 
(106, "farah", 82, "B", "Delhi");

-- Insert syntax 2
insert into student values(1,"majd",99,"A","Bengaluru");

-- PRINTING TABLE USING SELECT
select * from student;

-- DATABASE RELATED QUERIES
create database college;
create database if not exists college;
drop database college;
drop database if exists college;
show databases;
show tables;

-- CONSTRAINTS (not null, unique, primary key, foreign key,default, check )

-- foreign key, default, check
create table temp(
cust_id int,
foreign key(cust_id) references customer(id),-- Customer is another tables ,its pk is id.
salary int default 25000,
age int check (age>=18),
ages int,
constraint ages_check check (ages >=18 and cust_id = 123)
);

-- select 
select name, marks from student;
select * from student;
select disctinct city from student; -- distinct

-- where clause 
select * from student where marks >80;

-- AND
select * from student where marks > 80 and city = "Mumbai" ;

-- OR
select * from student where marks > 80 or city = "Mumbai" ;

-- BETWEEN
select * from student where marks between 80 and 90 ;

-- IN
select * from student where city in ("Delhi", "Mumbai") ;

-- NOT
select * from student where city  not in ("Delhi", "Mumbai") ;

-- limit clause
select * from student limit 3; 

-- oder by clause
select * from students order by city asc;

-- aggregative functions ( count(), max(), min(), sum(), avg() )
select max(marks) from student;
select avg(marks) from student;

-- group by clause
select city,count(rollno) from student group by city;

-- having clause (count number of students in each city where max marks cross 90.)
select  city,count(rollno)  from student group by city having max(marks) > 90; -- condition applies on group.

-- general order
select city from student where grade = "A" group by city having max(marks) >= 93 order by city asc;

-- safe update mode
set sql_safe_updates = 0; -- to off
set sql_safe_updates = 1; -- to on
-- update
update student set grade = "O" where grade = "A" ;

-- delete
delete from student where marks < 30;

-- visualising foriegn key 
create table dept(
id int primary key,
name varchar (50)
);

create table teacher (
id int primary key ,
name varchar (50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade -- cascading for foreign key
on delete cascade
);

-- alter

-- ADD
alter table student
add column age int;

-- DROP
alter table student
drop column age ;

-- RENAME
alter table student
rename to bubu;

-- CHANGE
alter table student
change column rollno sno int primary key;

-- MODIFY
alter table student
modify grade varchar(2);

-- TRUNCATE
truncate table student;

-- JOIN

create table scholar(
student_id int primary key,
name varchar(50)
);

insert into scholar
(student_id,name)
values
(101,"adam"),
(102,"bob"),
(103,"casey");

create table course(
student_id int primary key,
course varchar(50)
);

insert into course
(student_id,course)
values
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

-- inner join
select * from scholar inner join course on scholar.student_id = course.student_id;

-- left join
select * from scholar left join course on scholar.student_id = course.student_id;

-- right join
select * from scholar right join course on scholar.student_id = course.student_id;

-- full join
select * from scholar left join course on scholar.student_id = course.student_id
union
select * from scholar right join course on scholar.student_id = course.student_id;

-- left exclusive
select * from scholar left join course on scholar.student_id = course.student_id where course.student_id is null;

-- right exclusive
select * from scholar right join course on scholar.student_id = course.student_id where scholar.student_id is null;


-- UNION
select student_id from scholar
union
select student_id from course;

-- UNION ALL
select student_id from scholar
union all
select student_id from course;
 
 -- SQL SUB QUERIES
   -- using where
select name, marks from student where marks > (select avg(marks) from student);

select name, rollno from student where rollno in (select rollno from student where rollno % 2 = 0);

  -- using from
select max(marks)
from(select * from student where city = "Delhi") as subQ;

  -- using all
select (select max(marks) from student) , name from student;


-- MySQL viewa
create view view1 as select rollno , name , marks from student ;
select * from view1;