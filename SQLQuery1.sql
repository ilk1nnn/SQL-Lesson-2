--Data Manupulation Language--

-- SELECT INSERT UPDATE DELETE--


CREATE DATABASE StepDb
GO
USE StepDb
GO
CREATE TABLE Students(

	[Id] INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[FirstName] NVARCHAR(30) NOT NULL,
	[LastName] NVARCHAR(30) NOT NULL,
	[Group] NVARCHAR(20) NOT NULL,
	[Gender] NVARCHAR(20),
	[Age] INT,
	[Birthdate] DATE NOT NULL

)


--INSERT INTO Students([FirstName],[LastName],[Group],[Gender],[Age],[Birthdate])
--VALUES('Elvin','Camalzade','2700KM','Male',23,'2022-5-5'),
--('John','Doe','3212','Male',22,'2021-5-5')


--SELECT * FROM Students
--SELECT [FirstName],[LastName]
--FROM Students


--SELECT [FirstName],[LastName],[Age],[Group]
--FROM Students


---- AS - Alias
--SELECT [FirstName]+' '+[LastName] as FullName
--FROM Students


--SELECT [FirstName]+'-'+[LastName] as FullName,
--[Age] as StudentAge
--FROM Students


--SELECT 'Student : '+[FirstName]+' : Your age is '+ CAST([Age] as nvarchar(10))
--as StudentInfo
--FROM Students



--SELECT TOP(2) *FROM Students


--SELECT TOP(2) [FirstName],[LastName]
--FROM Students

--SELECT TOP 50 PERCENT [FirstName],[LastName]
--FROM Students



-- (=) EQUAL   != OR <> (NOT EQUAL) 

--SELECT *
--FROM Students
--WHERE Students.[Age]<10 AND Students.[Age]<=20


--SELECT *
--FROM Students
--WHERE Students.[Age]=23 AND LEN(Students.[FirstName])=5



--SELECT *
--FROM Students AS s
--WHERE YEAR(s.[Birthdate])=2021


--SELECT *
--FROM Students AS s
--WHERE MONTH(s.[Birthdate])=5



--SELECT *
--FROM Students
--WHERE [Group] IS  NULL

--SELECT *
--FROM Students
--WHERE [Group] IS NOT NULL



--SELECT*
--FROM Students
--ORDER BY Students.[Age] desc -- asc




--SELECT*
--FROM Students
--ORDER BY Students.[Age],Students.[FirstName] 


--SELECT *
--FROM Students
--ORDER BY FirstName ASC
--OFFSET 2 ROWS
--FETCH NEXT 1 ROWS ONLY


--BETWEEN, IN, LIKE

--SELECT *
--FROM Students
--WHERE FirstName IN ('Elvin')


--SELECT *
--FROM Students
--WHERE Birthdate BETWEEN '2022-10-10' AND '2020-9-8'

--SELECT *
--FROM Students
--WHERE FirstName LIKE 'e%'

--SELECT *
--FROM Students
--WHERE FirstName LIKE '%n'

--SELECT *
--FROM Students
--WHERE FirstName LIKE '%h%'



--UPDATE Students
--SET FirstName='Zerife'
--WHERE FirstName='John'


SELECT *
FROM Students


DELETE FROM Students
WHERE Id = 3










