------ Retrieve employees with a salary between 40000 and 60000
----SELECT * FROM EmployeeSalary
----WHERE Salary >= 40000 AND Salary <= 60000;

------ Retrieve employees in the IT department or with a salary greater than 70000
----SELECT count(distinct salary) FROM EmployeeSalary
----WHERE JobTitle = 'IT' OR Salary > 70000;

--Select JobTitle from EmployeeSalary where JobTitle Like '%Manager'
----% 0 or more 
----_ 1 character

--Select count(*) as NullCount from EmployeeDemographics where Lastname is Null

-- Retrieve employees in the Finance or Marketing departments

SELECT * FROM EmployeeSalary
WHERE JobTitle IN ('Data Analyst', 'Marketing');
