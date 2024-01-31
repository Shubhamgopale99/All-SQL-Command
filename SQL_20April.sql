select * from employees;
select LISTAGG(first_name, '; ') WITHIN GROUP (ORDER BY first_name) from employees;
select department_id, LISTAGG(last_name, '; ') WITHIN GROUP (ORDER BY hire_date) from employees GROUP BY department_id;
select salary, LISTAGG(first_name, ',') WITHIN GROUP (ORDER BY salary desc)from employees group by salary;

--
select first_name,salary from employees where salary >
(select salary from employees where employee_id=103);

--display first_name ,department_name of employees
select * from departments;
select first_name,department_id from employees where department_id =(
select department_id from departments where department_name='Marketing');

--display max salary of emp with name
select * from employees where salary=(select max(salary) from employees);