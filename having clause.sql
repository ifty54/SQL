--Having clause
SELECT JobTitle, COUNT(JobTitle)
FROM GigbigEmployeeDemo
JOIN EmployeeSalary
ON GigbigEmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 5

--Ex: Sorting through HAVING clause
SELECT JobTitle, AVG(Salary)
FROM GigbigEmployeeDemo
JOIN EmployeeSalary
ON GigbigEmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 50000
ORDER BY AVG(Salary) DESC
