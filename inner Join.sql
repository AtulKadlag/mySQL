-- Joins

-- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together
-- there are several joins we will look at today, inner joins, outer joins, and self joins


-- here are the first 2 tables - let's see what columns and data in the rows we have in common that we can join on
select  * from employee_demographics;

select * from employee_salary;

-- inner join 
select  * from employee_demographics
inner Join employee_salary 
	on employee_demographics. employee_id = employee_salary.employee_id;


select  dem.employee_id, age, occupation from employee_demographics dem
inner Join employee_salary sal
	on dem. employee_id = sal.employee_id;

