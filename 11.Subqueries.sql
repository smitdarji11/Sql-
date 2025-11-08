-- SubQueries

select*
from employee_demographics
Where employee_id IN 
					(SELECT employee_id
                    FROM employee_salary
                    where dept_id=1 );

SELECT first_name,salary,
(SELECT AVG(salary) 
FROM employee_salary) as AVG_SA
From employee_salary;


SELECT gender , AVG(age) , MAX(age) , MIN(age) , Count(age)
FROM  employee_demographics
group by gender  ;

select avg(max_age)
from 
(Select gender ,
avg(age) as avg_age,
max(age) as max_age,
min(age) as min_age,
count(age) 
from employee_demographics
group by gender) as Age_table
;
