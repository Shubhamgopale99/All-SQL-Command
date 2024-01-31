--function (a function is a bunch of code created for reuse)
--type:- Single row function,multiple row function.
-- Single row function 
--1.Character row function
--upper function

--Fetch employees records in upper case.
select * from employees;
select first_name, upper (first_name) from employees;
select first_name, lower (first_name) from employees;

--dual table (dummy table)
select upper('Shubham') from dual;
select 2+4 from dual;    

select lower('SATYAM')from dual;

--imnitcap() --camel case (first_char s in uppeercase  and remaining in lower case)
select initcap('gOpalE')from dual;

select * from employees;
select email,initcap(email) from employees;

--substring()--syntax--substr()
--substr9column_name,start position, length)
select substr('sql tutorial',5) from dual;
select substr('i am shubham good',5,13) from dual;

select substr('Today we learn sql',6,18) from dual;.
select substr('Today we learn sql',6,3) from dual;

--instr()-- return character postion number
select instr('Shubham is good','is')from dual;

--1st para is your input
--2nd para is 'char'
--3rd para is 'where to start countng'
--4th para is position num
select instr('Shubham is good is good like god is good','is',9,3)from dual;

--sql tutorial  find SPACE index number
select instr('SQL tutorial',' ')from dual;

--length ( to find length of string)
select length('sql') from dual;
select length('shubham Gopale') from dual;
select first_name,length(first_name),last_name,length(last_name) from employees;

--concat (combine two column values)
select concat(first_name,last_name)from employees;

--nasted function (function inside another function)
--fun(function)
select concat(concat(first_name,' '),last_name)from employees;
select concat(concat(concat(concat(employee_id,' '),first_name),' '),last_name)from employees;

--replace 'we lean sql' replace to c++
select replace('we learn sql','sql','c++')from dual;

select * from employees;
select replace(first_name,'a','@') from employees;