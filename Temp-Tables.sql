--Whenever we have to make calculations on a table that uses heavy queries, joins, etc. we can use a temp table and do later calculations on it to stop doing the heavy part each time we need it. Temp tables will last until we close the Database Session.

drop table if exists #TempTable

Create table #TempTable
(JobTitle varchar(50),
EmployeesPerJob int, 
AvgAge int,
AvgSalary int)

insert into #TempTable
select JobTitle, count(jobtitle), avg(age), avg(salary) from EmployeeDemographics Dem inner join EmployeeSalary Sal on Dem.EmployeeID = Sal.EmployeeID
group by JobTitle

select * from #TempTable