--Assignment 4
--Fei Yun

Print '*** Question 1 ***'
Print ''

delete from Person
where number='7424476'

delete from Course
where number='BUS1070' or number='LIBS1010'

Print '*** Question 2 ***'
Print ''

select number,hours,credits,name
from Course
where number in (select courseNumber from ProgramCourse where programCode in(select code
 from Program where acronym ='ITID')and semester=1)
 order by number ASC

Print '*** Question 3 ***'
Print ''

select number,firstName,lastName
from Person
where number in (select studentNumber from Payment where amount>1000 and paymentMethodId
in (select id from PaymentMethod where explanation='Cash' or explanation='Certified Cheque'))
order by lastName

Print '*** Question 4 ***'
Print ''

select firstName,lastName
from Person
where number in (
select number from Student where isInternational ='1' and number in(
select studentNumber from StudentProgram where programCode in(
select code from Program where credentialCode in (
select code from Credential where name like '%Graduate Certificate%'))))
order by lastName 

Print '*** Question 5 ***'
Print ''

insert into Person(
number,lastName,firstName,
street,city,provinceCode,
countryCode,postalCode,mainPhone,
alternatePhone,collegeEmail,personalEmail,birthdate)
values('7424476','INDU','TANEJA',
'442 GIBSON ST N ','KITCHENER',
'ON','IND','N2M 4T4','(226)147-2985',
'94324060195','iteneja@conestogac.on.ca',
'iteneja@bsnl.co.in','1989-10-07 00:00:00.000')

select*
from Person
where number=7424476

Print '*** Question 6 ***'
Print ''

 insert into Student(number,isInternational,academicStatusCode,
 financialStatusCode,sequentialNumber,balance,
 localStreet,localCity,localProvinceCode,localCountryCode,
 localPostalCode,localPhone)
 values('7424476','1',(select code from AcademicStatus where code='D' ),'P','0','1130',
 '442 GIBSON ST N','KITCHENER','NO','CAN','N2M 4T4','(226)147-2985')

 select localStreet
 from Student
 where number='7424476'

  select localPostalCode,localCity
 from Student
 where number='7424476'

Print '*** Question 7 ***'
Print ''

insert into StudentProgram(studentNumber,programCode,semester,programStatusCode)
values((select number from Student S where number='7424476'),'0066C','1','A')

select *
from StudentProgram
where studentNumber='7424476'


Print '*** Question 8 ***'
Print ''

insert into CourseStudent(CourseOfferingId,studentNumber,finalMark)
values((select id from CourseOffering where id='32'),'7424476','0')

select*
from CourseStudent
where studentNumber='7424476'

Print '*** Question 9 ***'
Print ''

insert into Course(number,hours,credits,name,frenchName)
values('LIBS1010','45','3','Critical Thinking Skilld','Pensée Critique')

select*
from Course
where number='LIBS1010'

Print '*** Question 10 ***'
Print ''

insert into Course
values('BUS1070','45','3','Introduction To Human Relations','Introduction aux relations humaines')

select*
from Course
where number='BUS1070'

Print '*** Question 11 ***'
Print ''

update IncidentalFee
set amountPerSemester=100
where id=5

begin transaction
update IncidentalFee
set amountPerSemester=150
where id=5
rollback

select*
from IncidentalFee
where id='5'

Print '*** Question 12 ***'
Print ''

begin transaction
update IncidentalFee
set amountPerSemester=200
where id=5
commit

select*
from IncidentalFee
where id='5'