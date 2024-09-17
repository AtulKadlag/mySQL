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


select * from employee_salary
where employee_id =3


-- SP with parameter


DELIMITER  $$ 
create procedure proc_with_param(p_employee_id int)
BEGIN
	select salary from employee_salary
	where employee_id = p_employee_id;
END $$
DELIMITER ;


call proc_with_param(3);