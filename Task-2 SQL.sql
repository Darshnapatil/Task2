create database college;
use college;

create table student(
 rollno int primary key,
 name varchar(50),
 marks int not null,
 grade varchar(1) default 'K',
 city varchar(20)
);
insert into student
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");
select * from student

#Using default Constraints
insert into student (rollno, name, marks, city)
values (110, "rahul", 77, "Nagpur");
select * from student

#Use UPDATE and DELETE with WHERE conditions
update student
set name = 'arnav', city = 'Amravati'
where marks = 78;

delete from student
where name = 'farah';







