--select command
--From Command 

/*select*from employees;
select first_name,salary from employees;*/
--Employees
/*select*from employees;
select first_name,last_name,salary from employees;*/
--Jobs
select*from jobs;
select job_id,job_title,max_salary from jobs;
--Departments 
select*from departments;
--Locations
select*from locations;
select street_address,city,country_id,location_id from locations;

--increase emp salary with 1000 rs & hire date by 7 days.
select first_name,last_name,salary,salary +1000 from employees;
select first_name,hire_date,hire_date+7 from employees;