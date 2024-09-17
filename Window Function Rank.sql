-- Window Functions


select dem.first_name,dem.last_name,gender, avg(salary)  as avg_salary
from employee_demographics dem
join employee_salary sal
on (dem.employee_id = sal.employee_id) 
group by dem.first_name,dem.last_name,gender;


select dem.first_name, dem.last_name,gender, avg(salary) over(partition by gender) as avg_salary
from employee_demographics dem
join employee_salary sal
on (dem.employee_id = sal.employee_id) 
;


select dem.first_name, dem.last_name,gender, salary,
sum(salary) over(partition by gender order by dem.employee_id) as running_total
from employee_demographics dem
join employee_salary sal
on (dem.employee_id = sal.employee_id) 
;

-- Rank functions

select dem.first_name, dem.last_name,gender, salary,
row_number() OVER(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc),
dense_rank() over(partition by gender order by salary desc)
from employee_demographics dem
join employee_salary sal
on (dem.employee_id = sal.employee_id) 
;
