select * from employees;
-- to find employees name whoes department id is '$90'
select to_char(department_id,'fm$99999')from employees;

select first_name from employees where to_char(hire_date,'fmday')='wednesday';
select first_name,to_char(department_id,'fm$99')from employees where to_char(department_id,'fm$999')='$90';

--to_number()
select 25+5 from dual;
select '$25' + 5 from dual;
select to_number('$25','fm$99') + 5 from dual;
select to_char(to_number('$25','fm$99') + 5,'fm$99') from dual;
select first_name from employees where department_id= to_number('$90','fm$99');

--to_date
--char --date convert dd-mm-yy
select * from employees;
select * from employees where hire_date=to_date('06-17-2003','mm-dd-yyyy');
--13jan 2001
select * from employees where hire_date=to_date('13-01-2001','dd-mm-yyyy');

--null related function (only replace null value to another)
--nvl(exp1,exp2)exp1 replace to exp2
select salary * commission_pct from employees;
select commission_pct,nvl(commission_pct,1) from employees;
select salary,commission_pct,nvl(salary*commission_pct,salary)from employees;

--nvl2 (null & not null will replace to another values)
--nal2(exp1,not_null(exp2),null(exp3)-----(column_name expression 1,(not_null) expression,(null) expression3) 
select commission_pct,nvl2(commission_pct,1,0) from employees;

--nullif function (check both expression are same then return null 
--otherwise return first_exp
select nullif ('sql','python')from dual;--sql
select nullif ('shubham','satyam')from dual;--shubham
select nullif('shubham','shubham') from dual;--null

--COALESCE return first not null values.
select coalesce(null,null,null,0.9,05,0.21,null,null)from dual;

--decode function
--decode(column/expression1,search 1,result 1,search 2,result 2,default)
select first_name,department_id,salary,decode(department_id,90,salary+1000,50,salary+500,60,salary+300,salary)from employees;

--mutiple row function aslo known as aggregate ,group function
select count(first_name)from employees;
select count(department_id)from employees;