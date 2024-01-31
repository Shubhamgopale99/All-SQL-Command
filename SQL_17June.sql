select * from employees;

--Create table 
create table student
(std_id int,
std_name varchar(20),
DOB date);
desc student;

--adding a column in existing table 
alter table student add (email_id varchar(20),address varchar(20));

--change datatype in table column
alter table student modify std_id varchar(20);

--drop the specific column(delete the column)
alter table student drop column address;

--Rename column 
alter table student rename column std_id to stud_id;

--rename table name
alter table student rename to stud_info;

select * from stud_info;

--to get table information 
info stud_info;

--comment on table 
comment on table stud_info is 'Student inforamtion table';
info stud_info;

-- comment on olumn
comment on column stud_info.stud_id is 'Student identification number';
comment on column stud_info.std_name is 'student full name';
comment on column stud_info.DOB is 'date of birth should be in dd/mm/yy';
comment on column stud_info.email_id is 'this is emial id';
info stud_info;

--copy a duplicate table
create table cpy_emp as select * from employees;
select * from cpy_emp;

--truncate :- only delete all column 
truncate table cpy_emp;

-- drop :- drop (delete) table permently
drop table cpy_emp;

--dml command
select * from stud_info;

insert into stud_info values('101','Shubham','09-06-1996','shubham@gmail.com');
insert into stud_info values('102','Satyam','09-06-1998','satyam@gmail.com');

--get column from another table 
insert into stud_info (select employee_id,first_name,hire_date,email from employees);

insert into stud_info (stud_id,std_name) values('110','Stella');
insert into stud_info (stud_id,std_name) values('111','Shital');

--update a table column. 
update stud_info set email_id='steven.com' where stud_id='101';