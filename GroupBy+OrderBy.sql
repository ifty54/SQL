--Group By and Order By

--1st
SELECT Age, Gender, COUNT(Gender) AS CountingGender
FROM GigbigEmployeeDemo
GROUP BY Gender
ORDER BY Age DESC

--2nd
SELECT *
FROM GigbigEmployeeDemo
ORDER BY Age DESC, Gender ASC
