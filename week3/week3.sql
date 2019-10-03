--Fei Yun
--Week4 assigiment

Print '*** Question 1 ***'
Print ''

select  c.number,c.name,cp.prerequisiteNumber
from Course c
left outer join
CoursePrerequisiteAnd cp
on c.number=cp.courseNumber
where c.number='COMP2280'
order by cp.prerequisiteNumber

Print '*** Question 2 ***'
Print ''

select e.number,p.firstName,p.lastName,e.schoolCode,e.extension
from Employee e, Person p
where e.number=p.number and p.lastName like 'W%'

Print '*** Question 3 ***'
Print ''

select p.number,p.firstName,p.lastName,p.city
from Person p
left outer join Student s
on s.number=p.number
where s.number is NULL
order by p.lastName

Print '*** Question 4 ***'
Print ''

select uniqueId,product 
from Software s
left join LabSoftware ls on ls.softwareUniqueId=s.uniqueId
join Room r on r.number='2A205' and ls.roomId=r.id
order by product

Print '*** Question 5 ***'
Print ''

select co.sessionCode,co.courseNumber,firstName,lastName,e.extension
from Person p
left join Employee e on p.number=e.number
left join CourseOffering co on co.employeeNumber=e.number
where co.sessionCode='F10'
order by co.courseNumber

Print '*** Question 1 ***'
Print ''

select firstName,lastName,personalEmail,collegeEmail,so.notes
from person p
inner join Student s on s.number=p.number
inner join StudentOffence so on so.studentNumber=s.number
order by s.number

Print '*** Question 6 ***'
Print ''

select e1.number as 'Employee',e1.reportsTo as 'Emplyee Report To',e2.reportsTo as ' ‘Supervisor Reports To'
from Employee e1
left outer join Employee e2 on e1.reportsTo=e2.number
order by e1.number

Print '*** Question 7 ***'
Print ''

select lower(left(firstName,1))+lower(left(lastName,7)) as 'User Id'
from Person p
left join Employee e on e.number=p.number
where p.lastName like 'K%'
order by [User Id]

Print '*** Question 8 ***'
Print ''

select number,hours,name
from Course c
left outer join CourseOffering co on co.courseNumber=c.number
where co.courseNumber is NULL and left(name,11)='programming'

