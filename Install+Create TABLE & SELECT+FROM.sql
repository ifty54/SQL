--Employee Demographics
SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [Gigbig Analytics].[dbo].[GigbigEmployeeDemo]

--Salary Card
SELECT TOP (1000) [EmployeeID]
      ,[JobTitle]
      ,[Salary]
  FROM [Gigbig Analytics].[dbo].[EmployeeSalary]

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
--To avoid that, replace like this: FROM(Responsible Dir Name).dbo.File_Name
