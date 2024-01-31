/*select * from jobs;
select job_id,job_title from jobs;*/
select * from employees;

--- Arihmatic Operations 
select first_name, commission_pct from employees;
select  first_name, last_name, salary,  salary + 1000, hire_date, hire_date+7, commission_pct from employees;
select salary, (salary*0.1), commission_pct, commission_pct*salary from employees;

---Alias name
select first_name as fname, last_name lname, salary s , salary+1000 Hike from employees;

--Concatination Operation (||)  To Merge a two column in single column 
select first_name ||' ' || last_name from employees;
select  first_name ||' and his department id is '|| department_id || 'hike is' || (salary+1000) as hike from employees;
from employees;

select * from locations;
select street_address ||','|| postal_code ||','|| city as full_address from locations;

---distinct operator 
select first_name from employees;
select distinct first_name from employees;
select distinct first_name,last_name from employees;


--where :-To restrict row
select *from employees;
select * from employees where department_id=90;
select * from employees where salary>10000;
select * from employees where job_id='IT_PROG';
select first_name,salary, salary+10000 from employees where job_id='IT_PROG';
select * from employees where department_id!=90;