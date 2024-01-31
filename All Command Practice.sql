--SELECT statement use to select the database table. 
select * from employees;

--SELECT Specific table from database 
select first_name,last_name from employees;

--DISCTINCT Statement use to return only disctinct (different) values.
select distinct first_name, last_name, salary from employees;

--COUNT statement:- Use to count number of rows in column 
select count(DISTINCT first_name) from employees;
select count(first_name) from employees;

--WHERE statement- Use to to filter a record

select first_name, salary from employees where salary>10000;
select first_name, last_name, salary from employees where salary <10000;

--BETWEEN-To specifies between certain range 
select first_name, last_name, salary from employees where salary between 4800 and 12000;

--LIKE -- to search a pattern 
select first_name from employees where first_name like 'A%';

--IN -- Use to specify multiple possible values for a column 
select first_name, salary from employees where salary in(4800,9000,11000,8000,12000);

--ORDER BY --Used to sort set of result in ascending or decending order 
--By default it will in ascending order
select * from employees order by first_name,salary;
select first_name,salary from employees order by salary desc;


--AND Operator --This is used to filter a record from one or more condition.
select * from employees where job_id = 'IT_PROG' AND salary IN (4800,6000,9000,4200);

--AND VS OR 

select * from employees where job_id = 'IT_PROG'
AND salary=9000
AND first_name='Alexander';

--AND & OR Combination
--Select all manager_id=100 that start from name N OR L.

select * from employees 
WHERE manager_id=100
AND (first_name LIKE 'N%' OR first_name LIKE 'L%');

--Without paranthesis (Bracket)this below statement will return all employees from manager_id=100
--that start from N and L regardless of the manager_id value.

select * from employees 
WHERE manager_id=100
AND first_name LIKE 'N%' OR first_name LIKE 'L%';

--NOT Operator --Used to combine to give a opposite result also called as neagtive result 
Select * from employees 
where NOT job_id = 'IT_PROG'; --This is show a resukt without a IT_PROG 

--NOT LIKE 
select * from employees where first_name not LIKE 'A%';

--NOT BETWEEN
select * from employees
where manager_id not between 100 and 115;

--NOT IN 
select * from employees 
where job_id not in ('PU_CLERK','IT_PROG');

--NOT GRETER THAN
select * from employees
where NOT department_id > 90;

--NOT LEES THAN
select * from employees 
where not department_id < 100;

--INSERT INTO
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,
salary,commission_pct,manager_id,department_id)
VALUES (99,'shubham','Gopale','shubhamgopale0@gmail.com',9766547414,01-09-23,IT_PROG,40000,'null',99,1);

---NULL --Null value field with no values.

--IS NULL
select commission_pct from employees where commission_pct is null;

--IS NOT NULL
select commission_pct from employees where commission_pct is not null;

--UPDATE Statement --this statement use to modify existing records in a table
UPDATE employees
SET first_name='Shubham',Last_name='Gopale' WHERE employee_id=100;

select * from employees;

--DELETE statement --Used to delete existing records from table 
select * from employees;
delete from employees where first_name = 'Shubham';

--DELETE all records from table 
--delete from employees;

--DELETE Table 
--DROP table employees;

--Select top
select * from employees fetch first 3 rows only;

select * from employees fetch first 50 percent rows only;

--MIN()--Returns a smallest value from selected able 
select * from employees;
select min(salary)
from employees;


--MAX-- Returns a largest value from selected table 
select max(salary)
from employees;


--COUNT()-Return thenumber of rows that matches a specific column.
select * from employees;
select count(employee_id)
from employees
where employee_id > 120;

select count (employee_id)from employees;

--AVG()-- Retuen Average value of numeric column
select AVG(salary)
from employees;

select AVG(salary) from employees where job_id='IT_PROG'; 

select * from employees;
--SUM()--Return total sum of numeric column 
select sum(salary)
from employees;

select sum(salary) from employees where job_id='IT_PROG';

--Wildcard Character
--Find values start with A
select * from employees
where first_name like 'A%';

--Find a values ends with A
select * from employees
where first_name like '%a';

--find a values have a '%an%'in any position
select * from employees
where first_name like '%an%';

--find any values start with A and atleast 4 character in length
select * from employees
where first_name like 'A____%';

--find a values start with a and end with r
select * from employees
where first_name like 'A%r';

--find values start with S&A
select * from employees
where first_name like '[SA]%';

select * from employees;
select * from employees where first_name like 'S_____m';
SELECT * from employees where first_name like 'S[^gsh]m';

--Find a values start in between a-c
select * from employees
where first_name like 'S[a-z]';

select * from employees 
where first_name like '[!SA]%';


--IN Operator 
select * from employees
where job_id in('IT_PROG','ST_CLERK');

--NOT IN Operator 
select * from employees 
where job_id not in ('IT_PROG','ST_CLERK');

select * from employees 
where job_id IN (select job_id from employees); 

--Aliases 
select concat (first_name,last_name) as name from employees;

select concat(concat(first_name,' '),last_name) as full_name from employees;

select concat(concat(first_name,','),salary) as company from employees;


--Join
select employees.employee_id,employees.first_name,job_history.job_id,job_history.department_id
from job_history RIGHT JOIN employees ON employees.employee_id=job_history.employee_id;

--UNION Operator -- used to combine the result set of two or more SELECT statement 

--GROUP BY Statement 
select * from employees;

select count(employee_id), job_id from employees group by job_id order by COUNT (employee_id) DESC;

--HAVING Clause -- 
select count(salary), job_id from employees GROUP BY job_id having count(salary)<20000;

select count(employee_id), job_id from employees GROUP BY job_id having count(employee_id)<120;

select count(employee_id), hire_date from employees group by hire_date having count(hire_date)>01-01-05;

--ALETR TABLE -ALTER/MODIFY DATATYPE
select * from stud_info;
ALTER TABLE stud_info modify std_name VARCHAR(255);









