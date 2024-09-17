-- CTE Functions

select gender, avg(salary) as avg_salary, max(salary) as max_salary, min(salary) as min_salary, count(salary) as count_salary
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender;


select * from 
(
select gender, avg(salary) as avg_salary, max(salary) as max_salary, min(salary) as min_salary, count(salary) as count_salary
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
) subquery_example;

-- CTE  Common Table expression

WITH CTE_example AS 
(
	select gender, avg(salary) as avg_salary, max(salary) as max_salary, min(salary) as min_salary, count(salary) as count_salary
	from employee_demographics dem
	join employee_salary sal
	on dem.employee_id = sal.employee_id
	group by gender
)

select  avg(avg_salary),avg(max_salary) from CTE_example;


WITH CTE_example (gender,avg_salary,max_salary, min_salary, count_salary) AS 
(
	select gender, avg(salary) as avg_salary, max(salary) as max_salary, min(salary) as min_salary, count(salary) as count_salary
	from employee_demographics dem
	join employee_salary sal
	on dem.employee_id = sal.employee_id
	group by gender
)

select  avg(avg_salary),avg(max_salary) from CTE_example;
