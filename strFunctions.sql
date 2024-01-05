drop table if Exists EmployeeErrors

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,(' 1005', 'TOby', 'Flenderson - Fired')

--select EmployeeID, TRIM(EmployeeID) as IDTRIM from EmployeeErrors

--TRIM eliminates blank spaces, but it can also eliminate other characters. LTRIM and RTRIM eliminate them only by left or right respectively.

--select lastname, replace(lastname, '- Fired', '') as lastNameFiexed from EmployeeErrors

--SELECT REPLACE('Hello, hello, HELLO!', 'Hello', 'Hi') AS ReplacedString;

--Replace will take the original str, the search str and the replace str. It is not case sensitive. 

--select SUBSTRING(firstname, 3, 3) from EmployeeErrors

--Substring will take the original str, the position of the str, and how many characters you want to obtain from the start. 

--select err.FirstName, dem.FirstName from EmployeeErrors err join EmployeeDemographics dem on err.FirstName = dem.FirstName

--Join will only work if the strings matches case-unsensitive. If you have a substr that matches:

select * from EmployeeErrors err join EmployeeDemographics dem on substring(err.FirstName,1,3) = substring(dem.FirstName, 1,3)

--Fuzzy matching allows you to make a join if you don't have the exact information using tokens or substrings. You can enhance the accuracy using other things like: gender, firstname, age, date of birth, etc. 

select firstname, lower(firstname) from EmployeeErrors
select firstname, upper(firstname) from EmployeeErrors