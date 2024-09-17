-- Stored Procedures 

create procedure highly_paid_salaries()
Select * from employee_salary
where salary  >= 60000;

call highly_paid_salaries();

