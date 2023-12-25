--select firstname, lastname, age,
--case 
--	When age > 30 then 'Old'
--	else 'young'
--end as 'Life Status'
--from EmployeeDemographics order by [Life Status] desc

--Select firstname, lastname, salary,
--case 
--	When salary between 70000 and 75000 then salary * 0.85
--	else salary * 0.90
--end as 'Salary Penalty'

--from EmployeeDemographics inner join EmployeeSalary on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID where salary > 70000