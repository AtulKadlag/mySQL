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



-- from clause

select gender, avg(age), max(age), min(age), count(age) from employee_demographics
group by gender;


select 
	avg(avg_age),
    avg(max_age),
    avg(min_age),
    avg(count_age)
    from 
		(
		select gender, 
			    avg(age) as avg_age, max(age) as max_age, min(age) as min_age, count(age) as count_age from employee_demographics
		group by gender
        ) agg_table;
	
