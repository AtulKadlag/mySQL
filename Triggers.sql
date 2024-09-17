-- Triggers & Events

select * from employee_demographics;

select *  from employee_salary;

DELIMITER $$
create trigger employee_insert
after insert on Employee_salary
		For each row
        BEGIN
			insert into employee_demographics
            (employee_id, first_name,last_name)
            values
            (New.employee_id,new.first_name, new.last_name);
        END  $$
DELIMITER ;
        


select *  from employee_salary;

insert into employee_salary 
(employee_id, first_name, last_name, occupation, salary, dept_id)
values (13,'Raj','Kapoor', 'Librarian', 20000, 5);

select * from employee_demographics;
