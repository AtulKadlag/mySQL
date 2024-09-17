-- Subqueries 
	-- Where Clause
    -- Select clause
    -- From Clause
-- Nested Subqueries


select * from employee_demographics;
select * from employee_salary;
Select * from supply_departments;


select * from employee_demographics
where employee_id  IN 
				(select employee_id 
				from employee_salary where dept_id IN (
								select department_id from supply_departments where 
								department_name ='Finance'
								)
				);

;
select dept_id from supply_departments where 
								department_name ='Finance'
                                
                                
-- Select Clause

select first_name,salary, 
(select avg(salary) from employee_salary) as avg_salary
from  employee_salary
group by first_name,salary;


