DROP TABLE IF EXISTS #temp_employee
Create table #temp_employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

--Value Insertion (In this case, I can import)
INSERT INTO #temp_employee
SELECT *
FROM EmployeeSalary
  
/*
Value Insertion (You may add new data like this)
INSERT INTO #temp_employee VALUES
(
'1021', 'Director', '120000'
)
*/
  
--Now, Check!
SELECT *
FROM #temp_employee
