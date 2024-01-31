--Date manupulation Function 
--ADD_MONTHS
select * from employees;
select add_months(sysdate,2) from dual;
select hire_date,add_months(hire_date,3) from employees; 

--MONTHS-BETWEEN (returns date between two date)
select months_between(sysdate,'01-jan-23')from dual;

--to char(number---char)
--salary 24000-- $24000, 24000.00
--9,0
select to_char(salary,'fm$99999')from employees;
select first_name,salary from employees where(salary >15000);
select first_name,to_char(salary,'fm$99999') from employees where salary >15000;


alter session set nls_currency='Rs.';
select first_name,to_char(salary,'fml9999999') as sal from employees;

