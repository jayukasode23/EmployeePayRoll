-----------UC1-----------
create database Payroll_Service11

-----------UC2-----------
create table employee_payroll11
( 
id int Identity,
name varchar(100),
salary int,
startdate date
);

-----------UC3-----------
Insert into employee_payroll11(name,salary,startdate) values('Jayshree',200000.00, '2022-03-22')
Insert into employee_payroll11(name,salary,startdate) values('Nilesh',500000.00, '2021-04-20')
Insert into employee_payroll11(name,salary,startdate) values('Jayu',300000.00, '2020-07-18')
Insert into employee_payroll11(name,salary,startdate) values('Nil',400000.00, '2022-05-26')

-----------UC4-----------
select * from employee_payroll11

-----------UC5-----------
select salary from employee_payroll11 where name = 'Jayshree'
select salary from employee_payroll11 where startdate Between CAST('2022-03-22' as date) and GETDATE()

-----------UC6-----------
Alter table employee_payroll11
Add Gender varchar(1)

update employee_payroll11 set Gender = 'F' where name = 'Jayshree'
update employee_payroll11 set Gender = 'M' where name = 'Nilesh'
update employee_payroll11 set Gender = 'F' where name = 'Jayu'
update employee_payroll11 set Gender = 'M' where name = 'Nil'

-----------UC7-----------
select SUM(salary) from employee_payroll11 where Gender = 'F' group by Gender
select AVG(salary) from employee_payroll11 where Gender = 'F' group by Gender
select COUNT(salary) from employee_payroll11 where Gender = 'F' group by Gender
select MAX(salary) from employee_payroll11 where Gender = 'M' group by Gender
select MIN(salary) from employee_payroll11 where Gender = 'M' group by Gender