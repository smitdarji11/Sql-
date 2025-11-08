-- unions

select  first_name,last_name, 'old lady' as lable
from employee_demographics 
where age>40 and gender = 'female'
union
select  first_name,last_name, 'old man' as lable
from employee_demographics 
where age>40 and gender = 'male'
UNION 
select first_name,last_name, 'Highly paid employee'
from employee_salary
where salary>70000
;
