--to_char number to char
alter session set nls_currency="Rs.";
select salary, to_char(salary,'L9,99,999.99') from employees;


--to_date
--To hire on date of june 17 2003
select * from  employees;
select * from employees where hire_date=to_date('june 17 2003','month dd yyyy');

--2003 23 June
select add_months(to_date('2003 23 jun','yyyy dd mon'),6)from dual;

--to number
select salary,salary+to_number('$2,300.00','$9,999.99') from employees; 
select salary,salary+to_number('$2,300.00','$9,999.99') from employees;


--department_id in beween $50 to $100
select * from employees where department_id between to_number('$50','$99') and to_number('$100','$999');

--null related function 
select salary, commission_pct,salary*commission_pct from employees;

--nvl(exp1,exp2)
select commission_pct, nvl(commission_pct,1) from employees;
select salary, commission_pct,nvl(salary*commission_pct,1) from employees;


--nvl2(exp1,exp2,exp3)
select commission_pct,nvl2(commission_pct,'available','not available')from employees;

--nullif(expression1,expression2)
select nullif('sql','sql+') from dual;
select first_name,last_name,length(first_name),length(last_name),nullif(length(first_name),length(last_name))from employees;

--coalesce(exp1,exp2.....n)
select coalesce(null,null,3,7,9,8,4,2) from dual;
select coalesce(6,null,3,7,9,8,4,2) from dual;
select coalesce(commission_pct,manager_id) from employees;
select * from employees where job_id in ('SA_MAN','SA_REP','IT_PROG');

--Decode Function:
select first_name,salary,job_id,
decode(job_id,'SA_REP',salary*1.2,'IT_PROG',salary*1.4,'SA_MAN',salary*1.6,0) as increment_salary from employees;

--department_id  grade
--90   A
--80   B
--70    C   
--60    D
--default Not found

select * from employees;
select department_id from employees;

--Multiple Row Function 
select avg(all salary),avg(distinct salary)from employees;

select min(salary),min(first_name),min(hire_date) from employees;
select max(salary),max(first_name),max(hire_date) from employees;

select count(first_name),count(distinct first_name),
count(commission_pct),count(distinct commission_pct)from employees;

select sum(salary)from employees;

select sum(salary),sum(distinct salary)from employees;


select*from employees;
select department_id,max(salary)from employees group by department_id;
select job_id,max(salary)from employees group by job_id;

select job_id,count(employee_id) from employees group by job_id;

select department_id,min(salary)from employees group by department_id;

select job_id,min(salary),
listagg(first_name,',') within group(order by first_name) from employees group by job_id;

select department_id,min(salary)
from employees
--where department_id=90
group by department_id
having min(salary)>=10000;
---order by
