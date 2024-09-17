-- Stored Procedures 

create procedure highly_paid_salaries()
Select * from employee_salary
where salary  >= 60000;

call highly_paid_salaries();




DELIMITER  $$ 
create procedure test_procedure1()
BEGIN
	Select * from employee_salary
	where salary  >= 50000;
	Select * from employee_salary
	where salary  >= 10000;
END $$
DELIMITER ;


call test_procedure1();

