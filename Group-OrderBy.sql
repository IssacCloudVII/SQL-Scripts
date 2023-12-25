------ Find the average salary for each department
----SELECT JobTitle, AVG(Salary) AS AverageSalary
----FROM EmployeeSalary
----GROUP BY JobTitle;

----Select Salary, count(JobTitle) from EmployeeSalary group by Salary

----Select gender, count(gender) as genderCount from EmployeeDemographics group by gender

----Select * from EmployeeSalary order by 2

--select * from EmployeeDemographics order by age
--Select gender, age, count(distinct gender) as genderAgeGroups from EmployeeDemographics group by gender, age

Select jobtitle, count(jobTitle) as JobTitleCount, avg(salary) as SalaryAverage from EmployeeSalary group by JobTitle