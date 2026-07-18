create table employees (
		id serial primary key,
		name varchar(99) not null,
		email varchar(100) unique not null,
		department varchar(20) not null,
		salary int not null,
		enroll_in date default now(),
		enroll_time time default now()
);

select * from employees

insert into employees(name, email,department, salary) values
('Poojan','poojan@gmail.com','HR',80000),
('Deval','deval@gmail.com','HR',80000),
('Vishnu','vishnu@gmail.com','IT',50000),
('Neel','neel@gmail.com','IT',65000),
('Undeep','undeep@gmail.com','FINANCE',12000),
('Lokesh','lokesh@gmail.com','CYBER',100000)

-- select
select name as "employees name" from employees

--where
select name as "Employee name", salary as "per month"
from employees
where salary >50000

-- order by
 select * from employees
 order by id desc

 --group by

 select name,department from employees 
 group by (name,department)

 --having

 select name,department,salary from employees 
 group by (name,department,salary)
 having salary >50000

 -- distinct

 select distinct department from employees

 -- limit

 select * from employees 
 order by id 
 limit 2

 --case when 
 select name as employee_name ,salary as  employee_salary, 
 case 
 when salary <65000 then 'low salary'
 when salary between 31000 and 120000 then 'High salary'
 else 'ultra high'
 end as salary_category
 from employees;

select id as roll_no ,name as "NAME " from employees
where id between 5 and 7

 ------------------------------------------------------------------------------























