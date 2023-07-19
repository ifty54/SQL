SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary

--Using in Subquery
SELECT EmployeeID, JobTitle, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AvgSalary 
FROM EmployeeSalary

--Alternate: Using Partition By
SELECT EmployeeID, JobTitle, Salary, AVG(Salary) OVER () as AvgSalaryAlternate 
FROM EmployeeSalary

--Using Subquery in From Statement
SELECT a.EmployeeID, AllAvgSalary
FROM
	(SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
	 FROM EmployeeSalary) a
ORDER BY a.EmployeeID

--Using Subquery in Where Statement
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID in (
	Select EmployeeID 
	From GigbigEmployeeDemo
	where Age > 30)
