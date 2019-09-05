--Fei Yun

-- 1
Print '*** Question 1 ***'
Print ''

SELECT *
FROM AcademicStatus

Print '*** Question 2 ***'
Print ''

SELECT number,academicStatusCode
FROM Student
WHERE academicStatusCode='D'
ORDER BY number

Print '*** Question 3 ***'
Print ''

SELECT number,academicStatusCode
FROM Student
WHERE academicStatusCode='D' OR academicStatusCode='S'
ORDER BY number

Print '*** Question 4 ***'
Print ''

SELECT number,academicStatusCode
FROM Student
WHERE NOT academicStatusCode='N'  
ORDER BY number

Print '*** Question 5 ***'
Print ''

SELECT number,academicStatusCode
FROM Student
WHERE academicStatusCode!='N'  
ORDER BY number

Print '*** Question 6 ***'
Print ''

SELECT countryCode
FROM Person
GROUP BY countryCode

Print '*** Question 7 ***'
Print ''

SELECT item AS "Incidental Fee Item", 
amountPerSemester AS "Current Fee",
amountPerSemester*1.1 AS "Increased  Fee" 
FROM Incidentalfee
ORDER BY item

Print '*** Question 8 ***'
Print ''

SELECT *
FROM CourseStudent
WHERE finalMark BETWEEN 0 AND 55

Print '*** Question 9 ***'
Print ''

SELECT number
FROM Room
WHERE capacity>=40 AND isLab IS NOT NULL AND memory='4GB' AND campusCode='D'

Print '*** Question 10 ***'
Print ''

SELECT *
FROM Employee
WHERE schoolCode='TAP'AND campusCode IN ('D','W','G')