--Partition By
SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM GigbigEmployeeDemo
JOIN EmployeeSalary
ON GigbigEmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
