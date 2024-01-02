--Aggregates can't appear in a where clause, that's why we should use having instead. 
select jobtitle, count(jobtitle) from EmployeeSalary group by JobTitle having count(jobTitle) = 1

select jobtitle, avg(salary) as AverageSalary from EmployeeSalary group by JobTitle having avg(salary) > 35000 order by avg(salary)

--It has to be between group by and order by statements. 