--Select * from EmployeeDemographics
--inner join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID --What belongs to A and B

--Select * from EmployeeDemographics
--full outer join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID --Everything 

--Select * from EmployeeDemographics
--left outer join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID --What belongs to A and B and what only belongs to A

--Select * from EmployeeDemographics
--right outer join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID --What belongs to A and B and what only belongs to B

--Select * from EmployeeDemographics
--left outer join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID where EmployeeSalary.EmployeeID is NULL --What belongs only to A and not B

--Select * from EmployeeDemographics
--right outer join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID where EmployeeDemographics.EmployeeID is NULL --What belongs only to B and not A

--Select firstname, lastname, JobTitle, salary from EmployeeDemographics
--inner join EmployeeSalary
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID order by salary desc --Know which is the one who earns most and its job title and its salary.
