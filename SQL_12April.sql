--fetch emp records whose salary is greter than 10000
select*from employees where salary >10000;

--fetch employees recoder whoes department _id is greter than 90
select* from employees where department_id>90;
select * from employees where salary<=10000;

--<> is for not equal to symbol or != is also we can use
select * from employees where department_id<>90;
select * from employees where job_id !='SA_MAN';

--sql operater
--1) between __ and (use to fetch range record).
select * from employees where salary between 5000 and 10000;

--hire date 1 jan 03 to 31dec 05
select * from employees where hire_date between '01-JAN-03' and '31-DEC-05';

--IN (match any of the list of value).
select * from employees 
where job_id in ('AD_PRES','IT_PROG','FI_ACCOUNT');
--fetch records from department_id and department_name from department table
-- whoes department _name is Marketing,shipping,Human Resource.
select * from departments where department_name in('Marketing','Shipping','Human Resources');

--like (Match character pattern)
--1)% 0 or more sequence of character
--2) _ single character
--fetch first_name,salary whose first _name strat from'A';
select first_name,salary from employees where first_name like ('A%'); --Charater are start from A (%A) this is from character end with A 

--2nd character L & 4 th position x haracter 
select first_name,salary from employees where first_name like('_l_x%');


--fetch employees first_name and job_id whoes job_id end with 'CLERK'
select first_name,job_id from employees where job_id like('___CLERK%');


--fetch employees record who hired in march month.
select first_name,hire_date from employees where hire_date like('___MAR%');

--is null (used for filterout null recods)
select * from employees where commission_pct is null;
select * from employees where manager_id is null;

--and,or & not operator
--And (match two or more condition)
select * from employees;
select * from employees where salary <5000 and job_id like('%CLERK');

--dep_id (50,90,100) and salary >9000
select * from employees where department_id in(50,90,100)and salary > 9000;

---or operator
select *from employees;
select * from employees where department_id in(50,90,100) or salary >9000;

--not operator 
select * from employees where department_id not in(50,90,100);
