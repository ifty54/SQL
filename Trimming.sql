CREATE TABLE ErrorsFile (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into ErrorsFile Values 
('1001  ', 'Leo', 'Messi')
,('  1002', 'Christian', 'Ronaldo')
,('1005', 'Jadon', 'Sancho - Fired')

Select *
From ErrorsFile

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM ErrorsFile 

Select EmployeeID, RTRIM(EmployeeID) as RightTRIM
FROM ErrorsFile 

Select EmployeeID, LTRIM(EmployeeID) as LeftTRIM
FROM ErrorsFile 
