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


-- outer join
-- OUTER JOINS

-- for outer joins we have a left and a right join
-- a left join will take everything from the left table even if there is no match in the join, but will only return matches from the right table
-- the exact opposite is true for a right join



-- left join
select * from employee_demographics dem
left Join employee_salary sal
	on dem. employee_id = sal.employee_id;



-- right join

select * from employee_demographics dem
right Join employee_salary sal
	on dem. employee_id = sal.employee_id;

-- Self Join

-- a self join is where you tie a table to itself

select * from employee_salary emp1
join employee_salary emp2 
on emp1.employee_id +1  = emp2.employee_id;

select emp1.employee_id as emp1_employee_id,
       emp1.first_name as emp1_first_name,
       emp1.last_name as emp1_last_name,
       emp2.employee_id as emp2_employee_id,
       emp2.first_name as emp2_first_name,
       emp2.last_name as emp2_last_name       
 from employee_salary emp1
join employee_salary emp2 
on emp1.employee_id +1  = emp2.employee_id;

--  joining Multiple tables together

select * from supply_departments;


select  *
from employee_demographics dem
inner Join employee_salary sal
	on dem. employee_id = sal.employee_id
inner join supply_departments sd
	on sd.department_id	 = sal.dept_id;
    