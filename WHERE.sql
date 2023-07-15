--Basics of Where
--Containing (=,<>,<=,>=,AND,OR,Like,Null,Not Null,IN)

SELECT *
FROM GigbigEmployeeDemo
WHERE Age <= 32 AND Gender = 'Male' AND LastName <> 'Flenderson' --<> means exclude
WHERE LastName LIKE 'S%' OR FirstName LIKE '%D%'
WHERE Age is Not NULL
WHERE FirstName IN ('Dwight','Michael')
