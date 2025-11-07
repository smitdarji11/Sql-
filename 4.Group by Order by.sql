-- Group by

Select *
From employee_demographics;


Select gender,avg(age)
From employee_demographics
group by gender
;

Select occupation,salary
From employee_salary
group by occupation,salary
;


Select gender,avg(age), max(age),min(age),count(age)
From employee_demographics
group by gender
;

-- order by

select *
from employee_demographics
order by employee_id ;

select *
from employee_demographics
order by first_name ;

select *
from employee_demographics
order by first_name  desc;

select *
from employee_demographics
order by gender,age;