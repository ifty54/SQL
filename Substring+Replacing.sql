CREATE TABLE ErrorsFile (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into ErrorsFile Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From ErrorsFile

--Replace
SELECT LastName, REPLACE(LastName, '- Fired','') AS LastNameFixed
FROM ErrorsFile

--Substring
SELECT SUBSTRING(FirstName,1,3) --cuts characters from 1 to 3
FROM ErrorsFile
