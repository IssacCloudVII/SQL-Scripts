Select firstname, lastname, gender, salary, count(gender) over (partition by gender) as totalGender 
from EmployeeDemographics join EmployeeSalary on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID order by salary

Select gender, count(gender) 
from EmployeeDemographics Dem inner join EmployeeSalary Sal on Dem.EmployeeID = Sal.EmployeeID
group by gender

--The partition by puts the last query in a column on the first one.