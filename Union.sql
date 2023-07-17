--Union statement (Only use when you've both table same features with same row x column numbers)
SELECT Footballer, Goal
FROM [Gigbig Analytics].dbo.Stat
UNION
SELECT Footballer, Age
FROM [Gigbig Analytics].dbo.Football
--this result shows GOALS in the AGE section. So, don't try out UNION in such case
