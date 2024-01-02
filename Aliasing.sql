--select demo.EmployeeID, sal.salary 
--from EmployeeDemographics as demo inner join EmployeeSalary as sal 
--on demo.EmployeeID = sal.EmployeeID

--Aliasing is used to change the name of a table briefly to make the query look cleaner and easier to understand. "as" keywoard is optional.

select age, count(age) as AgeNumber, avg(salary) as AgeAverageSalary from EmployeeDemographics as Demo inner join EmployeeSalary as Sal on Demo.EmployeeID = Sal.EmployeeID group by age