with CTE_Employee as (

select firstname, lastname, gender, salary, count (gender) over (partition by gender) as totalGender, avg(salary) over (partition by gender) as AvgSalary
from EmployeeDemographics Dem inner join EmployeeSalary Sal on Dem.EmployeeID  = Sal.EmployeeID
where Salary > 45000
)

select * from CTE_Employee


--CTE (Common Table Expression) allows us to create temporary sub queries than can be used afterwards. Each time we execute a query, CTE must be created again as it can't be stored anywhere.