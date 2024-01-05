--select * from EmployeeSalary

select EmployeeID, Salary, (Select AVG(Salary) from EmployeeSalary) as AllAvgSalary from EmployeeSalary