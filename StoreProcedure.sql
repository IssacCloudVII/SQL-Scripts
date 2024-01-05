--create procedure GetEmployeeById
--	@EmployeeID int
--as 
--begin 
--	select * from EmployeeDemographics where EmployeeID = @EmployeeID;
--END;

exec GetEmployeeById @EmployeeId = 10
