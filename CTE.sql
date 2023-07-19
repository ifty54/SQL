--CTE (Common Table Expression)
WITH CTE_Demo AS
(SELECT FirstName, LastName, Gender, Salary,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary,
COUNT(Gender) OVER (PARTITION BY Gender) AS CountGen
FROM GigbigEmployeeDemo
JOIN EmployeeSalary
ON GigbigEmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
WHERE Salary > '45000'
)

SELECT CountGen, AvgSalary
FROM CTE_Demo
