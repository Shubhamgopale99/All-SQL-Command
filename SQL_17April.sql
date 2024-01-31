--show structure of any tabole
--describe
describe employees;
desc employees;

--reverse
select reverse('Shubham')from dual;
select reverse(first_name) reverse(last_name) from employees;

--trim () remove space from start and end of your string 
--syntax (trimchar from 'i/p string) f
select trim('  Shubham Gopale  ') from dual;
select trim (' 'from ' Shubham  Gopale   ')from dual;

--leading  (remove starting spaces or any character 
select trim(leading ' ' from '    Shubham  Gopale  ') from dual;
select trim(leading '@'from '@@@@@Shubham  Gopale @@@@ ')from dual;

--trailing (removes ending spaces or any character)
select trim(trailing ' ' from '    Shubham  Gopale  ') from dual;
select trim(trailing '@'from '@@@@@Shubham  Gopale @@@@')from dual;

--ltrim (remove left side multiple character or symbol)
select ltrim('@#@#@#shubham#@ gopale0@gmail.com','@#') from dual;

--rtrim (remove right side multiple character or symbol)
select rtrim('@#@#@#shubham#@ gopale0@gmail.com@#@#@#','@#') from dual;

--remove multiple
select rtrim(ltrim('@#@#@#shubham gopale@#@#@#','@#'),'@#') from dual;
select ltrim(rtrim('$#$#$#shubham gopale @#@#@#','@#$'),'@#$') from dual;

select * from employees;
select concat(concat(first_name,' '),last_name)from employees;
select substr(concat(concat(first_name,' '),last_name),)from employees;
select instr(concat(concat(first_name,' '),last_name),' ')from employees;
select substr(concat(concat(first_name,' '),last_name),instr(concat(concat(first_name,' '),last_name),' '))from employees;
select substr(concat (concat(first_name,' ' ),last_name),length(first_name )+1)from employees;

--round 
select round(3.1428,2) from dual;
select round(22.45798,2) from dual;--22.46

--trunc
select trunc(22.45798,2) from dual; --22.45

--mod()
select mod(10,5) from dual; --0
select ceil(2.5)from dual; -- 3 return nearest highest int number
select floor(5.7) from dual;--5 return lowest int number
select power (4,3) from dual;--64 power of number
select sqrt(9) from dual;--3, square root of number

--date function 
--SYSDATE: Return the current date of the OS where oracle database is installed
select sysdate from dual;--dd-mm-yy

--Current Date: return the current date of the place
--where the user's session is logged in form
select current_date from dual;

--sessiontimezone: Return timezone of user's sesion
select sessiontimezone from dual;

--SYSTEMSTAMP: Return the date and time of the database.
select systimestamp from dual;

--CURRENTTIMESTAMP:Return current date & time from user's session.
select current_timestamp from dual;

