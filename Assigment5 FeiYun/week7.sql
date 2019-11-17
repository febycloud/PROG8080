--Fei Yun
--week 7

--1--
create database CollegeDB
use CollegeDB
--2--
create table Student
(Id int identity not null,
FirstName varchar(50),
LastName varchar(50)
primary key (Id)
)


--3--
create table Address
(Id int identity not null,
StudentId int not null,
Street varchar(50),
City varchar(50),
PostalCode varchar(50),
PhoneNumber varchar(50),
Email varchar(50),
Method varchar(10),
primary key (Id),
constraint fk_StudentId foreign key(StudentId) references Student(id) on delete cascade,
)


--4--
create table Course
(Id int identity not null,
Name varchar(50),
CourseCode varchar(50),
Description varchar(500),
primary key (Id))

--5--
create table Semester
(Id char(3),
Description varchar(50),
primary key(Id))

--6--
create table StudentCourse
(
Mark int default 0,
StudentId int foreign key references Student(Id),
CourseId int foreign key references Course(Id),
SemesterId char(3) foreign key references Semester(Id),
primary key (StudentId,CourseId,SemesterId)
)

--7--
insert into Student values('Carey','Mahoney')
insert into Student values('Moses','Hightower')
insert into Student values('Debbie','Callahan')

select*
from Student

--8--
insert into Address values((select id from Student where FirstName='Carey'),'500 Kingston Rd','Toronto','M4L 1V3','(416)694-8464','careym1@college.com','Local')
insert into Address values((select id from Student where FirstName='Moses'),'315 St Germain Ave','Toronto','M5M 1W4','(416) 322-7518','mosesh2@college.com','Local')
insert into Address values((select id from Student where FirstName='Debbie'),'234 Willow Ave','Toronto','M4E 3K7','(416) 699-8444','debbiec3@college.com','Local')

insert into Address values((select id from Student where FirstName='Carey'),'Weberstr. 2','Berlin','53113','(416)694-8464','careym1@college.com','Home')
insert into Address values((select id from Student where FirstName='Moses'),'9150 East Grand St.','Meaford','N4L 9K2','(416) 322-7518','mosesh2@college.com','Home')
insert into Address values((select id from Student where FirstName='Debbie'),'9851 Ivy Rd','Pointe-Claire','H9R 7J1','(416) 699-8444','debbiec3@college.com','Home')

select*
from Address
--9--
insert into Course values('Deterministic OR Models','CO327','An applications-oriented course that illustrates how various mathematical models and methods of optimization can be used to solve problems arising in business, industry and science. ')
insert into Course values('Network Flow Theory','CO351','Review of linear programming. Shortest path problems. The max-flow min-cut theorem and applications. Minimum cost flow problems. Network simplex and primal-dual algorithms. Applications to problems of transportation, distribution, job assignments and critical-path planning.')
insert into Course values('Nonlinear Optimization','CO367','A course on the fundamentals of nonlinear optimization, including both the mathematical and the computational aspects. Necessary and sufficient optimality conditions for unconstrained and constrained problems. Convexity and its applications. Computational techniques and their analysis.')
insert into Course values('Combinatorial Designs','CO434','Pairwise orthogonal latin squares. Transversal designs and finite planes. Balanced incomplete block designs, group divisible designs and pairwise balanced designs. Symmetric designs and Hadamard matrices. Recursive constructions. Wilsons fundamental construction.')

select*
from Course
--10--
insert into Semester values('F15','Fall 2015')
insert into Semester values('W16','Winter 2016')
insert into Semester values('S16','Summer 2016')

select*
from Semester

--11--
insert into StudentCourse (StudentId,CourseId,SemesterId)
values(
(select id from Student where FirstName='Carey'),
(select id from Course where CourseCode='CO351'),
(select id from Semester where id='F15'))

insert into StudentCourse (StudentId,CourseId,SemesterId)
values(
(select id from Student where FirstName='Carey'),
(select id from Course where CourseCode='CO367'),
(select id from Semester where id='F15'))

insert into StudentCourse (StudentId,CourseId,SemesterId)
values(
(select id from Student where FirstName='Moses'),
(select id from Course where CourseCode='CO351'),
(select id from Semester where id='F15'))

insert into StudentCourse (StudentId,CourseId,SemesterId)
values(
(select id from Student where FirstName='Moses'),
(select id from Course where CourseCode='CO327'),
(select id from Semester where id='F15'))

insert into StudentCourse  (StudentId,CourseId,SemesterId)
values(
(select id from Student where FirstName='Debbie'),
(select id from Course where CourseCode='CO351'),
(select id from Semester where id='F15'))

insert into StudentCourse  (StudentId,CourseId,SemesterId)
values(
(select id from Student where FirstName='Moses'),
(select id from Course where CourseCode='CO434'),
(select id from Semester where id='F15'))

select*
from StudentCourse
--12--
update studentCourse
set Mark= (case CourseId
when 1 then 99
when 2 then 89
when 3 then 95
when 4 then 86
else CourseId end)
where CourseId in(1,2,3,4) and StudentId in (select id from Student where FirstName='Moses')

select*
from StudentCourse

--13--
delete from StudentCourse
where StudentId=(select id from Student where FirstName='Debbie')
delete from Student
where FirstName='Debbie'


select*
from Student
select*
from Course
select*
from StudentCourse
select* 
from Address
select*
from Semester
