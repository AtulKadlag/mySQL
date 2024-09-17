-- string function

-- length

select length('Rains');

select first_name, length(first_name)  from employee_demographics;

select upper('rains') ;
select lower('RaiNS') ;

select first_name, upper(first_name)  from employee_demographics;

select trim('          rains          ');

select ltrim('          rains          ') as test;


-- substring 

select  substring('Rains', 1,3);

select first_name, substring(first_name, 3),
substring(first_name, 3,2),
birth_date, substring(birth_date, 6,2) as month_name

 from employee_demographics;


--
select locate('u','Atul');

select locate('India', 'my country is India');
-- replace 
select locate('R',first_name),concat(first_name,' ', last_name),
replace(first_name, 'r', 'p') from employee_demographics;

-- concat

select first_name, last_name, concat(first_name, ' ' ,last_name)  as full_name
from employee_demographics;




