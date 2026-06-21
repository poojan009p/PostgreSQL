
------------table creation ---------------
create table poojan(
name char(99),
dob int,
designation char(50)
);

---------------------------------------------------
----------insert values into table-----------

insert into poojan(name,dob,designation)
values ('Poojan',09-09-2002,'Data Scientist')

---------------------------------------------------
------------update information in it ---------

update poojan
set dob = 992002
where name = 'Poojan'

----------------------------------------------------
------------delete information from it----------

delete from poojan
where name ='Poojan'

-----------------------------------------------------
select * from poojan