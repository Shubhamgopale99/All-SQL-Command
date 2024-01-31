select current_date,current_timestamp from dual;


select add_months('12-march-2023',2)from dual;

select months_between('12-march-2023','12-march-2022') from dual;

select hire_date, add_months(hire_date,6) from employees;


select * from employees;

select hire_date,round(months_between(sysdate,hire_date)/12,1) from employees;


--Round Funstion 
select hire_date,round(hire_date,'month') from employees;
select hire_date,round(hire_date,'year') from employees;

--Truncate Funstion 
select hire_date,trunc(hire_date,'month')from employees;
select hire_date,trunc(hire_date,'year') from employees;

--Extract Function 
select hire_date,extract(year from hire_date) from employees;
select hire_date,extract(month from hire_date) from employees;
select * from employees where extract(year from hire_date)='2004';

--next_day function
select next_day('10-june-2023','saturday') from dual;
select hire_date,next_day(hire_date,'sunday') from employees;

--Last_day function 
select last_day('10-june-2023') from dual;

--TO_CHAR fro date 
select hire_date, to_char(hire_date,'dd-mm-yyyy') from employees;
select hire_date, to_char(hire_date,'dd-mm-yy') from employees;
select hire_date, to_char(hire_date,'dd-mm-year') from employees;


select hire_date, to_char(hire_date,'dd-month-yyyy') from employees;
select hire_date, to_char(hire_date,'dd-mon-yyyy') from employees;
select hire_date, to_char(hire_date,'dd-mm-yyyy') from employees;

select hire_date, to_char(hire_date,'dd-mm-yyyy') from employees;
select hire_date, to_char(hire_date,'day-mm-yyyy') from employees;
select hire_date, to_char(hire_date,'dy-mm-yyyy') from employees;

select sysdate, to_char (sysdate,'hh24: mi: ss') from dual;
select hire_date, to_char(hire_date,'ddth') from employees;
select hire_date, to_char(hire_date,'ddsp') from employees;
select hire_date, to_char(hire_date,'ddspth') from employees;


select hire_date, to_char(hire_date,'day,yyyy,month,ddspth') from employees;
select hire_date,to_char (hire_date,'day')from employees where to_char (hire_date,'fmday')='sunday';

--number to varcha function 
select to_char('250000','$99,9999.99')from dual;
select salary, to_char(salary,'$99,999.99') from employees;

--employees which employees year >2003
--display hire date in this formate :- 12th june of 2003
--diaply record of employyes who hire im 2003 to 2005

select hire_date from employees;
select first_name,hire_date,to_char (hire_date,'yyyy')from employees where to_char (hire_date,'yyyy')>'2003';
select hire_date, (hire_date >= 2003) from employees;