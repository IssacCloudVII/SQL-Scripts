--Select EmployeeID from EmployeeDemographics
--Union
--select EmployeeID from EmployeeSalary

--Union removes duplicates, Union ALL doesn't.

Select EmployeeID as IDCombination, firstname as NameJobTitle, age as AgeSalary from EmployeeDemographics 
union 
select employeeID, jobtitle, salary from EmployeeSalary

--It  works because it has 3 columns, in the same order and with the same type.