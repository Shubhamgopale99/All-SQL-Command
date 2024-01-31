-- order by column_name (sort a column by default asending order)
--for sort in asending order we can use asc
select * from employees;
select * from employees order by first_name;
select * from employees order by department_id;
select * from employees order by hire_date asc;
--for sort by desending order
select * from employees order by hire_date desc;
select * from employees order by first_name asc,last_name desc;

--1. Write a query to get the employee id, first_name and last_name for those employees do not earn any commission
select employees_id,first_name,last_name from employees where commission_pct in null;

--2. display full name,job id, salary and annual salaryof employee  from IT_PROG and SA_REP departmentwhose salary between 2000 and 15000 and display their annual salary.
select first_name ||' '||last_name as fullname,job_id,salary from employees
where salary between 2000 and 15000 and job_id in('IT_PROG','SA_REP');

--3. display full name of employeeand print the list in descending whose email id start with J.
select first_name||' '||last_name as fullname , email from employees where email like('J%') order by fullname desc;

--4. Display the name of employee who hired in march and their job is SA_REP and 
--manager id is 146,147,148
select * from employees;
select first_name, job_id,manager_id from employees where hire_date like('__-MAR%') and job_id='SA_REP' and manager_id in(146,147,148);
--5.display the name of employee , commission and multiply commission by20 whose commission is greater than 0.2 and arrange it in asc.
select first_name, commission_pct,commission_pct*20 as increased_commision_pct from employees where commission_pct >0.2 order by increased;

--6.write a query to display employee name and hire date name the column employee name and hire date.(Use the literal myself,I hired on).
select 'my self'||' '||first_name||'i hired on'||' '||hire_date from employees; 


--9. display all employee whose MANAGER_ID is greaterthan 103 with having last digit of PHONE_NUMBER is 6 and show the first name in asc.
select first_name,PHONE_NUMBER,manager_id from employees where manager_id > 103 and phone_number like('%6') order by first_name desc;

--8. Write a Oracle SQL query to get the first_name and last_name of the employees whose first_name are exactly five characters.
select * from employees;
select first_name,last_name from employees where first_name like('_____');

--9.Display all records who haveSusanorElizabethany where in name column.
select first_name, last_name from employees where first_name like('Lex');