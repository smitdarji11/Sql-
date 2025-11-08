-- Joins 
-- inner join 

select *
from employee_demographics ;

select *
from employee_salary;


select *
from employee_demographics as dem
inner join employee_salary as sal
  on dem.employee_id=sal.employee_id ;
  
  select dem.employee_id, age, birth_date,occupation
from employee_demographics as dem
inner join employee_salary as sal
  on dem.employee_id=sal.employee_id ;
  
-- outer join (left and right)
select *
from employee_demographics as dem
right join employee_salary as sal
  on dem.employee_id=sal.employee_id ;
  
-- Self join 

select emp1.employee_id as emp_santa,
emp1.first_name as emp_santa_FirstName,
emp1.last_name as emp_santa_LastName,
emp2.employee_id as emp_id,
emp2.first_name as emp_FirstName,
emp2.last_name as emp_LastName
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id +1 =emp2.employee_id
    ;

-- Multiple table joins 

select *
from employee_demographics as dem
inner join employee_salary as sal 
	on dem.employee_id=sal.employee_id
inner join parks_departments as pd
	on pd.department_id=sal.dept_id
    ;