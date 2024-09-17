-- temporary table

create temporary table temp_table
(
first_name varchar(50),
last_name varchar(50),
favourite_sport varchar(100)
);

select * from temp_table;

insert into temp_table
values('atul','kadlag','cricket');


select * from temp_table;


select * from employee_salary;

create temporary table salary_over_60K
select * from employee_salary 
where salary >= 60000;




select * from salary_over_60K;