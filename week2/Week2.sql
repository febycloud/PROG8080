
--Fei Yun

print '*** Question 1 ***'
Print ''

SELECT LEN(firstName) AS 'First Name Length'
FROM Person
GROUP BY LEN(firstName)
ORDER BY LEN(firstName) DESC

print '*** Question 2 ***'
Print ''

SELECT firstName,
LEFT(firstName,1) AS 'First Initial',
LOWER(LEFT(firstName,1)) AS 'Lower First Initial'
FROM Person
WHERE SUBSTRING(lastName,1,1)='P'

print '*** Question 3 ***'
Print ''

SELECT lastName,
SUBSTRING(lastName,1,7) AS 'First Seven',
LOWER(SUBSTRING(lastName,1,7)) AS 'Lower First Seven'
FROM Person
WHERE SUBSTRING(lastName,1,1)='P'
ORDER BY lastName ASC

print '*** Question 4 ***'
Print ''

SELECT LOWER(LEFT(firstName,1))+LOWER(SUBSTRING(lastName,1,7)) AS 'User ID'
FROM Person
WHERE SUBSTRING(lastName,1,1)='P'
ORDER BY firstName ASC

print '*** Question 5 ***'
Print ''

SELECT number AS 'Course Code',
name AS 'Course Name'
FROM Course
WHERE CHARINDEX('Database',name)>0

print '*** Question 6 ***'
Print ''

SELECT CONVERT(varchar,GETDATE(),102) AS 'TODAY',
CONVERT(varchar,DATEADD(DAY,30,GETDATE()),102) AS '30 DAYS',
CONVERT(varchar,DATEADD(DAY,60,GETDATE()),102) AS '60 DAYS',
CONVERT(varchar,DATEADD(DAY,90,GETDATE()),102) AS '90 DAYS',
CONVERT(varchar,DATEADD(DAY,120,GETDATE()),102) AS '120 DAYS'

print '*** Question 7a ***'
Print ''

SELECT 'Employee Number: '+Employee.number ,
		'Year: '+CONVERT(varchar(4),YEAR(birthdate)),
		'MOnth: '+CONVERT(varchar(2),MONTH(birthdate)),
		'Day: '+CONVERT(varchar(2),Day(birthdate))
FROM Employee,Person 
WHERE Employee.number=Person.number
ORDER BY birthdate ASC

print '*** Question 7b ***'
Print ''

SELECT 'Employee Number: '+Employee.number ,
		'Year: '+CONVERT(varchar(4),DATEPART(YYYY,birthdate)),
		'MOnth: '+CONVERT(varchar(2),DATEPART(MM,birthdate)),
		'Day: '+CONVERT(varchar(2),DATEPART(DD,birthdate))
FROM Employee,Person
WHERE Employee.number=Person.number
ORDER BY birthdate ASC