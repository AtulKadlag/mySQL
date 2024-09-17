-- Case Statement

select first_name, last_name,age,
	CASE 
		WHEN age < 30 THEN 'Young'
        WHEN age BETWEEN 31 and 50 THEN 'Middle age'
        WHEN age > 50 THEN 'Old'
	END AS Age_Brackets
from employee_demographics;
