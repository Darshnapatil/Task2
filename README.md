This Task on basic SQL operations such as inserting rows, handling missing values, and updating or deleting records in a database.

#Database Setup:
create database college;
use college;

#Student Table:
create table student (
    rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1) default 'K',
    city varchar(20)
);

#Inserting rows using Insert Into:
insert into student (rollno, name, marks, grade, city) values
(101, 'Anil', 78, 'C', 'Pune'),
(102, 'Bhumika', 93, 'A', 'Mumbai'),
(103, 'Chetan', 85, 'B', 'Mumbai'),
(104, 'Dhruv', 96, 'A', 'Delhi'),
(105, 'Emanuel', 12, 'F', 'Delhi'),
(106, 'Farah', 82, 'B', 'Delhi');

#Handling missing value using default:
insert into student (rollno, name, marks, city)
values (108, 'Harsh', 65, 'Mumbai');

#For Updating & deleting data
update student
set name = 'Arnav', city = 'Amravati'
where rollno = 101;

delete from student
where rollno = 106;

-----Key Learnings-----
INSERT INTO is used to add new rows.

Missing values can be handled with NULL or a DEFAULT value.

UPDATE and DELETE always use a WHERE condition to target specific rows.

Using the primary key (rollno) in conditions is the safest practice.
