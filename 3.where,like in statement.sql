-- where clause


select *
from employee_salary
where first_name ='leslie'
;

select *
from employee_salary
where salary<=50000
;


select *
from employee_demographics
where gender !='female'
;

select *
from employee_demographics
where birth_date > '1985-01-01';

-- logical oprator (AND OR Not)

select *
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'female';


select *
from employee_demographics
where (first_name='Leslie' And age=44) or age>55;


-- Like statement
-- % and _

select *
from employee_demographics
where birth_date like '198%-%-%' ;
