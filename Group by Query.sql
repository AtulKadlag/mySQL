-- GROUP BY

select first_name,gender
from employee_demographics
group by first_name,gender
;

-- aggregate function - SUM, MIN, MAX, COUNT, AVG

select occupation,sum(salary) from employee_salary
group by occupation;


select * from  employee_demographics;

select gender, avg(age)
from employee_demographics
group by gender
;

select gender, avg(age),MIN(age), Max(age), count(gender)
from employee_demographics
group by gender
;

