-- Case Statement

select first_name, last_name,age,
	CASE 
		WHEN age < 30 THEN 'Young'
        WHEN age BETWEEN 31 and 50 THEN 'Middle age'
        WHEN age > 50 THEN 'Old'
	END AS Age_Brackets
from employee_demographics;

-- scenario
-- if Salary < 50000 then 5% 
-- if salary > 50000 then 7%
-- if department is finance then bonus = 10%

select first_name,last_name,salary,
	Case 
		WHEN salary <= 50000  then salary + (salary * 0.05)
        WHEN salary > 50000 then salary + (salary * 0.07 )
	END AS  New_Salary,
Case 
	WHEN dept_id = 6 then salary * 0.1
    END as Bonus
 from employee_salary;


select * from employee_salary;

select * from supply_departments