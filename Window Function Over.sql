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
