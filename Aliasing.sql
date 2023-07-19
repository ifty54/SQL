--Aliasing
--(Used for higher readability & makes renames)

SELECT DEMO.EmployeeID, SAL.Salary
FROM GigbigEmployeeDemo AS DEMO
JOIN EmployeeSalary AS SAL
ON DEMO.EmployeeID = SAL.EmployeeID

--2ND EXAMPLE
SELECT FirstName + ' ' + LastName AS FullName
FROM GigbigEmployeeDemo
