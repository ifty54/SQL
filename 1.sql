--Basic Exercise Trying Distinct, As, Count, Max, Min, AVG & * functions

SELECT DISTINCT(EmployeeID)
FROM EmployeeSalary

SELECT COUNT(LastName) AS SurName
FROM GigbigEmployeeDemo

SELECT MAX(Salary) as Maximum, MIN(Salary) as Minimum, AVG(Salary) as Average
FROM EmployeeSalary

SELECT *
FROM GigbigEmployeeDemo

--Additional Tips
--If you change the directory, the code may not run. 
--To avoid that, replace like this: FROM(Responsible Dir Name).dbo.FileName