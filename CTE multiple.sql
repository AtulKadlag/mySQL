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






WITH CTE_Example1 as 
(
	select employee_id,gender, birth_date from employee_demographics 
    where birth_date > '1980-01-01'
),
CTE_Example2 as 
(   select employee_id, salary from employee_salary 
	where salary > 50000
)

select * from CTE_Example1 
join CTE_Example2
on (CTE_Example1.employee_id = CTE_Example2.employee_id)
;

