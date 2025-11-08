-- case statement

select first_name,
last_name,
age,
case 
	when age <= 30 then 'Young' 
    when age between 31 and 50 then 'old'
    when age>50 then "On Death's door"
end as Age_bracket
from employee_demographics;


-- Pay Increace and Bonus
-- < 50000 = 5%
-- >50000 = 7% 
-- Finance = 10% bonus


select first_name , last_name, salary,
Case
	when salary < 50000 then salary + (salary * 1/20)
    when salary >50000 then salary +(salary * 7/100)
end as Salary_Increase,
case  
	when dept_id=6 then salary + (salary * 1/10)
end as Bonus
from employee_salary;