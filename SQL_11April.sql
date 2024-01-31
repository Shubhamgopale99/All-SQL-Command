select * from employees;
--null : unknown data
--column alias : as keyword for rename column name 
select first_name,salary,salary+1000 as Annual_salary from employees;

--fetch job_id and job_title column from jobs table & 
--give alias departments to jobs_title columns
select * from jobs;
select job_id,job_title,job_title as department from jobs;

--Concatination_Operators(||) (used to combine values from two or multiple columns)
select first_name || department_id from employees;

-- ' ' To give space in bet two colums.
select first_name ||'-'|| department_id from employees;

--dispaly emploeeys_name and therir job_id in one column and give 
--alias emp_details.
select first_name || '-' || job_id as emp_details from employees;

--Literals- to construct sequence of character.
--my name is ellen (first-name) and my department  is SA_ REP (job_id)
select 'My Name is'||' '||first_name||' '||'and my department is'||' '||job_id as employees_details from employees;

--eliminating duplicate rows
--Keyword:- distinct keword is used for eliminting rows.
select * from employees;
select DISTINCT department_id from employees;

--display unique job_id
select distinct job_id from employees;

--Row Rstriction 
--Keyword :- where 
--dispaly employees rocords who are worikung in IT PROG
select * from employees where job_id = 'IT_PROG'; 
select * from employees where job_id = 'ST_CLERK';
select * from employees where department_id = '90';


