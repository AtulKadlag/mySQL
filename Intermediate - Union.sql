-- Union in SQL

select first_name, last_name from employee_demographics
UNION  
select first_name,last_name,salary from employee_salary
order by first_name;


select first_name, last_name, 'old Man' as Label from employee_demographics
where age > 40  and gender = 'Male'
UNION 
 
select first_name, last_name, 'old Lady' as Label from employee_demographics
where age > 40 and gender = 'Female' 
Union 
select first_name,last_name,'Highly paid' as Label from employee_salary
where salary > 70000 
order by first_name;