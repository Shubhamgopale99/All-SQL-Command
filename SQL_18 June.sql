desc employees;
create table student
(id int not null,
name varchar(20)constraint nn_name not null
);
insert into student values('101','Shubham');
desc student
select * from student;

--Unique Constraint
drop table student;

create table student
(id int not null,email varchar(20),dept int,ph_no int unique, --column level syntax
 constraint uq_em unique(email)--table level syntx
);

insert into student values('101','Shubham',20,97665447414);
insert into student values('101','satyam.com',20,3203105919);
desc student;
select * from student;

--Priymary key = combination unique key & constraint
drop table student;
create table student
(id int CONSTRAINT pk_id primary key,email varchar(20),dept int,ph_no int
);
insert into student values ('101','shubham',21,9766547414);
select * from student;

--Forean key constrain
drop table student;

create table dept
( did int primary key,
  d_name varchar(20)
);

create table student
(sid int primary key,
 dept int constraint fk_did references dept(did) 
);
insert into dept values('10','Shubham');
insert into student values('101','10');

select * from dept;
select * from student;

--Check constraint
drop table student;
create table student
( id int,
 name varchar(20),
 email varchar(20),
 salary int constraint chk_s check (salary>0),
 constraint eml_chk check (email like'%.com')
);

insert into student values('101','shubham','shubham.com',20000);
select * from student;
drop table dept;
drop table student;

--
create table dept
( d_id int primary key,
  d_name varchar(20)
);

create table student
( id int,
 name varchar(20),
 email varchar(20),
 salary int,
 dept int
);

alter table dept add constraint pk_did primary key(d_id);
alter table student add constraint pk_did primary key(id);
alter table student add constraint uq_eml unique(email);
alter table student add constraint chk_sal unique(salary>0);
alter table student add constraint fk_d_id foreign key(dept)
references dept(d_id);
alter table student modify column name constraint nn_name not null;

--drop constraint 
alter table student drop constraint uq_eml;
alter table student drop constraint nn_name;
alter table dept drop constraint pk_did cascade;
alter table student drop constraint chk_sal;
alter table student drop constraint pk_did;

--Join
--natural join
select * from employees natural join departments;

--inner join
select * from employees;
select * from employees inner join departments using(department_id);
select * from employees inner join departments using(manager_id);

select e.first_name,d.department_id,manager_id,d.department_name,l.city from employees e
inner join departments d using(manager_id)
inner join locations l using (location_id);


--equi join
select e.first_name,d.department_id,e.manager_id,d.department_name from employees e
join departments d on e.manager_id=d.manager_id;

--left
select * from employees left join departments using(department_id);
select * from employees right join departments using(department_id);
select * from employees full join departments using(department_id);