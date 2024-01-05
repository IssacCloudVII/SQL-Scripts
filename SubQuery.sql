--select * from EmployeeSalary

use SQLTutorial

--select EmployeeID, Salary, (Select AVG(Salary) from EmployeeSalary) as AllAvgSalary from EmployeeSalary

--select EmployeeID, Salary, avg(salary) over () as AllAvgSalary from EmployeeSalary

--They are they same thing, one uses subqueries and the other one uses over. 

--select a.EmployeeID, a.AllAvgSalary from (select EmployeeID, Salary, (Select AVG(Salary) from EmployeeSalary) as AllAvgSalary from EmployeeSalary) as a

--ID, jobtitle, salary, from employees that are older than 30.

select employeeID, jobtitle, salary from EmployeeSalary where EmployeeID in (select employeeID from EmployeeDemographics where age > 30)

--The same but we want to show the age. 

select dem.employeeID, age, sal.JobTitle, sal.salary from EmployeeSalary Sal inner join EmployeeDemographics dem on sal.EmployeeID = dem.EmployeeID where dem.Age > 30 order by salary
