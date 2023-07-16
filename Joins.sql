SELECT *
FROM EmployeeSalary
INNER JOIN EmployeeAddress
ON EmployeeAddress.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeSalary
FULL OUTER JOIN EmployeeAddress
ON EmployeeAddress.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeSalary
LEFT OUTER JOIN EmployeeAddress
ON EmployeeAddress.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeSalary
RIGHT OUTER JOIN EmployeeAddress
ON EmployeeAddress.EmployeeID = EmployeeSalary.EmployeeID

--UseCase1 (Find Highest Salary getting Person EXCEPT Michael)
  
SELECT GigbigEmployeeDemo.EmployeeID, FirstName, LastName, Salary
FROM GigbigEmployeeDemo
INNER JOIN EmployeeSalary
ON GigbigEmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

--UseCase2 (Find the AVG salary of Salesman)
  
SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM GigbigEmployeeDemo
INNER JOIN EmployeeSalary
ON GigbigEmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
