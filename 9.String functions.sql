-- String Functions

-- Length

select length('smit darji');

select first_name,length(first_name) as length_of_name
from employee_demographics
order by 2
;

-- Trim  
select trim('        smit        ');
select rtrim('       smit       ');
select ltrim('       smit       ');

-- Left and right


select first_name,
left(first_name,3),
right(first_name,4),

-- Substring
substring(first_name,3,3) ,
substring(birth_date,6,2) as Birthday_Month
from employee_demographics;

-- replace
select first_name , replace(first_name, 'a' , 'z')
from employee_demographics;

-- Concat

select concat(first_name,'  ',last_name) as full_name
from employee_demographics;