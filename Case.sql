--CASE (Ex 1: Categorizing by Age)
SELECT FirstName, LastName, Age,
CASE
    WHEN Age >=38 THEN 'OLD'
	WHEN Age BETWEEN 30 AND 37 THEN 'YOUNG'
	ELSE 'TEEN'
END AS Look
FROM GigbigEmployeeDemo
WHERE Age is NOT NULL
ORDER BY Age DESC

--CASE (Ex 2: Salary Increment)
SELECT FirstName, LastName, JobTitle, Salary,
CASE
  WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .1)
  WHEN JobTitle = 'HR' THEN Salary + (Salary * .5)
  WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
  WHEN JobTitle = 'Receptionist' THEN Salary + (Salary * .2)
END
FROM GigbigEmployeeDemo
JOIN EmployeeSalary
ON GigbigEmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
