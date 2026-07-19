create table employees(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(1, 'Poojan', 'Data', 60000),
(2, 'Rahul', 'Marketing', 45000),
(3, 'Priya', 'Data', 75000),
(4, 'Amit', 'HR', 40000),
(5, 'Neha', 'Data', 55000),
(6, 'Karan', 'Marketing', 65000),
(7, 'Riya', 'HR', 50000);


-- subqueries practice

select * from employees


-- Find employees earning more than the average salary.

select round(avg(salary))
from employees;

-- now with subquere

select * 
from employees
where salary > 
(
		select round(avg(salary))
		from employees
);

-- Find employees earning less than average salary.

select * from employees
where salary < (
 select round(avg(salary))
 from employees
);


--Find the employee with the highest salary.

select * from employees
where salary = (
 select max(salary)
 from employees
);

-- Find employee with the lowest salary.

select * from employees
where salary = (
		select min(salary)
		from employees
);

-- Find employees who earn more than the average salary of the Data department.

select * from employees
where salary > (
	select round(avg(salary)) 
	from employees 
	where department='Data'
);

-- Find employees earning more than the average salary of Marketing department.

select round(avg(salary))
from employees
where department = 'Marketing'

select * from employees
where salary > (
select round(avg(salary))
from employees
where department = 'Marketing'
);

-- Find employees who work in departments that have salaries above 60000.

select employee_name,department 
from employees
where salary > 60000

--coorelated sub query

-- Find employees who earn more than the average salary of their own department.

select 
	p1.employee_name,
	p1.department,
	p1.salary
	from employees p1
	where salary > (
	select avg(p2.salary)
	from employees p2
	where p1.department = p2.department
	);

 -- Find products priced higher than the average price in their category.
 
	 
  select p1* 
  from products p1
  where price > (
	select avg(p2.price)
	from products p2
	where p1.category = p2.category
  )


 
  




















